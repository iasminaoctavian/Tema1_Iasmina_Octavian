%Ex. 4: Redresare monoalternanta

T = 3; %Perioada in secunde
omega = 2*pi/T; %Pulsatia unghiulara
amplitudine = 0.8; %Amplitudinea semnalului in volti
perioade = 3; %Numarul de perioade care vor aparea in grafic 

t1 = -perioade*T:0.002:perioade*T; %rezolutie temporala 2ms
t2 = -perioade*T:0.02:perioade*T;  %rezolutie temporala 20ms
t3 = -perioade*T:0.2:perioade*T;   %rezolutie temporala 200ms

x1 = amplitudine*sin(omega*t1).*ones(1,length(t1)); %Se initializeaza cu valoarea semnalului initial o matrice cu o linie si numarul de coloane egal cu lungimea vectorului t
x1(mod(t1,T)>T/2)=0; %Pentru valorile lui t cuprinse in intervalele [T/2,T],[T+T/2,2T] etc, elementele matricei devin 0 pentru a se realiza monoalternanta
figure(1)
plot(t1,x1),title('Redresare monoalternanta (2ms)'),xlabel('t [s]'),ylabel('A [V]')

x2 = amplitudine*sin(omega*t2).*ones(1,length(t2));
x2(mod(t2,T)>T/2)=0;
figure(2)
plot(t2,x2),title('Redresare monoalternanta (20ms)'),xlabel('t [s]'),ylabel('A [V]')

x3 = amplitudine*sin(omega*t3).*ones(1,length(t3));
x3(mod(t3,T)>T/2)=0;
figure(3)
plot(t3,x3),title('Redresare monoalternanta (200ms)'),xlabel('t [s]'),ylabel('A [V]')