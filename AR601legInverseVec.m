function A = AR601legInverseVec(x, y, z, ksi, gamma, zetta)

L1 = 280; % ksi - around x
% gamma - around y
% zetta - around z
L2 = 280;
L3 = 105.5;

L1_2link = L1 + L2;
L2_2link = L3;

q1 = gamma; % q1

% заново

%% 2link

q61 = acos((z^2 + y^2 - L3^2 - L1_2link^2) / (2 * L3 * L1_2link))
q62 = -acos((z^2 + y^2 - L3^2 - L1_2link^2) / (2 * L3 * L1_2link))

q21 = atan2(z, y) - atan2(L3 * sin(q61), L1_2link + L3*cos(q61));
q22 = atan2(z, y) - atan2(L3 * sin(q62), L1_2link + L3*cos(q62));

% по идее это должно работать но нет. к то получается что q5 и q6 равны по
% модулю. Он при 

%% 3link

% find point in ankle
xx = x + L3 * sin(zetta);
yy = y - L3 * cos(ksi) * cos(zetta);
zz = z - L3 * sin(ksi);



q41 = acos((xx^2 + yy^2 - L1^2 - L2^2) / (2 * L2 * L1));
q42 = -acos((xx^2 + yy^2 - L1^2 - L2^2) / (2 * L2 * L1));

q31 = atan2(xx, yy) - atan2(L2 * sin(q41), L1 + L2 * cos(q41));
q32 = atan2(xx, yy) - atan2(L2 * sin(q42), L1 + L2 * cos(q42));

q51 = zetta - q41 - q31;
q52 = zetta - q42 - q32;



 %% out
 A = [q1, q21, q31, q41, q51, q61;
     q1, q22, q31, q41, q51, q62;
     q1, q22, q32, q42, q52, q62;
     q1, q21, q32, q42, q52, q61];











% 
% 
% %% 2-link
% % q6 > 0
% % k = z;
% % l = y;
% % a = z^2; 
% % a  = a + y^2 ;
% % a = a - L1_2link^2;
% % a = a - L2_2link^2;
% % b = (2 * L1_2link * L2_2link);
% c = (z^2 + y^2 - L1_2link^2 - L2_2link^2) / (2 * L1_2link * L2_2link);
% 
% % L1_2link = L1 + L2;
% % L2_2link1 = L3 * cos(q51);
% % L2_2link2 = L3 * cos(q52);
% q61 = acos(z^2 + y^2 - L1_2link^2 - L2_2link^2) / (2 * L1_2link * L2_2link);
% u = rad2deg(q61)
% %q21 = ksi - q61;
% 
% % if ksi ~= 0
% %     q61 = acos((z^2 + y^2 - L1_2link^2 - L2_2link1^2) / (2 * L1_2link * L2_2link));
% %     q62 = acos((z^2 + y^2 - L1_2link^2 - L2_2link2^2) / (2 * L1_2link * L2_2link));
% %q62 = -acos((z^2 + y^2 - L1_2link^2 - L2_2link^2) / (2 * L1_2link * L2_2link));
% %q61 = acos((z^2 + y^2 - L1_2link^2 - L2_2link^2) / (2 * L1_2link * L2_2link));
% % q6 < 0
% %q62 = -acos((z^2 + y^2 - L1_2link^2 - L2_2link^2) / (2 * L1_2link * L2_2link));
% 
% % q2 up
%     q21 = atan2(z, y) - atan2(L2_2link * sind(q61) , L1_2link + L2_2link * cos(q61));
%     q22 = atan2(z, y) - atan2(L2_2link * sind(q61) , L1_2link + L2_2link * cos(q62));
% % q2 down
% %q22 = atan2(z, y) - atan2(L2_2link * sind(q62) , L1_2link + L2_2link * cos(q62));
% 
% %% 3-link
% %zetta
% % q4 > 0
% % if abs(xx) > 0.0e-10
% q41 = acos((xx^2 + yy^2 - L1^2 - L2^2) / (2 * L1 * L2))
% % else
% %     q41 = 0
% % end
% % q4 < 0
% q42 = -acos((xx^2 + yy^2 - L1^2 - L2^2) / (2 * L1 * L2))
% 
% % q3 up
% q31 = atan2(xx, yy) - atan2(L2 * sin(q41) , L1 + L2 * cos(q41));
% % q3 down
% q32 = atan2(xx, yy) - atan2(L2 * sin(q42) , L1 + L2 * cos(q42));
% 
% % q5
% q51 = zetta - q41 - q31;
% q52 = zetta - q42 - q32;
% 
% 
% 
% %% out
% A = [q1, q21, q31, q41, q51, q61;
%     %q1, q22, q31, q41, q51, q62;
%     q1, q22, q32, q42, q52, q62];
%     %q1, q22, q32, q42, q52, q62];
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
