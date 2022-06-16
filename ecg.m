function varargout = ecg(varargin)
% ECG MATLAB code for ecg.fig
%      ECG, by itself, creates a new ECG or raises the existing
%      singleton*.
%
%      H = ECG returns the handle to a new ECG or the handle to
%      the existing singleton*.
%
%      ECG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ECG.M with the given input arguments.
%
%      ECG('Property','Value',...) creates a new ECG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ecg_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ecg_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ecg

% Last Modified by GUIDE v2.5 17-Jan-2021 20:49:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ecg_OpeningFcn, ...
                   'gui_OutputFcn',  @ecg_OutputFcn, ...
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


% --- Executes just before ecg is made visible.
function ecg_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ecg (see VARARGIN)

% Choose default command line output for ecg
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ecg wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ecg_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.fname, 'visible', 'off')
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global tx wv mt filename fs sig;
fs=0;
tx = get(handles.txttag ,'value');
wv = get(handles.wavtag ,'value');
mt = get(handles.mattag ,'value');
filename = '';
pathname = '';
if(tx==1)
    [filename pathname]= uigetfile({'.txt'}, 'File Selector');
end
if(wv==1)
    [filename pathname]= uigetfile({'.wav'}, 'File Selector');
end
if(mt==1)
    [filename pathname]= uigetfile({'.csv'}, 'File Selector');
end
set(handles.fname, 'visible', 'on');
set(handles.fname, 'string' , filename);
sig=[];
if(tx==1)
sig = load(filename);
end
if(wv==1)
[sig fs]=audioread(filename);
end
if(mt==1)
sig = load(filename);
end
axes(handles.axes1);
axis([0 length(sig) -1.5 2]);
plot(sig);



function samplerateedit_Callback(hObject, eventdata, handles)
% hObject    handle to samplerateedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of samplerateedit as text
%        str2double(get(hObject,'String')) returns contents of samplerateedit as a double


% --- Executes during object creation, after setting all properties.
function samplerateedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to samplerateedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA
global filename sig wv fs;
pk=findpeaks(sig);
N = length(sig);
threshold2 = str2double(get(handles.thresholdedit ,  'String'));
wv
if(wv~=1)
    fs = str2double(get(handles.samplerateedit ,  'String'));
end
beat_count = 0;
max1 = max(pk);
min1 = min(pk);
threshold = threshold2;
if(isnan(threshold2))
    threshold = min1+((max1-min1)/2);
end
for k = 2 : length(pk)-1
    if( pk(k) > threshold )
        beat_count = beat_count + 1;
    end
end
duration_in_seconds = N/fs;
duration_in_minutes = duration_in_seconds/60;
BPM_avg = beat_count/duration_in_minutes;
mh = msgbox([' Beats per minute average = ' num2str(BPM_avg) ' bpm']);
th = findall(mh, 'Type', 'Text');               
th.FontSize = 12;
mh.Resize = 'on';







function thresholdedit_Callback(hObject, eventdata, handles)
% hObject    handle to thresholdedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of thresholdedit as text
%        str2double(get(hObject,'String')) returns contents of thresholdedit as a double


% --- Executes during object creation, after setting all properties.
function thresholdedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thresholdedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in wavtag.
function wavtag_Callback(hObject, eventdata, handles)
set(handles.sampleratetxt, 'visible' , 'off');
set(handles.samplerateedit, 'visible' , 'off');
% hObject    handle to wavtag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of wavtag


% --- Executes on button press in txttag.
function txttag_Callback(hObject, eventdata, handles)
set(handles.sampleratetxt, 'visible' , 'on');
set(handles.samplerateedit, 'visible' , 'on');
% hObject    handle to txttag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of txttag


% --- Executes on button press in mattag.
function mattag_Callback(hObject, eventdata, handles)
set(handles.sampleratetxt, 'visible' , 'on');
set(handles.samplerateedit, 'visible' , 'on');
% hObject    handle to mattag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mattag



% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
