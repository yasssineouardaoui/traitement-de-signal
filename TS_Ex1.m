clear all 
close all
clc
[x,fe]=audioread("Audioo.mp4");
te=1/fe;

N = length(x); 
te = 1/fe; 
t = (0:N-1)*(10*te); 
f = (0:N-1)*(fe/N);
%%
% sound(x,fe)
%
% plot(x)
%% Augmenter la frequence  
Nf=fe*4;

%  sound(x,Nf)

 %% Diminuer la frequence 
 Nf2=fe*0.5;
%  sound(x,Nf2)

%% Transformee de Fourrie
fftX=fft(x);
%  plot(f,abs(x));
%%

% Question5
start_time = 1; % start time (in seconds) of the section you want to play
end_time = 3.5; % end time (in seconds) of the section you want to play
start_sample = start_time * fe; % convert start time to samples
end_sample = end_time * fe; % convert end time to samples
 riennesertde = x(start_sample:end_sample); % select the section of the audio
% sound( riennesertde, fe); % play the section

 %%
% Question5
% Mot Courrir
start_time2 = 3.5; % start time (in seconds) of the section you want to play
end_time2 = 4.5; % end time (in seconds) of the section you want to play
start_sample2 = start_time2 * fe; % convert start time to samples
end_sample2 = end_time2 * fe; % convert end time to samples
courir = x(start_sample2:end_sample2); % select the section of the audio
sound( courir, fe); % play the section



 



