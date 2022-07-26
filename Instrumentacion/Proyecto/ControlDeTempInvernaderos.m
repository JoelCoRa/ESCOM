%**************************************************************************
%DISEÑO DEL CONTROL del Control de Temperatura en Invernaderos (Proyecto)
%**************************************************************************
close all;
clear all;
s=tf('s');

%Gv= (3.6)/(s^3+6*s^2+5*s);
% Kp=0.0028;
% Ki=5.184;
% Kd=0.835;
% Nd=0.183

% FT para el rechazo de las perturbaciones
%DelS=((s^2+0.002554*s)/s^2+0.005108*s+0.000006533);

% FT del Controlador QFT
%Gq=(0.0014*s^3 + 0.0014*s^2 + 0.018*s + 0.000098) / s*(0.0000000019*s^2 +0.0000000*s+1);

% FTs del Controlador PID
%Gp1= (0.086386*(s^2+0.0039*s+0.00006))/ (s^2+0.1*s);
%Gp2=Kp+(Ki*(1/s))+Kd*(Nd/1+Nd*(1/s));

L=0.0022;
C=0.00000022;
R=26000;


Gexa=((s*2)*C*L + s*C)/(s*C*R + (s*2)*C*L + 1);

Gp=(1.2)/((0.3*s+3)*(s+1)*(1.2*s+1));

%Gs=(25*s+5)/(s^3+5*s^2+25*s+5); 




sisotool
