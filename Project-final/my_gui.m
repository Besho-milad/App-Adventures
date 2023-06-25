function varargout = my_gui(varargin)
% MY_GUI MATLAB code for my_gui.fig
%      MY_GUI, by itself, creates a new MY_GUI or raises the existing
%      singleton*.
%
%      H = MY_GUI returns the handle to a new MY_GUI or the handle to
%      the existing singleton*.
%
%      MY_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MY_GUI.M with the given input arguments.
%
%      MY_GUI('Property','Value',...) creates a new MY_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before my_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to my_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help my_gui

% Last Modified by GUIDE v2.5 23-May-2023 09:32:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @my_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @my_gui_OutputFcn, ...
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


% --- Executes just before my_gui is made visible.
function my_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to my_gui (see VARARGIN)

% Choose default command line output for my_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes my_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = my_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function resize_fact_num_Callback(hObject, eventdata, handles)
% hObject    handle to resize_fact_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resize_fact_num as text
%        str2double(get(hObject,'String')) returns contents of resize_fact_num as a double



% --- Executes during object creation, after setting all properties.
function resize_fact_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resize_fact_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function img_type_Callback(hObject, eventdata, handles)
% hObject    handle to img_type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of img_type as text
%        str2double(get(hObject,'String')) returns contents of img_type as a double


% --- Executes during object creation, after setting all properties.
function img_type_CreateFcn(hObject, eventdata, handles)
% hObject    handle to img_type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in load_image.
function load_image_Callback(hObject, eventdata, handles)
% hObject    handle to load_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global image
image = uigetfile('*.*');
filename=image;
setappdata(0,'filename',filename);
image=imread(image);
axes(handles.axes1);
imshow(image);

setappdata(0,'image',image)
setappdata(0,'filename',image);




% save the updated handles object
%guidata(hObject,handles);




% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'image');
imshow(a);

% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Thanks For Using Image Processing Tool')
pause(2)
close();
close();



% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider13_Callback(hObject, eventdata, handles)
% hObject    handle to gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to new_max_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of new_max_num as text
%        str2double(get(hObject,'String')) returns contents of new_max_num as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to new_max_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function darkness_offset_num_Callback(hObject, eventdata, handles)
% hObject    handle to darkness_offset_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of darkness_offset_num as text
%        str2double(get(hObject,'String')) returns contents of darkness_offset_num as a double


