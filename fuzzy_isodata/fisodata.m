function varargout = fisodata(varargin)
% FISODATA MATLAB code for fisodata.fig
%      FISODATA, by itself, creates a new FISODATA or raises the existing
%      singleton*.
%
%      H = FISODATA returns the handle to a new FISODATA or the handle to
%      the existing singleton*.
%
%      FISODATA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FISODATA.M with the given input arguments.
%
%      FISODATA('Property','Value',...) creates a new FISODATA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fisodata_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fisodata_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fisodata

% Last Modified by GUIDE v2.5 28-Sep-2017 16:39:42

% Begin initialization code - DO NOT EDIT
global FileName;
global PathName;
global dimensions;
global variable;
global ON; 
global OC;
global OS;
global k;
global L;
global I;
global NO;
global min;
global maxCluster;
global minCluster;
global adj;



gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fisodata_OpeningFcn, ...
                   'gui_OutputFcn',  @fisodata_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before fisodata is made visible.
function fisodata_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fisodata (see VARARGIN)

% Choose default command line output for fisodata
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fisodata wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fisodata_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
help=['ON = Threshold number of elements for the elimination of a cluster.(Minimum Samples in a cluster) \n' ...
    'OC = Threshold distance to the union of clusters. (Lumping Paramtere)\n' ...
    'OS = Tpical deviation threshold for the division of a cluster. (Standard Deviation ) \n' ...
    'k = Number (maximum) of cluster center desired.\n' ...
    'L = Maximum numbers of clusters that can be mixed(Lumped) in a single iteration.\n' ...
    'I = Maximum number of iterations allowed.\n' ...
    'NO = Extra Parameter automatically answer no to the request of cambial some parameter.\n' ...
    'MIN = Minimum distance should be a point of each center. If you do not want to remove any point give it a high value.\n' ...
    'MAXC = The maximum amount of cluster\n' ...
    'MINC = The minimum amount of cluster\n' ...
    'ADJIN = The two largest memberships must be no larger than ADJIN\n'];
msgbox(sprintf(help),'Input Help','help');


function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
%Save

global FileName;
global PathName;
global OutputName;
global dimensions;
global variable;
global ON;
global OC;
global OS;
global k;
global L;
global I;
global NO;
global min;
global centers; %for output
global Xcluster;
global nocenters;
global cluster;
global secure_variable;
global maxC;
global minC;
global adj_in;
global result;


outputFolder = get(handles.edit4,'String');
figName = [get(handles.edit4,'String') '_'];

%Output 
if ~exist(outputFolder,'dir')
         mkdir(outputFolder);
else
    
    % Construct a questdlg with two options
    choice = questdlg('Overwrite output folder?', ...
	    'Warning', ...
	    'Yes','No','No');
    % Handle response
    switch choice
        case 'No'
        return
    end
