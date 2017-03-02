global temp_Answer;
% Set the background colour for the GUI
if strcmp(temp_Answer, 'A')
    set(handles.A,'BackgroundColor',[0 0.7 0]) %GREEN%
    set(handles.B,'BackgroundColor','r') %RED%
    set(handles.C,'BackgroundColor','r') %RED%
    set(handles.D,'BackgroundColor','r') %RED%
elseif strcmp(temp_Answer, 'B')
    set(handles.B,'BackgroundColor',[0 0.7 0]) %GREEN%
    set(handles.A,'BackgroundColor','r') %RED%
    set(handles.C,'BackgroundColor','r') %RED%
    set(handles.D,'BackgroundColor','r') %RED%
elseif strcmp(temp_Answer, 'C')
    set(handles.C,'BackgroundColor',[0 0.7 0]) %GREEN%
    set(handles.B,'BackgroundColor','r') %RED%
    set(handles.A,'BackgroundColor','r') %RED%
    set(handles.D,'BackgroundColor','r') %RED%
elseif strcmp(temp_Answer, 'D')
    set(handles.D,'BackgroundColor',[0 0.7 0]) %GREEN%
    set(handles.B,'BackgroundColor','r') %RED%
    set(handles.C,'BackgroundColor','r') %RED%
    set(handles.A,'BackgroundColor','r') %RED%
end
% Set all the background color into original color
pause(3);
set(handles.A,'BackgroundColor','b');
set(handles.B,'BackgroundColor','b');
set(handles.C,'BackgroundColor','b');
set(handles.D,'BackgroundColor','b');
   

