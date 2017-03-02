function varargout = StartScreen(varargin)
% STARTSCREEN MATLAB code for StartScreen.fig
%      STARTSCREEN, by itself, creates a new STARTSCREEN or raises the existing
%      singleton*.
%
%      H = STARTSCREEN returns the handle to a new STARTSCREEN or the handle to
%      the existing singleton*.
%
%      STARTSCREEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STARTSCREEN.M with the given input arguments.
%
%      STARTSCREEN('Property','Value',...) creates a new STARTSCREEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before StartScreen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to StartScreen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help StartScreen

% Last Modified by GUIDE v2.5 09-Jan-2017 18:13:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @StartScreen_OpeningFcn, ...
                   'gui_OutputFcn',  @StartScreen_OutputFcn, ...
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

% --- Executes just before StartScreen is made visible.
function StartScreen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to StartScreen (see VARARGIN)

% Choose default command line output for StartScreen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
j = imread('Logo.jpg');
axes(handles.logo)
imshow(j);

% UIWAIT makes StartScreen wait for user response (see UIRESUME)
% uiwait(handles.figure1);

[y,Fs] = audioread('Million Pound Drop 2014 Opening Titles.wav');
sound(y,Fs);

% --- Outputs from this function are returned to the command line.
function varargout = StartScreen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in play_game_pushbutton.
function play_game_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to play_game_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Rounds
% --- Executes during object creation, after setting all properties.





% --- Executes during object creation, after setting all properties.
function logo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to logo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate logo
