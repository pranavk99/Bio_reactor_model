% Solve ODE for bio reactor

% Time def
range = [0:300];
IC = [1000, 0.9, 12.5, 30, 3.1, 25, 27];
% Solving the eqns
[tsol, varsol] = ode45(@Bioreactor_modelnew, range, IC); 

figure
plot(tsol, varsol(:,7))
title('')%Enter the Title
xlabel('Time') 
ylabel('Tag')