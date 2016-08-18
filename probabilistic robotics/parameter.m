function  [] = parameter( )
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
global  bel_open;
global bel_close;

global P_SenseOPen_Xopen;
global P_SenseClose_Xopen;
global P_SenseOPen_Xclose ;
global P_SenseClose_Xclose;

global P_Xopen_push_Xopen;
global P_Xclose_push_Xopen;
global P_Xopen_push_Xclose;
global P_Xclose_push_Xclose;

global P_Xopen_donothing_Xopen;
global P_Xclose_donothing_Xopen;
global P_Xopen_donothing_Xclose;
global P_Xclose_donothing_Xclose;

bel_open= 0.05;
bel_close = 1 - bel_open;

P_SenseOPen_Xopen = 0.6;
P_SenseClose_Xopen = 0.4;
P_SenseOPen_Xclose = 0.2;
P_SenseClose_Xclose = 0.8;

P_Xopen_push_Xopen = 1;
P_Xclose_push_Xopen = 1 - P_Xopen_push_Xopen;
P_Xopen_push_Xclose = 0.8;
P_Xclose_push_Xclose = 1 - P_Xclose_push_Xclose;

P_Xopen_donothing_Xopen = 1;
P_Xclose_donothing_Xopen = 0;
P_Xopen_donothing_Xclose = 0;
P_Xclose_donothing_Xclose = 1;

end

