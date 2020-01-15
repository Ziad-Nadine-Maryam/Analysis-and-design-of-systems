clc
clear
close all
gc=tf([1 0.01],[1 0.000526]);
g=tf([7937],[1 127 7937]);
gf=g*gc*5;
system=feedback(gf,1);
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