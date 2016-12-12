function [x] = semDrept( timp, pas, D, P, nrP)
%functia de construire a semnalului dreptunghiular cerut

x = zeros(1, length(timp)); %initializam elementele matricei cu 0

x(mod(timp,P)<=D) = 1;  %elementele ce indeplinesc conditia primesc valoarea 1 pentru a se pastra factorul de umplere 
end