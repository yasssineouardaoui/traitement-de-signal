clear all 
close all
clc
%% 
% c est quoi fe ??
[x,fe]=audioread("bluewhale.au");
 start_index = 2.45e4;
 end_index = 3.10e4;



%% 
sub_signal = x(start_index:end_index);
% sound(sub_signal, fe);
%  plot(sub_signal );
%% 
te=1/fe;
N=length(sub_signal);
f=(0:N-1)*(fe/N);
%  Transformee de Fourrier 
sub_signalTf=fft(sub_signal);
%  plot(f,abs(sub_signalTf));
%% 

fshifft = (-N/2:(N/2)-1)*fe/N;
sub_signalshift=fftshift(sub_signalTf);
%   plot(fshifft,abs(sub_signalshift));
%% 

chant_resampled = resample(sub_signal,2^nextpow2(length(sub_signal)),length(sub_signal));

% Tracer la densité spectrale de puissance du signal
[psd,f] = pwelch(sub_signal,[],[],[],fe);
plot(f,10*log10(psd));
xlabel('Fréquence (Hz)');
ylabel('Densité Spectrale de Puissance (dB/Hz)');


%% 
% Déterminer la fréquence fondamentale
[~,index] = max(psd);
ff = f(index);
disp(['La fréquence fondamentale est de:', num2str(ff), 'Hz']);