end
%-----------------Output with Original Data-----------------
[m,n]=size(variable);
[M,N]=size(result.f);
xlsname = strcat(outputFolder,'/',get(handles.edit4,'String'), '.xls');
fidfile = strcat(outputFolder,'/',get(handles.edit4,'String'));
OutputName=xlsname;
 xlsMatrix(1,1)={'Count'};
 xlsMatrix(1,2)={'Data'};
 xlsMatrix(1,3+n)={'Cluster'};
 xlsMatrix(1,5+n)={'Membership'};
 xlsMatrix(1,6+n+N)={'Distance'};
 
 for i=1:m
     xlsMatrix(i+1,1)={i};
     xlsMatrix(i+1,3+n)={cluster(i,1)};%cluster
     for j=1:n
         xlsMatrix(i+1,j+1)={variable(i,j)};%membership
     end
     
     for j=1:N%Distance
         xlsMatrix(i+1,j+4+n)={result.f(i,j)};
         xlsMatrix(i+1,j+5+n+N)={result.d(i,j)};
     end
 end
 
 %Input Parameters
 col= 7+n+N*2;
 xlsMatrix(1,col)={'Input Parameters'};
 xlsMatrix(2,col)={'ON'};
 xlsMatrix(3,col)={'OC'};
 xlsMatrix(4,col)={'OS'};
 xlsMatrix(5,col)={'K'};
 xlsMatrix(6,col)={'L'};
 xlsMatrix(7,col)={'I'};
 xlsMatrix(8,col)={'NO'};
 xlsMatrix(9,col)={'MIN'};
 xlsMatrix(10,col)={'MAXC'};
 xlsMatrix(11,col)={'MINC'};
 xlsMatrix(12,col)={'ADJ_IN'};
 
 col=col+1;
 xlsMatrix(2,col)={ON};
 xlsMatrix(3,col)={OC};
 xlsMatrix(4,col)={OS};
 xlsMatrix(5,col)={k};
 xlsMatrix(6,col)={L};
 xlsMatrix(7,col)={I};
 xlsMatrix(8,col)={NO};
 xlsMatrix(9,col)={min};
 xlsMatrix(10,col)={maxC};
 xlsMatrix(11,col)={minC};
 xlsMatrix(12,col)={adj_in};
 
 %Center
 col=col+2;
 xlsMatrix(1,col)={'Number of Center'};
 xlsMatrix(2,col)={nocenters};
 col=col+2;
 xlsMatrix(1,col)={'Coordinate of Center'};
 for i=1:nocenters
     for j=1:n
         xlsMatrix(i+1,col+j-1)={centers(i,j)};
     end
 end
 
 data.X=variable;
 eigenResult = eigen(data);
 row=nocenters+3;
 xlsMatrix(row,col)={'Eigenvector'};
 
 %Eigenvector
 for i=1:dimensions 
     for j=1:dimensions 
         xlsMatrix(row+i,col+j-1)={eigenResult.V(i,j)};
     end
 end
   row = row+dimensions+2;  
   xlsMatrix(row,col)={'Eigenvalue'};
  
  %Eigenvalue
  for j=1:dimensions 
      xlsMatrix(row+j,col)={eigenResult.D(j,1)};
  end
 
 xlswrite(xlsname,xlsMatrix,'Sheet1'); 
 %save figure file for cluster graph 
 set(0,'showhiddenhandles','on') % Make the GUI figure handle visible
 h = findobj(gcf,'type','axes') % Find the axes object in the GUI
 f1 = figure % Open a new figure with handle f1
 s = copyobj(h,f1) % Copy axes object h into figure f1
 saveas(gcf,fidfile,'fig');
 close(gcf);
 
if ~exist([outputFolder '/Validation'],'dir')
    mkdir([outputFolder '/Validation']);
end
validationMaxClusters=12; %Clusters to test through validation
disp('---------------Success output of Original Data------------');
for i=1:validationMaxClusters
        data.X=variable;
        [centers2, Xcluster2, nocenters2, cluster2,result2] = F_ISODATA(variable,i,i,i,I,adj_in);
        param.val=1;
        result2 = validity(result2,data,param);
        PC(i)=result2.validity.PC;
        CE(i)=result2.validity.CE;
    
        param.val=2;
        result2 = validity(result2,data,param);
        SC(i)=result2.validity.SC;
        S(i)=result2.validity.S;
        XB(i)=result2.validity.XB;
    
        param.val=3;
        result2 = validity(result2,data,param);
        DI(i)=result2.validity.DI;
        ADI(i)=result2.validity.ADI;
    
