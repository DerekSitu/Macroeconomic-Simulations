% Stochastic simulation of a one-time unexpected shock%%

var c k A;
varexo e;
parameters beta alpha delta rho s sigma;

beta = 0.95;
delta = 0.012;
alpha = 0.4;
rho = 0;
sigma = 0.5;
s = 1;

model;
c^(-sigma) = beta * (c(+1)^(-sigma)) * ((1+A)*alpha*k^(alpha-1)+1-delta);
k= (1+A)*k(-1)^(alpha)-c+(1-delta)*k(-1);
A=rho*A(-1)+s*e;
end;

steady_state_model;
A = 0;
k = ((1/(alpha*(1+A))) * (1/beta - 1 + delta))^(1/(alpha-1));
c = (1+A) * k^(alpha) - delta*k;
end;

shocks;
var e;
stderr 1;
end;

steady;

stoch_simul(irf=40);