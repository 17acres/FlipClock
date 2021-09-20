%Dan Nichols 12/16/20
%Display Filter Properties
pkg load control;
pkg load tablicious;
pkg load signal;
clear;
close all;

%% INPUTS
alpha=0.05
b=[alpha];
a=[1 -(1-alpha)];
f_samp=10;

%% RESULTS

H=filt(b,a) %print transfer function

%print poles/zeros
Poles=pole(H);
Pole_Mag=abs(Poles);
Pole_Angle_rad=angle(Poles);
Pole_Angle_rad_pi=Pole_Angle_rad/pi;
pole_table=table(Poles,Pole_Mag,Pole_Angle_rad,Pole_Angle_rad_pi)

Zeros=zero(H);
Zero_Mag=abs(Zeros);
Zero_Angle_rad=angle(Zeros);
Zero_Angle_rad_pi=Zero_Angle_rad/pi;
zero_table=table(Zeros,Zero_Mag,Zero_Angle_rad,Zero_Angle_rad_pi)

freqz(b,a)
title('Frequency Response of Filter')

figure
zplane(b,a)
title('Poles and Zeros of Filter')

figure
grpdelay(b,a)
title('Group Delay of Filter')


%Print w-axis attenuation
[H_samp,w]=freqz(b,a);
attenuation=-mag2db(abs(H_samp));
figure
plot(w/pi,attenuation)
%ylim([0 60])
xlabel ('Digital Frequency (x \pi rad/sample)')
ylabel ('Attenuation (dB)')
title ('Attenuation of Filter')

%Print Hz-axis attenuation

if(exist('f_samp'))
    [H_samp,w]=freqz(b,a);
    
    attenuation=-mag2db(abs(H_samp));
    figure
    w_hz=w*f_samp/(2*pi);
    plot(w_hz,attenuation)
    %ylim([0 60])
    xlabel ('Frequency (Hz)')
    ylabel ('Attenuation (dB)')
    title ('Attenuation of Filter')
end

figure
%Graph Impulse Response
n=[0:20];
x_imp=n==0;
impresp=filter(b,a,x_imp);
stem(n,x_imp);
hold on
stem(n,impresp);
hold off
title('Filter Impulse Response')
xlabel('Sample Index, n')
ylabel('Amplitude')
legend('x(n)', 'y(n)')

figure
%Graph Step Response
x_step=n>=0;
stepresp=filter(b,a,x_step);
stem(n,x_step);
hold on
stem(n,stepresp);
hold off
title('Filter Step Response')
xlabel('Sample Index, n')
ylabel('Amplitude')
legend('x(n)', 'y(n)')

figure
%Graph Ramp Response
x_ramp=n;
x_ramp(n<0)=0;
rampresp=filter(b,a,x_ramp);
stem(n,x_ramp);
hold on
stem(n,rampresp);
hold off
title('Filter Ramp Response')
xlabel('Sample Index, n')
ylabel('Amplitude')
legend('x(n)', 'y(n)')

%Graph square wave Response
n=[0:100];
x_imp=(mod(n,10)<3)*5;
impresp=filter(b,a,x_imp);
stem(n,x_imp);
hold on
stem(n,impresp);
hold off
title('Filter Impulse Response')
xlabel('Sample Index, n')
ylabel('Amplitude')
legend('x(n)', 'y(n)')