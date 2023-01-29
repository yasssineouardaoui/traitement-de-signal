clear all
close all
clc
% Charger le signal sonore
[x,fs] = audioread("C:\Users\zaina\Desktop\MyFile\S'5\Traitement de signal\tp4\test.wav");

% D�finir les param�tres du filtre
fc = 3000; % fr�quence de coupure (Hz)
n = 4; % ordre du filtre
sound(x)
% Cr�er le filtre
[b,a] = butter(n,fc/(fs/2),'low');

% Appliquer le filtre au signal
y = filter(b,a,x);

% Enregistrer le signal filtr�
audiowrite('signal_filtre.wav',y,fs);
