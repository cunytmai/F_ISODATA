function [centers, Xcluster, nocenters, cluster,result] = F_ISODATA(variable,MN,MX,K,iter,Q)

X=variable;

q=Q;
minC=MX;
maxC=MN;
k=K;
I = iter;

final=0;
f0=k;
if exist('param.m')==1, m = param.m;else m = 2;end;
if exist('param.e')==1, e = param.m;else e = 1e-4;end;

[N,n] = size(X);
[Nf0,nf0] = size(f0);
X1 = ones(N,1);

%------------- Step 1: Initialize fuzzy partition matrix-------------------------
%from FCM algrithm
rand('state',0)
if max(Nf0,nf0) == 1, 		% only number of cluster given
  c = f0;
  mm = mean(X);             %mean of the data (1,n)
  aa = max(abs(X - ones(N,1)*mm)); %

  v = 2*(ones(c,1)*aa).*(rand(c,n)-0.5) + ones(c,1)*mm;

  for j = 1 : c,
    xv = X - X1*v(j,:);
    d(:,j) = sum((xv*eye(n).*xv),2);
  end;
  d = (d+1e-10).^(-1/(m-1));
  f0 = (d ./ (sum(d,2)*ones(1,c)));

else
  c = size(f0,2);
  fm = f0.^m; sumf = sum(fm);
  v = (fm'*X)./(sumf'*ones(1,n)); %
end;

f = zeros(N,c);                % partition matrix
iter = 0;                       % iteration counter
%------------------------ End------------------------------------

% Iterate
f = f0;
%step 2---- Calculate centers
fm = f.^m;
sumf = sum(fm);
v = (fm'*X)./(sumf'*ones(1,n));

while final ==0,%loop for repeat iteration
iter = iter + 1;
[N,n] = size(X);
%step 3 ---Calculate Distance
d=[];
for j = 1 : c,
  xv = X - X1*v(j,:);
  d(:,j) = sum((xv*eye(n).*xv),2);
end;
distout=sqrt(d); %Distance

%step 4---- Caluclate partition
d = (d+1e-10).^(-1/(m-1));

f0 = (d ./ (sum(d,2)*ones(1,c)));%partition

%step: 6 Compare the membership of data then assign to corresponding clusters.
IDX=NaN(N,1);
for m=1:N
    [M,P]=max(f0(m,:));
    IDX(m)=P;
end
cluster=IDX; %result for cluster Index
[v1,v2]=size(v);
 for m=1:v1    %k
     index=find(IDX==m);
     Xcluster{m}= X(index,:);
 end
%Ending FCM part

%Step 7
%if current iteration equal to Max iteration,end loop.
%if current number of cluster less than min # of cluster,move step 14 to split
%if current number of cluster greater than max # of cluster, move step 8 to merge
%otherwise go to step 14

    if (iter==I),%A
        final=1;
        next=0;
    elseif (minC>k)%B
        next=1;
    elseif (maxC<k)%C
        next=2;
    else%D
        next=3;
    end;
    sd=zeros(v1,v2);
