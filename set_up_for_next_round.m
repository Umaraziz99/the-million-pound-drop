% Set the bid boxes visible on
set(handles.Bid_A,'visible','on');
set(handles.Bid_B,'visible','on');
set(handles.Bid_C,'visible','on');
set(handles.Bid_D,'visible','on'); 
% Set handles
Q_box = handles.Q_box,;
A = handles.A;
B = handles.B;
C = handles.C;
D = handles.D;
Bal = handles.Bal;
Bid_A = handles.Bid_A;
Bid_B = handles.Bid_B;
Bid_C = handles.Bid_C;
Bid_D = handles.Bid_D;


global Questions;
global winnings;
% storing Question and options for next round
Q_box = Questions{Round,1};
A = Questions{Round,2};
B = Questions{Round,3};
C = Questions{Round,4};
D = Questions{Round,5};
temp_Answer = Questions{Round,6};
Bal = winnings;
Bid_A = '0';
Bid_B = '0';
Bid_C = '0';
Bid_D = '0';

pause(0.5)
% Clear the question 
set(handles.Q_box,'String','Moving on to the next round')
set(handles.A,'string','')
set(handles.B,'string','')
set(handles.C,'string','')
set(handles.D,'string','')
set(handles.Bal, 'string','')
set(handles.Bid_A,'string','')
set(handles.Bid_B,'string','')
set(handles.Bid_C,'string','')
set(handles.Bid_D,'string','')



pause(7);
% Set the question and the Answers
set(handles.Q_box,'String',Q_box);
set(handles.A,'String',A);
set(handles.B,'String',B);
set(handles.C,'String',C);
set(handles.D,'String',D);
set(handles.Bal,'string',Bal);

guidata(hObject,handles);
