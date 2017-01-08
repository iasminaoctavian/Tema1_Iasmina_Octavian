%Semnal dreptunghiular  multinivel aleator
clear all
rezolutie = 0.002; %(2 ms)
multinivel = [ -7 -5 -3 -1 1 3 5 7];
durata = 0.25; %durata unui nivel
nrtrepte = 10;
timp = 0:rezolutie:durata*nrtrepte;
i = 1;
k = 1;
nr = rand(1,nrtrepte);
x=zeros(1,length(timp));   

%normalizare la valorile 1 -> lungime multinivel pt a alege elemente din
%vector

nrnorm = round(1 + (length(multinivel)-1) * ( nr - min(nr))/( max(nr) - min(nr) ));

for i=1:length(timp)
        if(timp(i) <= k*durata)
            x(i) = multinivel(nrnorm(k));
        else
            if(k == nrtrepte)
                break;
            else
            k = k + 1;
            x(i) = multinivel(nrnorm(k));
            end
        end
end

plot(timp, x);


