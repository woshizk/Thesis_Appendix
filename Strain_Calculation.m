function y = f(x, L, ratio, t)
%STRAIN_CALCULATION Summary of this function goes here
%   Detailed explanation goes here
% L is total length of beam
% ratio is to calculate the effective bending length
% t is thickness of beam
lambda = x./L;
n = size(x, 2);

for i = 1:n
    l_R(i) = Elliptic_Calculation(1 - 0.5 * lambda(i));
end

R = ratio * L./l_R;

strain = t./(2 * R);

y = strain;
end

