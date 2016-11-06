%Ex. 5: Redresare dubla alternanta

T = 4; %Perioada semnalului in secunde
omega = 2*pi/T; %Pulsatia semnalului
amplitudine = 1.5; %Amplitudinea semnalului in volti
perioade = 3; %Numarul de perioade care apar in grafic

t1 = -perioade*T:0.002:perioade*T; %rezolutie temporala 2ms
t2 = -perioade*T:0.02:perioade*T;  %rezolutie temporala 20ms
t3 = -perioade*T:0.2:perioade*T;   %rezolutie temporala 200ms

x1 = amplitudine*abs(sin(omega*t1)).*ones(1,length(t1)); %Se initializeaza cu modulul valori semnalului initial o matrice cu o linie si numarul de coloane egal cu lungimea vectorului t
figure(1)
plot(t1,x1),title('Redresare dubla alternanta (2ms)'),xlabel('t [s]'),ylabel('A [V]')

x2 = amplitudine*abs(sin(omega*t2)).*ones(1,length(t2));
figure(2)
plot(t2,x2),title('Redresare dubla alternanta (20ms)'),xlabel('t [s]'),ylabel('A [V]')

x3 = amplitudine*abs(sin(omega*t3)).*ones(1,length(t3));
figure(3)
plot(t3,x3),title('Redresare dubla alternanta (200ms)'),xlabel('t [s]'),ylabel('A [V]')