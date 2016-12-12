%definire variabile
P = 40;                     %perioada 
frec = 1/P;                 %frecventa
omega = 2*pi*frec;          %frecventa unghiulara(pulsatie)
D = 15;                     %durata
nrP = 3;                    %numar de perioade
pas = 1000;                 %pas pentru rezolutia temporala
timp = 0:P/pas:P*nrP;       %vector cu valori pentru exprimarea timpului

nrArm = 50;                 %numar de coeficienti
C = zeros(1, 2*nrArm+1);    %initializare matrice coeficienti

xReconst = zeros(1, length(timp));   %initiale matrice semnal reconstruit

%calcul coeficienti + reconstruire semnal
for k = -nrArm:nrArm
    C(k+nrArm+1) = (1/P)*integral(@(timp)semDrept(timp, pas, D, P, nrP).*exp(-1j*k*omega*timp), 0, P);
    re = real(C(k+nrArm+1));
    im = imag(C(k+nrArm+1));
    C(k+nrArm+1) = re + 1j*im;
end

%spectrul de amplitudini
figure(1)
stem((-nrArm:nrArm)*omega, abs(C))
xlabel('Frecventa unghiulara [rad/s]')
ylabel('Amplitudine [V]')
title('Spectrul de Amplitudini')

%reconstruire semnal cu 50 de coeficienti
for i = 1:length(timp)
    for k = -nrArm:nrArm
        xReconst(i) = xReconst(i) + C(k+nrArm+1)*exp(1j*k*omega*timp(i));
    end
end

%comparatie semnal initial vs semnal reconstruit cu 50 de coeficienti
x = semDrept(timp, pas, D, P, nrP);

%grafic semnal initial suprapus cu semnalul reconstruit
figure(2)
plot(timp, xReconst) %grafic semnal reconstruit
title('Semnal initial vs semnal reconstruit')
hold on
plot(timp, x) %grafic semnal initial
hold off