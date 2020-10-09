clear all;
H = AR601legHM();

% q1 = 90;
% q2 = 0;
% q3 = 0;
% q4 = 0;
% q5 = 0;
% q6 = 0;
% in = [deg2rad(q1), deg2rad(q2), deg2rad(q3), deg2rad(q4), deg2rad(q5), deg2rad(q6)]
% out = AR601legInverseMat(AR601legHMNum(H, in));
% disp(rad2deg(out));

%in = [q1, q2, q3, q4, q5, q6]
% in = [0, 0, 0, 0, 0, 89]
%  %out = rad2deg(AR601legInverseMat(
%  out = AR601legHMNum(H, deg2rad(in));
%  out2 = AR601legInverseMat(out);
%  out2 = rad2deg(out2)
 for q1 = -20 : 20
      for q2 = -11 : 20
          for q3 = -70 : 45
              for q4 = 0 : 140
                  for q5 = -70 : 33
                      for q6 = -11 : 20
                          in = [q1, q2, q3, q4, q5, q6]
                          out = AR601legHMNum(H, deg2rad(in));
                          out2 = AR601legInverseMat(out);
                          out2 = rad2deg(out2)
%                           dif = abs(in - out)
%                           if(false)
%                               disp("not equal");
%                               break;
%                           end
                      end
                  end
              end
          end
      end
 end