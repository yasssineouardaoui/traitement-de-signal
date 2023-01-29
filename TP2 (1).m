clear all
close all
clc

fe = 1e4;
te = 1/fe;
N = 5000; 
% chaque Echantillion pour un te 
t = (0:N-1)*te; 
x = 1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t)+0.6*cos(2*pi*2500*t);
x2 = 1.2*cos(2*pi*440*t+1.2)+3*cos(2*pi*550*t);

% plot(t,x,'.');
% 
 f =(0:N-1)*(fe/N); 
 y = fft(x); 
%  plot(f,abs(y));
% 
 fshift = (-N/2:N/2-1)*(fe/N);
%  plot(fshift,fftshift(abs(y))

 
 % Conception du filtre
 
 pass_bas = zeros(size(x)); 
 fc = 2000; %hz
 index_fc = ceil((fc*N)/fe)
 pass_bas(1:index_fc)= 1;
 pass_bas(N-index_fc+1:N) = 1; 
 plot(f,pass_bas,"linewidth",1.5)
%  
%  % Filtrage
%  
   x_filtree_freq = pass_bas.*y; 
   x_filtree_temp = ifft(x_filtree_freq,"symmetric"); 
  
%   plot(t, x2-x_filtree_temp)
%  plot(fshift, fftshift(abs(fft(x_filtree_temp))));