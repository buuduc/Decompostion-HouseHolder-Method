function [Q, R] = qrdecom(A)
%Phan tich QR
n = size(A, 1);
R = A;
Q = eye(n);
for k = 1:n-1
H = householder(R(:, k), k)
R = H*R; %Pt.(1)
Q = Q*H; %Pt.(3)72
end