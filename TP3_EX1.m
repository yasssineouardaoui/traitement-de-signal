clear all 
close all 
clc
%% 
te = 1e-4 ;

fe = 1/te ;
t = 0:te:5-te ;
N = length(t);
f = (0:N-1)*(fe/N);
fshift = (-N/2:(N/2)-1)*fe/N;
K=1;
wc=50;
w = 2*pi*f ; 
%% 
% le Signal dans le Domaine Temporel

signal= sin(2*pi*500*t)+ sin(2*pi*400*t)+ sin(2*pi* 50*t) ;
% plot(t,signal);
%%
% le Signal dans le Domaine frequenciel  
TF_signal=fft(signal);
% plot(f,abs(TF_signal));
%%
%  avec Wc=50;

  H = (K*1j*w/wc) ./ (1 + 1j*w/wc);
%   plot(abs(H),'red');
  %%
% % % % % % % % Avec Trois frequences Defferents 
 wc1=50;
 wc3=150;
 wc2=100;
    H1= (K*1j*w/wc1) ./ (1 + 1j*w/wc1);
    H2= (K*1j*w/wc2) ./ (1 + 1j*w/wc2);
   H3 = (K*1j*w/wc3) ./ (1 + 1j*w/wc3);
%      subplot(3,1,1);
%     plot(abs(H1),'red');
%       subplot(3,1,2);
%     plot(abs(H2),'blue');
%      subplot(3,1,3);
%      plot(abs(H3),'red');

%%
  H11=20*log(abs(H1));
   H22=20*log(abs(H2));
    H33=20*log(abs(H3));
%   subplot(3,1,1);
%     plot(abs(H11),'red');
%       subplot(3,1,2);
%     plot(abs(H22),'blue');
%      subplot(3,1,3);
%      plot(abs(H33),'red');

%%




 