end
         figure();
         hold on;
         plot(1:validationMaxClusters,PC,'b','linewidth',1.5); 
         plot(1:validationMaxClusters,PC,'r*','linewidth',2);
         title('Partition Coeficent(PC)'),xlabel('Clusters'),...
         ylabel('Validation Measure');
         fidfile = strcat(outputFolder,'/Validation/PC');       
         saveas(gcf,fidfile,'fig');
         close(gcf);
         
         figure();
         hold on;
         plot(1:validationMaxClusters,CE,'b','linewidth',1.5); 
         plot(1:validationMaxClusters,CE,'r*','linewidth',2);
         title('Classification Entropy(CE)'),xlabel('Clusters'),...
         ylabel('Validation Measure');
         fidfile = strcat(outputFolder,'/Validation/CE');       
         saveas(gcf,fidfile,'fig');
         close(gcf);
         
         figure();
         hold on;
         plot(1:validationMaxClusters,SC,'b','linewidth',1.5); 
         plot(1:validationMaxClusters,SC,'r*','linewidth',2);
         title('Partition Index(SC)'),xlabel('Clusters'),...
         ylabel('Validation Measure');
         fidfile = strcat(outputFolder,'/Validation/SC');       
         saveas(gcf,fidfile,'fig');
         close(gcf);
         
         figure();
         hold on;
         plot(1:validationMaxClusters,S,'b','linewidth',1.5); 
         plot(1:validationMaxClusters,S,'r*','linewidth',2);
         title('Separation Index(S)'),xlabel('Clusters'),...
         ylabel('Validation Measure');
         fidfile = strcat(outputFolder,'/Validation/S');       
         saveas(gcf,fidfile,'fig');         
         close(gcf);
         
         figure();
         hold on;
         plot(1:validationMaxClusters,XB,'b','linewidth',1.5); 
         plot(1:validationMaxClusters,XB,'r*','linewidth',2);
         title('Xie and Beni''s Index(XB)'),xlabel('Clusters'),...
         ylabel('Validation Measure');
         fidfile = strcat(outputFolder,'/Validation/XB');       
         saveas(gcf,fidfile,'fig'); 
         close(gcf);
         
         figure();
         hold on;
         plot(1:validationMaxClusters,DI,'b','linewidth',1.5); 
         plot(1:validationMaxClusters,DI,'r*','linewidth',2);
         title('Dunn Index(DI)'),xlabel('Clusters'),...
         ylabel('Validation Measure');
         fidfile = strcat(outputFolder,'/Validation/DI');       
         saveas(gcf,fidfile,'fig'); 
         close(gcf);

         figure();
         hold on;
         plot(1:validationMaxClusters,ADI,'b','linewidth',1.5); 
         plot(1:validationMaxClusters,ADI,'r*','linewidth',2);
         title('Alternative Dunn Index(ADI)'),xlabel('Clusters'),...
         ylabel('Validation Measure');
         fidfile = strcat(outputFolder,'/Validation/ADI');       
         saveas(gcf,fidfile,'fig');
         close(gcf);
         
         disp('---------------Success Save of Validation------------');
         figure();
         
         silhouette(variable,cluster,'sqeuclid');%Silhouette Function
         fidfile = strcat(outputFolder,'/SilhouettePlot');       
         saveas(gcf,fidfile,'fig');
         close(gcf);
         disp('----------Success Save of Silhouette Plotting------------');
         

