function varargout = Rounds(varargin)
% ROUNDS MATLAB code for Rounds.fig
%      ROUNDS, by itself, creates a new ROUNDS or raises the existing
%      singleton*.
%
%      H = ROUNDS returns the handle to a new ROUNDS or the handle to
%      the existing singleton*.
%
%      ROUNDS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROUNDS.M with the given input arguments.
%
%      ROUNDS('Property','Value',...) creates a new ROUNDS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Rounds_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Rounds_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Rounds

% Last Modified by GUIDE v2.5 24-Dec-2016 02:07:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Rounds_OpeningFcn, ...
                   'gui_OutputFcn',  @Rounds_OutputFcn, ...
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


% --- Executes just before Rounds is made visible.
function Rounds_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Rounds (see VARARGIN)

% Choose default command line output for Rounds
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Rounds wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Rounds_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% Generate questions for all seven rounds
% Structure of each column (Q, A, B, C, D, RIGHT_ANS)
% To access A type Questions(1,2)

%Questions = {round1;...
%    round2;...
%    round3;...
%    round4;...
%    round5;...
%    round6;...
%    round7};

% Set out the questions, choices and answers for 7 rounds
Listofquestionsforthegame

SetofRandomQuestions
% Question, choices, answers in round 1
Q1=chosenquestionR1(1,1);
A1=chosenquestionR1(1,2);
B1=chosenquestionR1(1,3);
C1=chosenquestionR1(1,4);
D1=chosenquestionR1(1,5);
Ans1=chosenquestionR1(1,6);
% Question, choices, answers in round 2
Q2=chosenquestionR2(1,1);
A2=chosenquestionR2(1,2);
B2=chosenquestionR2(1,3);
C2=chosenquestionR2(1,4);
D2=chosenquestionR2(1,5);
Ans2=chosenquestionR2(1,6);
% Question, choices, answers in round 3
Q3=chosenquestionR3(1,1);
A3=chosenquestionR3(1,2);
B3=chosenquestionR3(1,3);
C3=chosenquestionR3(1,4);
D3=chosenquestionR3(1,5);
Ans3=chosenquestionR3(1,6);
% Question, choices, answers in round 4
Q4=chosenquestionR4(1,1);
A4=chosenquestionR4(1,2);
B4=chosenquestionR4(1,3);
C4=chosenquestionR4(1,4);
D4=chosenquestionR4(1,5);
Ans4=chosenquestionR4(1,6);
% Question, choices, answers in round 5
Q5=chosenquestionR5(1,1);
A5=chosenquestionR5(1,2);
B5=chosenquestionR5(1,3);
C5=chosenquestionR5(1,4);
D5=chosenquestionR5(1,5);
Ans5=chosenquestionR5(1,6);
% Question, choices, answers in round 6
Q6=chosenquestionR6(1,1);
A6=chosenquestionR6(1,2);
B6=chosenquestionR6(1,3);
C6=chosenquestionR6(1,4);
D6=chosenquestionR6(1,5);
Ans6=chosenquestionR6(1,6);
% Question, choices, answers in round 7
Q7=chosenquestionR7(1,1);
A7=chosenquestionR7(1,2);
B7=chosenquestionR7(1,3);
C7=chosenquestionR7(1,4);
D7=chosenquestionR7(1,5);
Ans7=chosenquestionR7(1,6);
% Set out an array of question and answer for each round
global Questions;
Questions = {Q1{1}, A1{1}, B1{1}, C1{1}, D1{1}, Ans1{1};...
    Q2{1}, A2{1}, B2{1}, C2{1}, D2{1}, Ans2{1};...
    Q3{1}, A3{1}, B3{1}, C3{1}, D3{1}, Ans3{1};...
    Q4{1}, A4{1}, B4{1}, C4{1}, D4{1}, Ans4{1};...
    Q5{1}, A5{1}, B5{1}, C5{1}, D5{1}, Ans5{1};...
    Q6{1}, A6{1}, B6{1}, C6{1}, D6{1}, Ans6{1};...
    Q7{1}, A7{1}, B7{1}, C7{1}, D7{1}, Ans7{1}};
    


