function eigenResult = eigen(data)


% the data
[N,n]=size(data.X);

% calculating autocorrelation matrix
  A = zeros(n);
  me = zeros(1,n);
  for i=1:n, 
    me(i) = mean(data.X(isfinite(data.X(:,i)),i)); 
    data.X(:,i) = data.X(:,i) - me(i); 
  end  
  for i=1:n, 
    for j=i:n, 
      c = data.X(:,i).*data.X(:,j); c = c(isfinite(c));
      A(i,j) = sum(c)/length(c); A(j,i) = A(i,j); 
    end
  end
  
  % eigenvectors, sort them according to eigenvalues, and normalize
  [V,S]   = eig(A);
  eigval  = diag(S);
  [y,ind] = sort(abs(eigval)); 
  eigval  = eigval(flipud(ind));%??????
  V       = V(:,flipud(ind)); 

  
  % take only odim first eigenvectors
  D = abs(eigval)/sum(abs(eigval));


eigenResult.V = V;%eigenvectors
eigenResult.D = D;%eigenvalues



