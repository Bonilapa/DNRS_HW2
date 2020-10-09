function H = AR601legHMNum(M, in)

syms q1 q2 q3 q4 q5 q6 L0 L1 L2 L3 real
L11 = 280.0;
L22 = 280.0;
L33 = 105.5;
q11 = in(1);
q22 = in(2);
q33 = in(3);
q44 = in(4);
q55 = in(5);
q66 = in(6);
H = double(subs(M, {q1, q2, q3, q4, q5, q6, L1, L2, L3}, {q11, q22, q33, q44, q55, q66, L11, L22, L33}));