global Round; % keep track of rounds
global winnings;
global temp_Answer;
% Storing global variables
Round = 1;
winnings = 1000000;
guidata(hObject,handles);

% stores question and options for 1st question
temp_quest = Questions{1,1};
temp_A = Questions{1,2};
temp_B = Questions{1,3};
temp_C = Questions{1,4};
temp_D = Questions{1,5};
temp_Answer = Questions{1,6};
global balance
balance=winnings;


% Display question and options to GUI
set(handles.Q_box,'String',temp_quest);
set(handles.A,'string',temp_A);
set(handles.B,'string',temp_B);
set(handles.C,'string',temp_C);
set(handles.D,'string',temp_D);
set(handles.message, 'visible', 'off');
set(handles.game_over, 'visible', 'off');
set(handles.Bal,'string',num2str(balance));


% Store bids
A = str2num(char(get(handles.Bid_A,'String')));
B = str2num(char(get(handles.Bid_B,'String')));
C = str2num(char(get(handles.Bid_C,'String')));
D = str2num(char(get(handles.Bid_D,'String')));
guidata(hObject,handles);
% If edit box is empty set bid = 0 by default
if isempty(A)
    A = 0;
end
if isempty(B)
    B = 0;
end
if isempty(C)
    C = 0;
end
if isempty(D)
    D = 0;
end

% Setting countdown
countdown=handles.timer;
set(handles.Check,'visible','off');
[y,Fs]=audioread('One Minute Countdown - Million Pound Drop.wav');
sound(y,Fs);
for i=0:60
    countdown=num2str(60-i);
    set(handles.timer,'string',countdown);
    guidata(hObject,handles); % saves to GUI data
    pause(1);
end
if countdown=='0'
    set(handles.Check,'visible','on');
    set(handles.Bid_A,'visible','off');
    set(handles.Bid_B,'visible','off');
    set(handles.Bid_C,'visible','off');
    set(handles.Bid_D,'visible','off');
end

guidata(hObject,handles); % saves to GUI data

% --- Executes on button press in Check.
function Check_Callback(hObject, eventdata, handles)
% hObject    handle to Check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global Round; % keep track of rounds
global winnings;
global temp_Answer;



% Store bids
A = str2num(char(get(handles.Bid_A,'String')));
B = str2num(char(get(handles.Bid_B,'String')));
C = str2num(char(get(handles.Bid_C,'String')));
D = str2num(char(get(handles.Bid_D,'String')));

% If edit box is empty set bid = 0 by default
if isempty(A)
    A = 0;
end
if isempty(B)
    B = 0;
end
if isempty(C)
    C = 0;
end
if isempty(D)
    D = 0;
end
% If the player chooses wrong answer or finish the game then gameover
if winnings==0 || Round > 7
        set(handles.Check,'visible','off');
        set(handles.Bal,'visible','off');
        set(handles.Q_box,'visible','off');
        set(handles.A,'visible','off');
        set(handles.B,'visible','off');
        set(handles.C,'visible','off');
        set(handles.D,'visible','off');
        set(handles.Bid_A,'visible','off');
        set(handles.Bid_B,'visible','off');
        set(handles.Bid_C,'visible','off');
        set(handles.Bid_D,'visible','off');
        set(handles.message,'visible','off');
        set(handles.timer, 'visible', 'off');
        set(handles.game_over, 'visible', 'on');
end
    
    Round = Round+1;    
    pause(2);
    if A+B+C+D ~= winnings % if all the bet has not been put on the box before the time
        set(handles.Check,'visible','off');
        set(handles.Bal,'visible','off');
        set(handles.Q_box,'visible','off');
        set(handles.A,'visible','off');
        set(handles.B,'visible','off');
        set(handles.C,'visible','off');
        set(handles.D,'visible','off');
        set(handles.Bid_A,'visible','off');
        set(handles.Bid_B,'visible','off');
        set(handles.Bid_C,'visible','off');
        set(handles.Bid_D,'visible','off');
        set(handles.message,'visible','off');
        set(handles.timer, 'visible', 'off');
        set(handles.game_over, 'visible', 'on');
        [y,Fs]=audioread('aah-01.wav');
        sound(y,Fs);
