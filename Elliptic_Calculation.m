function y = ellipic(k)

syms x 
eqn = ellipticE(x)./ellipticK(x) == k;
solx = solve(eqn, x);

y = 4 .* solx .* ellipticK(solx)


end
