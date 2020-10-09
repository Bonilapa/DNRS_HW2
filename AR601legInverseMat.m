function M = AR601legInverseMat(H)
R = H(1:3,1:3);
d = H(1:3, 4);
eul = rotm2eul(R);
M = AR601legInverseVec(d(1), d(2), d(3), eul(3), eul(2), eul(1));