% otherwise
else 
    display_ans;    % Runs script which check ans and stores new winnings
    if strcmp(temp_Answer, 'A')
        winnings = A;
    elseif strcmp(temp_Answer, 'B')
        winnings = B;
    elseif strcmp(temp_Answer, 'C')
        winnings = C;
    elseif strcmp(temp_Answer, 'D')
        winnings = D;
    end
    if temp_Answer=='A' && A>0
        [y,Fs]=audioread('Marc Sylvan - The Million Pound DROP Live winners (mp3cut.net).wav');
        sound(y,Fs);
    elseif temp_Answer=='B' && B>0
        [y,Fs]=audioread('Marc Sylvan - The Million Pound DROP Live winners (mp3cut.net).wav');
        sound(y,Fs);
    elseif temp_Answer=='C' && C>0
        [y,Fs]=audioread('Marc Sylvan - The Million Pound DROP Live winners (mp3cut.net).wav');
        sound(y,Fs);
    elseif temp_Answer=='D' && D>0
        [y,Fs]=audioread('Marc Sylvan - The Million Pound DROP Live winners (mp3cut.net).wav');
        sound(y,Fs);
    else
        [y,Fs]=audioread('aah-01.wav');
        sound(y,Fs);
    end
% If the player choose the right answer    
    if temp_Answer=='A' && A>0 || temp_Answer=='B' && B>0 ||temp_Answer=='C' && C>0 || temp_Answer=='D' && D>0
    set_up_for_next_round;    
    countdown=handles.timer;
    set(handles.Check,'visible','off');
    [y,Fs]=audioread('One Minute Countdown - Million Pound Drop.wav');
    sound(y,Fs);
        for i=0:60
    countdown=num2str(60-i);
    set(handles.timer,'string',countdown);
    guidata(hObject,handles); % saves to GUI data
    pause(1);
        end
        if countdown=='0'
            set(handles.Check,'visible','on');
            set(handles.Bid_A,'visible','off');
            set(handles.Bid_B,'visible','off');
            set(handles.Bid_C,'visible','off');
            set(handles.Bid_D,'visible','off');
        end
% otherwise, gameover        
    else
        set(handles.Check,'visible','off');
        set(handles.Bal,'visible','off');
        set(handles.Q_box,'visible','off');
        set(handles.A,'visible','off');
        set(handles.B,'visible','off');
        set(handles.C,'visible','off');
        set(handles.D,'visible','off');
        set(handles.Bid_A,'visible','off');
        set(handles.Bid_B,'visible','off');
        set(handles.Bid_C,'visible','off');
        set(handles.Bid_D,'visible','off');
        set(handles.message,'visible','off');
        set(handles.timer, 'visible', 'off');
        set(handles.game_over, 'visible', 'on');
     end
 end

    

function Bid_A_Callback(hObject, eventdata, handles)
% hObject    handle to Bid_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Bid_A as text
%        str2double(get(hObject,'String')) returns contents of Bid_A as a double


% --- Executes during object creation, after setting all properties.
function Bid_A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Bid_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function Bid_D_Callback(hObject, eventdata, handles)
% hObject    handle to Bid_D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Bid_D as text
%        str2double(get(hObject,'String')) returns contents of Bid_D as a double


% --- Executes during object creation, after setting all properties.
function Bid_D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Bid_D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Bid_C_Callback(hObject, eventdata, handles)
% hObject    handle to Bid_C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Bid_C as text
%        str2double(get(hObject,'String')) returns contents of Bid_C as a double


% --- Executes during object creation, after setting all properties.
function Bid_C_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Bid_C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Bid_B_Callback(hObject, eventdata, handles)
% hObject    handle to Bid_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Bid_B as text
%        str2double(get(hObject,'String')) returns contents of Bid_B as a double


% --- Executes during object creation, after setting all properties.
function Bid_B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Bid_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% --- Executes during object creation, after setting all properties.
function timer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to timer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
