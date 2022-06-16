function varargout = DTMFgenerator(varargin)
% DTMFGENERATOR MATLAB code for DTMFgenerator.fig
%      DTMFGENERATOR, by itself, creates a new DTMFGENERATOR or raises the existing
%      singleton*.
%
%      H = DTMFGENERATOR returns the handle to a new DTMFGENERATOR or the handle to
%      the existing singleton*.
%
%      DTMFGENERATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DTMFGENERATOR.M with the given input arguments.
%
%      DTMFGENERATOR('Property','Value',...) creates a new DTMFGENERATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DTMFgenerator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DTMFgenerator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DTMFgenerator

% Last Modified by GUIDE v2.5 13-Jan-2021 21:36:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DTMFgenerator_OpeningFcn, ...
                   'gui_OutputFcn',  @DTMFgenerator_OutputFcn, ...
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
    



% --- Executes just before DTMFgenerator is made visible.
function DTMFgenerator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DTMFgenerator (see VARARGIN)

% Choose default command line output for DTMFgenerator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DTMFgenerator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DTMFgenerator_OutputFcn(hObject, eventdata, handles) 
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
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*697.*t);
    fhigh = sin(2*pi*1209.*t);
    y= flow+ fhigh;
    
    sound(y,fs);
    axes(handles.axes1)
    plot(t,y);
    grid on
 
    


% --- Executes on button press in pushbutton6.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*697.*t);
    fhigh = sin(2*pi*1336.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    
    plot(t,y)
    grid on



% --- Executes on button press in pushbutton6.
function pushbuttonA_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*697.*t);
    fhigh = sin(2*pi*1633.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on


% --- Executes on button press in pushbuttonB.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*770.*t);
    fhigh = sin(2*pi*1336.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on


% --- Executes on button press in pushbuttonC.
function pushbuttonC_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*852.*t);
    fhigh = sin(2*pi*1633.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on



% --- Executes on button press in pushbutton5.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*852.*t);
    fhigh = sin(2*pi*1209.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    
    plot(t,y)
    grid on



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000; 
    t=0:0.000125:0.5;
    flow =sin(2*pi*770.*t);
    fhigh = sin(2*pi*1477.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    
    plot(t,y)
    grid on



% --- Executes on button press in pushbuttonB.
function pushbuttonB_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;  
    t=0:0.000125:0.5;
    flow =sin(2*pi*770.*t);
    fhigh = sin(2*pi*1633.*t);
    y= flow+ fhigh;
    y=y/2;   
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on



% --- Executes on button press in pushbutton2.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*852.*t);
    fhigh = sin(2*pi*1477.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*697.*t);
    fhigh = sin(2*pi*1477.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on


% --- Executes on button press in pushbuttonA.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*852.*t);
    fhigh = sin(2*pi*1336.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on


% --- Executes on button press in pushbuttonstar.
function pushbuttonstar_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonstar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*941.*t);
    fhigh = sin(2*pi*1209.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on


% --- Executes on button press in pushbutton0.
function pushbutton0_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*941.*t);
    fhigh = sin(2*pi*1336.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on



% --- Executes on button press in pushbuttonHash.
function pushbuttonHash_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonHash (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*941.*t);
    fhigh = sin(2*pi*1477.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on



% --- Executes on button press in pushbuttonD.
function pushbuttonD_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*941.*t);
    fhigh = sin(2*pi*1633.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on



% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
cla(handles.axes1, 'reset');
axes(handles.axes3);
cla(handles.axes3, 'reset');
set(handles.edit1,'string',' ');
clc;
clear;


% --- Executes on button press in pushbutton6.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    fs =8000;
    t=0:0.000125:0.5;
    flow =sin(2*pi*770.*t);
    fhigh = sin(2*pi*1209.*t);
    y= flow+ fhigh;
    y=y/2;
    sound(y,fs)
    axes(handles.axes1)
    plot(t,y)
    grid on


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    [filename pathname]= uigetfile({'.wav'}, 'File Selector');
    global y
    global fs
    global len
    [y,fs]=audioread(filename);
    len=length(y);
    assignin('base','len',len)
    

    


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global y
    global fs
    global len
    t=0:1/fs:len/fs-1/fs;
    sound(y,fs);
    axes(handles.axes3);
    plot(t,y)
    grid on


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global fs;
    
    global y;
    
    assignin('base','y',y)
    output='5';
    len=length(y);
    low=[floor(600*len/fs):1:ceil(1000*len/fs)];
    high=[floor(1200*len/fs):1:ceil(1700*len/fs)];
    maximum=0;
    f1=0;
    f2=0;
    fy=fft(y);
    mfy=abs(fy);
    for i=1:length(low)
    if(mfy(low(i))>maximum)
        maximum=mfy(low(i));
        f1=low(i);
        end
    end
    maximum=0;
    for i=1:length(high)
    if(mfy(high(i))>maximum)
        maximum=mfy(high(i));
        f2=high(i);
        end
    end
    f1=f1*fs/length(y);
    f2=f2*fs/length(y);
    if(f1<770 && f2<1336)
        output='1';
    elseif(f1<770 && f2<1477)
        output='2';
    elseif(f1<770 && f2<1633)
        output='3';
    elseif(f1<770)
        output='A';
    elseif(f1<852 && f2<1336)
        output='4';
    elseif(f1<852 && f2<1477)
        output='5';
    elseif(f1<852 && f2<1633)
        output='6';
    elseif(f1<852)
        output='B';
    elseif(f1<941 && f2<1336)
        output='7';
    elseif(f1<941 && f2<1477)
        output='8';
    elseif(f1<941 && f2<1633)
        output='9';
    elseif(f1<941)
        output='C';
    elseif( f2<1336)
        output='*';
    elseif(f2<1477)
        output='0';
    elseif(f2<1633)
        output='#';
    else
        output='D';
    end
    set(handles.edit1,'string',output);
    assignin('base','output',output)
    

    
    
  



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
