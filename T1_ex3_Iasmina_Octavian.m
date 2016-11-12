%Semnal dreptunghiular  multinivel aleator

T=0.25;             %perioada semnal
perioade=3;         %numarul de perioade
t=-perioade*T:0.02:perioade*T;        %vector timp

y=rand(1,length(t));  %vectorul ce contine valori aleatoare intre 0 si 1

for i=1:length(t)
if y(i)<0.5         %pentru a obtine multimea {-1, 1} punem conditia ca numerele aleatoare din vector mai mici decat 0.5 sa fie -1 si restul 1
    y(i)=-1;
else
    y(i)=1;
end
end
figure(1)
plot(t,y), title('Nivel {-1,1}'), xlabel('t [s]'), ylabel('A [V]')

%procedam in mod similar pentru celelalte subpuncte
y2=rand(1,length(t));

for i=1:length(t)
    if y2(i)<0.25
        y2(i)=-3;
    elseif y2(i)>0.25 && y2(i)<0.5
        y2(i)=-1;
    elseif y2(i)>0.5 && y2(i)<0.75
        y2(i)=1;
    else 
        y2(i)=-3;
    end
end
figure(2)
plot(t,y2), title('Nivel {-3,-1,1,3}'), xlabel('t [s]'), ylabel('A [V]')

y3=rand(1,length(t));

for i=1:length(t)
    if y3(i)<0.16
        y3(i)=-5;
    elseif y3(i)<0.32 && y3(i)>0.16
        y3(i)=-3;
    elseif y3(i)>0.32 && y3(i)<0.48
        y3(i)=-1;
    elseif y3(i)>0.48 && y3(i)<0.64
        y3(i)=1;
    elseif y3(i)>0.64 && y3(i)<0.8
        y3(i)=3;
    else
        y3(i)=5;
    end
end
figure(3)
plot(t,y3), title('Nivel {-5,-3-1,1,3,5}'), xlabel('t [s]'), ylabel('A [V]')

y4=rand(1,length(t))

for i=1:length(t)
    if y4(i)<0.125
        y4(i)=-7;
    elseif y4(i)<0.25 && y4(i)>0.125
        y4(i)=-5;
    elseif y4(i)>0.25 && y4(i)<0.375
        y4(i)=-3;
    elseif y4(i)>0.375 && y4(i)<0.5
        y4(i)=-1;
    elseif y4(i)>0.5 && y4(i)<0.625
        y4(i)=1;
    elseif y4(i)>0.625  && y4(i)<0.75
        y4(i)=3;
    elseif y4(i)>0.75 && y4(i)<875
        y4(i)=5;
    else
        y4(i)=7;
    end
end

figure(4)
plot(t,y4), title('Nivel {-7,-5,-3-1,1,3,5,7}'), xlabel('t [s]'), ylabel('A [V]')


