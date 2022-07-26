clear all
clc
%% señal
Fs=200; %Frecuencia de muestreo
Ts=1/Fs; %Periodo de Muestreo
L=200; %muestras
%t=(0:L-1).*Ts; %vector tiempo
t = importdata('timep00.xlsx');
s = importdata('datap00.xlsx');
subplot(2,1,1),plot(t,s),title('señal')
Y=fft(s);
%plot(abs(Y))% gráfica de la señal s parte real
%plot(imag(Y))% espectro de la fase de la señal s 
%plot(fftshift(imag(Y)))%simetria de la transformada
%plot(fftshift(abs(Y)))%simetria par
%plot(fftshift(abs(Y/L)))%simetria par normailizada
%P1=(abs(Y(1:L/2)/L));
%plot(P1)
P1=2.*(abs(Y(1:L/2)/L));
%plot(P1)
f=Fs.*(0:(L/2)-1)./L; % vector de frecuencia
%plot(f,P1)
subplot(2,1,2),plot(f,P1),title('FFT')