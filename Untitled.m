syms K;
T = [K;0;1];
P = [-1,-2,-2;0,-1,1;-1,0,-1];
W = [T,P*T,P^2*T];
k = double(solve(det(W)==0,K));