function H = householder(x, k)
% Tao ma tran Householder
n = length(x)
tmp = sum(x(k+1:n).^2)
g = sqrt(x(k)^2 + tmp)
c = sqrt((x(k) + g)^2 + tmp)
u = zeros(n, 1)
u(k) = (x(k) + g)/c
u(k + 1:n) = x(k + 1:n)/c
H = eye(n)-2*u*u' %ma tran Householder