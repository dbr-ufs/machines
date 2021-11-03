%Fun��o para fazer a transformada de Fourier de um sinal
%Plota no dom�nio da Frequ�ncia
%20/09/2017
%[X, freq] = fftf(x,Fs)

function [X, freq] = fftf(x,Fs)

N=length(x); %Tamanho do Sinal
k=0:N-1;  %amostras
T=N/Fs;  %Transformando em tempo
freq=k/T; % achando a frequ�ncia
X=fftn(x);%/N; %normalizando a fun��o 
% X=fftn(x);
% X=X/max(X);
cutoff=ceil(N/2); %Frequ�ncia de corte 
X=X(1:cutoff); 

figure1=figure();
axes1 = axes('Parent',figure1);
%plot(freq(1:cutoff), abs(X));
stem(freq(1:cutoff), abs(X)/max(abs(X)));
title('Frequency spectrum');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
xlim(axes1,[0 125]);
% ylim(axes1,[0 3000]);
% freq(find(abs(X)>(max(abs(X))/40)))
% max(abs(X))