% --- Executes during object creation, after setting all properties.
function darkness_offset_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to darkness_offset_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function gamma_Callback(hObject, eventdata, handles)
% hObject    handle to resize_fact (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global gamma
gamma = get(handles.gamma, 'Value');
data = num2str(gamma);
set(handles.gamma_num,'String',data);



% --- Executes during object creation, after setting all properties.
function gamma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resize_fact (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider14_Callback(hObject, eventdata, handles)
% hObject    handle to new_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to new_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function Distance_from_origin_num_Callback(hObject, eventdata, handles)
% hObject    handle to Distance_from_origin_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Distance_from_origin_num as text
%        str2double(get(hObject,'String')) returns contents of Distance_from_origin_num as a double


% --- Executes during object creation, after setting all properties.
function Distance_from_origin_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Distance_from_origin_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigma_num_Callback(hObject, eventdata, handles)
% hObject    handle to sigma_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigma_num as text
%        str2double(get(hObject,'String')) returns contents of sigma_num as a double


% --- Executes during object creation, after setting all properties.
function sigma_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider15_Callback(hObject, eventdata, handles)
% hObject    handle to brightness_offset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to brightness_offset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to brightness_offset_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of brightness_offset_num as text
%        str2double(get(hObject,'String')) returns contents of brightness_offset_num as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to brightness_offset_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sigma_Callback(hObject, eventdata, handles)
% hObject    handle to brightness_offset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

global sigma
sigma = get(handles.sigma, 'Value');
data = num2str(sigma);
set(handles.sigma_num,'String',data);

% --- Executes during object creation, after setting all properties.
function sigma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to brightness_offset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function gamma_num_Callback(hObject, eventdata, handles)
% hObject    handle to gamma_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gamma_num as text
%        str2double(get(hObject,'String')) returns contents of gamma_num as a double


% --- Executes during object creation, after setting all properties.
function gamma_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gamma_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function filter_order_Callback(hObject, eventdata, handles)
% hObject    handle to gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global filter_order
filter_order = get(handles.filter_order, 'Value');
data = num2str(filter_order);
set(handles.filter_order_num,'String',data);

% --- Executes during object creation, after setting all properties.
function filter_order_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gamma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function new_min_num_Callback(hObject, eventdata, handles)
% hObject    handle to new_min_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of new_min_num as text
%        str2double(get(hObject,'String')) returns contents of new_min_num as a double


% --- Executes during object creation, after setting all properties.
function new_min_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to new_min_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function new_min_Callback(hObject, eventdata, handles)
% hObject    handle to new_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

global Minimum_number
Minimum_number = get(handles.new_min, 'Value');
data = num2str(Minimum_number);
set(handles.new_min_num,'String',data);


% --- Executes during object creation, after setting all properties.
function new_min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to new_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function new_max_num_Callback(hObject, eventdata, handles)
% hObject    handle to new_max_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of new_max_num as text
%        str2double(get(hObject,'String')) returns contents of new_max_num as a double


% --- Executes during object creation, after setting all properties.
function new_max_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to new_max_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function new_max_Callback(hObject, eventdata, handles)
% hObject    handle to new_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

global max_number
max_number = get(handles.new_max, 'Value');
data = num2str(max_number);
set(handles.new_max_num,'String',data);


% --- Executes during object creation, after setting all properties.
function new_max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to new_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function brightness_offset_num_Callback(hObject, eventdata, handles)
% hObject    handle to brightness_offset_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of brightness_offset_num as text
%        str2double(get(hObject,'String')) returns contents of brightness_offset_num as a double


% --- Executes during object creation, after setting all properties.
function brightness_offset_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to brightness_offset_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function brightness_offset_Callback(hObject, eventdata, handles)
% hObject    handle to brightness_offset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

global brightness_offset
brightness_offset = get(handles.brightness_offset, 'Value');
data = num2str(brightness_offset);
set(handles.brightness_offset_num,'String',data);


% --- Executes during object creation, after setting all properties.
function brightness_offset_CreateFcn(hObject, eventdata, handles)
% hObject    handle to brightness_offset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function resize_fact_Callback(hObject, eventdata, handles)
% hObject    handle to resize_fact (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
% 
global resize_number
resize_number = get(handles.resize_fact, 'Value');
data1 = num2str(resize_number);
set(handles.resize_fact_num,'String',data1);


% --- Executes during object creation, after setting all properties.
function resize_fact_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resize_fact (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in apply2.
function apply2_Callback(hObject, eventdata, handles)
% hObject    handle to apply2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

var = get(handles.popupmenu2,'value');

global gamma
global bit_num_per_pixel
global darkness_offset
global brightness_offset
global max_number
global Minimum_number
global image
global image2

switch var
    case 2
        input = cvt2gray(image);
        axes(handles.axes2);
        imshow(input);
    case 3
        input = contrast_adjustment(image,Minimum_number,max_number);
        axes(handles.axes2);
        imshow(input);
    case 4
        input = DarkBright(image,brightness_offset);
        axes(handles.axes2);
        imshow(input);
    case 5
        neg = darkness_offset * -1;
        input = DarkBright(image,neg);
        axes(handles.axes2);
        imshow(input);
    case 6
        input = power_law(image,gamma);
        axes(handles.axes2);
        imshow(input);
    case 7
        [input,color] = histogram_equalization(image);
        axes(handles.axes2);
        imshow(input);
    case 8
        input = histogram_matching(image,image2);
        axes(handles.axes2);
        imshow(input);
    case 9
        input = subtract_two_images(image,image2);
        axes(handles.axes2);
        imshow(input);
    case 10
        input = image_negative(image);
        axes(handles.axes2);
        imshow(input);
    case 11
        input = quantization(image,bit_num_per_pixel);
        axes(handles.axes2);
        imshow(input);
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in apply1.
function apply1_Callback(hObject, eventdata, handles)
% hObject    handle to apply1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

h = get(handles.geometry,'value');


global resize_number 
global Minimum_number
global image

switch h
    case 2
        input = DM_0L(image,resize_number);
        axes(handles.axes2);
        imshow(input);
    case 3
        input = DM_1L(image,resize_number);
        axes(handles.axes2);
        imshow(input);
    case 4
        input = RM_0_order(image,resize_number,Minimum_number);
        axes(handles.axes2);
        imshow(input);
    case 5
        input = RM_1_order(image,resize_number,Minimum_number);
        axes(handles.axes2);
        imshow(input);
      
end


% --- Executes on selection change in geometry.
function geometry_Callback(hObject, eventdata, handles)
% hObject    handle to geometry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns geometry contents as cell array
%        contents{get(hObject,'Value')} returns selected item from geometry
    


% --- Executes during object creation, after setting all properties.
function geometry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to geometry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in apply3.
function apply3_Callback(hObject, eventdata, handles)
% hObject    handle to apply3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
var = get(handles.popupmenu3,'value');

global sigma
global image

switch var
    case 2
        input = Average_filter(image,sigma);
        axes(handles.axes2);
        imshow(input);
    case 3
        input = Weighted_filter(image,sigma);
        axes(handles.axes2);
        imshow(input);
    case 4
        input = Sharpening_filter(image);
        axes(handles.axes2);
        imshow(input);
    case 5
        input = Edge_detection_filter(image);
        axes(handles.axes2);
        imshow(input);
    case 6
        input = Unsharpen_mask(image,sigma);
        axes(handles.axes2);
        imshow(input);
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in apply4.
function apply4_Callback(hObject, eventdata, handles)
% hObject    handle to apply4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
var = get(handles.popupmenu4,'value');

global filter_order
global Distance_from_origin
global image

switch var
    case 2
        input = ideal_lowpass_filter(image,Distance_from_origin);
        axes(handles.axes2);
        imshow(input);
    case 3
        input = butterworth_lowpass_filter(image,Distance_from_origin,filter_order);
        axes(handles.axes2);
        imshow(input);
    case 4
        input = gaussian_lowpass_filter(image,Distance_from_origin);
        axes(handles.axes2);
        imshow(input);
    case 5
        input = ideal_highpass_filter(image,Distance_from_origin);
        axes(handles.axes2);
        imshow(input);
    case 6
        input = butterworth_highpass_filter(image,Distance_from_origin,filter_order);
        axes(handles.axes2);
        imshow(input);
    case 7
        input = gaussian_highpass_filter(image,Distance_from_origin);
        axes(handles.axes2);
        imshow(input);
end



function filter_order_num_Callback(hObject, eventdata, handles)
% hObject    handle to filter_order_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of filter_order_num as text
%        str2double(get(hObject,'String')) returns contents of filter_order_num as a double


% --- Executes during object creation, after setting all properties.
function filter_order_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filter_order_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function darkness_offset_Callback(hObject, eventdata, handles)
% hObject    handle to darkness_offset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global darkness_offset
darkness_offset = get(handles.darkness_offset, 'Value');
data = num2str(darkness_offset);
set(handles.darkness_offset_num,'String',data);


% --- Executes during object creation, after setting all properties.
function darkness_offset_CreateFcn(hObject, eventdata, handles)
% hObject    handle to darkness_offset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Distance_from_origin_Callback(hObject, eventdata, handles)
% hObject    handle to Distance_from_origin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global Distance_from_origin
Distance_from_origin = get(handles.Distance_from_origin, 'Value');
data = num2str(Distance_from_origin);
set(handles.Distance_from_origin_num,'String',data);

% --- Executes during object creation, after setting all properties.
function Distance_from_origin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Distance_from_origin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function bit_num_per_pixel_num_Callback(hObject, eventdata, handles)
% hObject    handle to bit_num_per_pixel_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bit_num_per_pixel_num as text
%        str2double(get(hObject,'String')) returns contents of bit_num_per_pixel_num as a double


% --- Executes during object creation, after setting all properties.
function bit_num_per_pixel_num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bit_num_per_pixel_num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function bit_num_per_pixel_Callback(hObject, eventdata, handles)
% hObject    handle to bit_num_per_pixel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global bit_num_per_pixel
bit_num_per_pixel = get(handles.bit_num_per_pixel, 'Value');
data = num2str(bit_num_per_pixel);
set(handles.bit_num_per_pixel_num,'String',data);

% --- Executes during object creation, after setting all properties.
function bit_num_per_pixel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bit_num_per_pixel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function apply2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to apply2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in load_img2.
function load_img2_Callback(hObject, eventdata, handles)
% hObject    handle to load_img2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image2
image2 = uigetfile('*.*');
filename=image2;
setappdata(0,'filename',filename);
image2=imread(image2);
axes(handles.axes5);
imshow(image2);

setappdata(0,'image',image2);
setappdata(0,'filename',image2);
