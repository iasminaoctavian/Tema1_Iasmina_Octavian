%Ex. 1: Semnal dreptunghiular periodic

T = 2; %Perioada semnalului in secunde
perioade = 3; %Numarul de perioade care vor aparea in grafic

t1 = -perioade*T:0.002:perioade*T; %rezolutie temporala 2ms
t2 = -perioade*T:0.02:perioade*T;  %rezolutie temporala 20ms
t3 = -perioade*T:0.2:perioade*T;   %rezolutie temporala 200ms

x1 = -1*ones(1,length(t1)); %initializam cu valoarea -1 o matrice cu o linie si numarul de coloane egal cu lungimea vectorului t
x1(mod(t1,T)<T/4) = 0.5;    %pentru valorile lui t care apartin intervalelor [0,T/4],[T,T+T/4].. etc (depinde de duty cylce) x ia valoarea 0.5
figure(1)
plot(t1,x1), title('Semnal dreptunghiular (2ms)'), xlabel('t [s]'), ylabel('A [V]')

x2 = -1*ones(1,length(t2));
x2(mod(t2,T)<T/4) = 0.5;
figure(2)
plot(t2,x2), title('Semnal dreptunghiular (20ms)'), xlabel('t [s]'), ylabel('A [V]')

x3 = -1*ones(1,length(t3));
x3(mod(t3,T)<T/4) = 0.5;
figure(3)
plot(t3,x3), title('Semnal dreptunghiular (200ms)'), xlabel('t [s]'), ylabel('A [V]')