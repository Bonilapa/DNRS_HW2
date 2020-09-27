clear all
syms q1 q2 q3 q4 q5 q6 L0 L1 L2 L3 real
H = Tz(L0)*Ry(q1)*Rx(q2)*Rz(q3)*Ty(L1)*Rz(q4)*Ty(L2)*Rz(q5)*Rx(q6)*Ty(L3);
H = simplify(H)
R = simplify(H(1:3,1:3))