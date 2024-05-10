%% NK MODEL%%

%---Define variables---

var x pi i u Ex Epi;
varexo epsilon;
parameters sigma beta kappa phipi phix rho;

%---Calibration---

sigma = 1; %
beta = 0.99; %
kappa = 0.505; % using kappa = (0.5 * (1 - 0.5*0.99))/ 0.5 
phipi = 1.5; % 
phix = 0.5; % 
rho = 0.65; %

%---Model---

model(linear);
x = Ex - 1/sigma * (i - Epi) + u; % demand shock
pi = beta*Epi + kappa*x; %
i = phipi*pi + phix*x; % flexible inflation targeting
u = rho*u(-1) + epsilon; %
Ex = x(+1); % rational expectations
Epi = pi(+1); %
end;


shocks;
var epsilon;
stderr 1;
end;

steady;
stoch_simul(irf=40);
