clc
clear
close all
%gc=tf([0.00126 0.1447 20],[1 0]);
gc=tf([0 0.1447 50],[1 0]);

g=tf([7937],[1 127 7937]);
gf=gc*g;
system=feedback(g*gc,1,-1);
t=0:0.0001:1;
step(system,t);
figure();
impulse(system,t);
figure();
ramp=t;
parab=1/2.*(t.^2);
lsim(system,ramp,t);
figure();
lsim(system,parab,t);
figure();
rlocus(gf);
figure();
bode(gf);