%-----------------step 8 start merging--------------------------------
     if(next==2)
        [N,n]=size(v);
        distCen=zeros(N,N);
        D = pdist(v);
        minD=min(D);
        %distance btw each cluster center
        for i=1:N
            for j=1:N
                vd=v(i,:)-v(j,:);
                distCen(i,j)= sum(vd.^2,2);
            end
        end
        distCen= sqrt(distCen);
        %find minimum distance btw two cluster
        [x,y]=find(distCen==minD);
        %find memberships of overlapped pattern more than 1/k
        l1=find(f0(:,x(1))>1/c);
        l2=find(f0(:,y(1))>1/c);
        inter = intersect(l1,l2);
        interSize=size(inter);
        %condition=zeros(interSize);
        condition=true;
        % checking two membership are greater than rest of membership
        for i=1:interSize
           condition1 = f0(inter(i),x(1))+f0(inter(i),y(1));
           condition2 = 1-f0(inter(i),x(1))-f0(inter(i),y(1));
           if(condition1<condition2)
               condition=false;
           end
        end
        %if the condition met, merge two cluster group.
        if(condition)
            Nk=sum(cluster==x(1));
            Nl=sum(cluster==y(1));
            Vk=v(x(1),:);
            Vl=v(y(1),:);
            newV=(Vk*Nk+Vl*Nl)/(Nk+Nl);%calculate new center
            v(x(1),:)=[];
            v(y(1),:)=[];
            c=c-1;
            v(c,:)=newV;
            k=c;
        end
        %end of merge and go back to step 3
     end
     if(next==3)
         %step 12 calculate the average membership
         [memN,memn] =size(f0);
         sumMem=zeros(memn,1);
         for i=1:memN
             sumMem(cluster(i))= sumMem(cluster(i))+f0(i,cluster(i));
         end
         for j=1:memn
             noMem(j)=sum(cluster==j);
             aveMem(j)=sumMem(j)/noMem(j);
         end
         % step 13 if the average membership less than 0.5,split the
         %cluster which has maximum average membership and less 0.5
         minMem=min(aveMem);
         if(minMem<q)
             avg1=aveMem;
             next=1;
             while(next)
             [maxAvg,maxI]=max(avg1);
             if(maxAvg>0.5)
                 avg1(maxI)=[];

             else
                 next=0;
             end
             end
             maxI=find(aveMem==maxAvg);%find maximun average membership
            %splitting the cluster
             [z1,z2]=size(Xcluster{1,maxI});
             xcv=zeros(z1,v2);
            for i=1:z1
               xcv(i,:)= Xcluster{1,maxI}(i,:)-v(maxI,:);
            end
            di = sum(xcv.^2,2);
            sd = sqrt(sum(di)/z1);
            pos_center = v(maxI,:)+0.5*sd;
            neg_center = v(maxI,:)-0.5*sd;
        v(maxI,:)=[];
        v(v1,:)=pos_center;
        v(v1+1,:)=neg_center;
        c=v1+1;
        k=v1+1;
        %End of splitting the cluster
        %Go back to step 3
         end
     end
% ----------------splitting start here-------------

     if(next == 1)
        %v - cluster centers
        %v1, v2 - the dimenion of cluster centers [v1, v2] = size(v)
        %Xcluster - all the datapoints of the specific cluster center
        %z1 - Nj, which equals the number of data points existing
        %step 14 calculate standard deviation
        %Ryan's
%         for j=1:v1 % for each cluster center we are creating zero matrixes based on the # of data points
%         [z1,z2]=size(Xcluster{j});
%         xcv=zeros(z1,v2);
%             for i=1:z1
%                xcv(i,:) = Xcluster{j}(i,:)-v(j,:); %fills the data matrix
%             end
%             di = sum(xcv.^2,2);
%             sd(j) = sqrt(sum(di)/z1);
%         end

        %Tony's
        for j = 1:v1
            [z1,z2]=size(Xcluster{j});
            xcv=zeros(z1,v2);
            for i = 1:z1 %number of clusters
                for y = 1:v2 %dimensions
                    xcv(i,y) = Xcluster{j}(i,y)-v(j,y);
                end
            end
            di = sum(xcv.^2);
            sd(j,:) = sqrt(di);
        end
        %End of Standard Deviation

        %step 15 find the maximum standard deviation
        [maxSD,maxCenter]=max(sd);
        sd
        maxSD
        maxCenter
        v
        %maxSD gets the highest value of the whole SD
        %maxCenter gets which ever has the highest SD value
        
        %step 16 splitting the corresponding cluster
        %Ryan;s
%         pos_center = v(maxCenter,:)+0.5*maxSD;
%         neg_center = v(maxCenter,:)-0.5*maxSD;
%         v(maxCenter,:)=[];
%         v(v1,:)=pos_center;
%         v(v1+1,:)=neg_center;
%         c=v1+1;
%         k=v1+1;


        %Tony's
%         pos_center = v(
        
        %go back to step 3
     end
end

%-----------Update all result-----------%

% result.cluster = cluster;
 result.f=f0;
 result.d=distout;
 result.v=v;
 result.iter = iter;
 result.Xcluster = Xcluster;
 %%%%%%%%%%%%
 centers=v;
 nocenters = v1;
