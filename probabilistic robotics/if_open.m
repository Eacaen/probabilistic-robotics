function  if_open( num )
%THE INPUT : the sensor thinks the door open and the manioulator do nothing 
clc
Bayes_filter
% global bel_open;
% global bel_close;
% 
% global P_SenseOPen_Xopen;
% global P_SenseClose_Xopen;
% global P_SenseOPen_Xclose ;
% global P_SenseClose_Xclose;
% 
% global P_Xopen_push_Xopen;
% global P_Xclose_push_Xopen;
% global P_Xopen_push_Xclose;
% global P_Xclose_push_Xclose;
% 
% global P_Xopen_donothing_Xopen;
% global P_Xclose_donothing_Xopen;
% global P_Xopen_donothing_Xclose;
% global P_Xclose_donothing_Xclose;

for n = 1:num
 num
bel_bar_open = P_Xopen_donothing_Xopen * bel_open + ...
                        P_Xopen_donothing_Xclose * bel_close
                      
bel_bar_close = P_Xclose_donothing_Xopen * bel_open + ...
                        P_Xclose_donothing_Xclose * bel_close

bel_open = P_SenseOPen_Xopen * bel_open;
bel_close =  P_SenseOPen_Xclose * bel_close;

yita =bel_open + bel_close;
bel_open = bel_open * (1/yita)
bel_close = bel_close * (1/yita)
end

end

