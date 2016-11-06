%Ex. 2: Semnal triunghiular

T = 5;  %Perioada semnalului
perioade = 3;   %Numarul de perioade care vor fi afisate in grafic
t = 0:perioade*T; %Vectorul care contine elementele pentru timp

x = zeros(1,length(t)); %Initializam o matrice cu elementele zero cu o linie si numarul de coloane egal cu lungimea vectorului t

%In urma calculelor s-au obtinut urmatoarele valori ale functiei:
x(mod(t,T)==0)=0; 
x(mod(t,T)==T/5)=1; 
x(mod(t,T)==2*T/5)=-1/2;
x(mod(t,T)==3*T/5)=-2;
x(mod(t,T)==4*T/5)=-1;

plot(t,x), title('Semnal dreptunghiular periodic'), xlabel('t [s]'), ylabel('A [V]')