%-------------------------END-----------------------------------

 %-----------------Output for Removing Column-----------------
 for num=1:dimensions
 removeDataSet=variable;
 removeDataSet(:,num) = [];
 nameSheet=sprintf('Removecolumn_%s',num2str(num));
 [centers1, Xcluster1, nocenters1, cluster1,result1] = F_ISODATA(removeDataSet,maxC,minC,k,I,adj_in);
 [M,N]=size(result1.f);
 [m,n]=size(removeDataSet);
 dim=dimensions-1;
 
 xlsMatrix1(1,1)={'Count'};
 xlsMatrix1(1,2)={'Data'};
 xlsMatrix1(1,3+n)={'Cluster'};
 xlsMatrix1(1,5+n)={'Membership'};
 xlsMatrix1(1,6+n+N)={'Distance'};
 for i=1:m
     xlsMatrix1(i+1,1)={i};
     xlsMatrix1(i+1,3+n)={cluster1(i,1)};%cluster
     for j=1:n
         xlsMatrix1(i+1,j+1)={removeDataSet(i,j)};%membership
     end
     
     for j=1:N%Distance
         xlsMatrix1(i+1,j+4+n)={result1.f(i,j)};
         xlsMatrix1(i+1,j+5+n+N)={result1.d(i,j)};
     end   
 end
 xlswrite(xlsname,xlsMatrix1,nameSheet); 
 end
 disp('----------------Done!-------------------');
 %-------------------------------End-------------------------------------
 


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global FileName;
global PathName;
global OutputName;
winopen(OutputName);


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
%Reading data from input file
global variable;
global dimensions;
global FileName;
global PathName;
global secure_variable;
[FileName,PathName] = uigetfile('*.txt','Please select Text File');
dimensions=str2num(get(handles.edit2,'String'));
variable=readfile(strcat(PathName,FileName),dimensions);
secure_variable = variable;
[m,n]=size(variable);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% View data file
global FileName;
global PathName;
winopen(strcat(PathName,FileName));


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
%plot point 
cla();
global FileName;
global PathName;
global dimensions;
if (dimensions==2)
    [x,y]=readfile2d(strcat(PathName,FileName));
    scatter(x,y,'LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','g');
    [m,n]=size(x);
    grid on;  
end
if (dimensions==3)
    [x,y,z]=readfile3d(strcat(PathName,FileName));
    scatter3(x,y,z,'LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','g');
    [m,n]=size(x);
    grid on;
end


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% run clustering algorithm
global FileName;
global PathName;
global dimensions;
global variable;
global ON;
global OC;
global OS;
global k;
global L;
global I;
global NO;
global min;
global centers; %for output
global Xcluster;
global nocenters;
global cluster;
global secure_variable;
global maxC;
global minC;
global adj_in;
global result;
ON=str2num(get(handles.edit5,'String'));
OC=str2num(get(handles.edit6,'String'));
OS=str2num(get(handles.edit7,'String'));
k=str2num(get(handles.edit8,'String'));
L=str2num(get(handles.edit9,'String'));
I=str2num(get(handles.edit10,'String'));
NO=str2num(get(handles.edit11,'String'));
min=str2num(get(handles.edit12,'String'));

maxC=str2num(get(handles.edit13,'String'));
minC=str2num(get(handles.edit14,'String'));
adj_in=str2num(get(handles.edit15,'String'));
[centers, Xcluster, nocenters, cluster,result] = F_ISODATA(variable,maxC,minC,k,I,adj_in);
if (dimensions==2)
    cla;
    hold on;
    [x,y]=readfile2d(strcat(PathName,FileName));
    plot(x,y,'--rs','LineWidth',1,...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','g',...
                'MarkerSize',5);
   colr = hsv(nocenters);
    cla();
            for i=1:nocenters,
            n=find(cluster==i);
            %p=plot(x(n), y(n),'--rs','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',5);
            scatter(x(n),y(n),'LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor',colr(i,:));
            %set(p,'Color',colr(i,:),'MarkerFaceColor',colr(i,:));
        end;
        for i=1:nocenters,
            %plot(centers(i,1),centers(i,2) ,'ks','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',10);
            scatter(centers(i,1),centers(i,2),100,'*','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','r');
        end;
end
if (dimensions==3)
    cla;
    hold on;
    [x,y,z]=readfile3d(strcat(PathName,FileName));
   colr = hsv(nocenters);
    cla();
    % Represent the information.
    hold on;           
        for i=1:nocenters,
            n=find(cluster==i);          
            scatter3(x(n),y(n),z(n),'LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor',colr(i,:));        
        end;
        for i=1:nocenters,
            scatter3(centers(i,1),centers(i,2),centers(i,3),100 ,'*','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','r');
        end;
        rotate3d on;

set(handles.text19,'String',sprintf('\nClusters Calculated \n Number of Clusters: %d',nocenters));

end


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla
