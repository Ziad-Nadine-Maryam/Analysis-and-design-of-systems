clc
clear
close all
system=tf([7937],[1 127 7937]);
t=0:0.0001:1;
step(system,t)
figure()
impulse(system,t)
figure()
ramp=t
parab=1/2.*(t.^2)
lsim(system,ramp,t)
figure()
lsim(system,parab,t)
figure()
rlocus(system)
figure()
bode(system)
system2=tf([7937],[1 127 15874]);
figure()
step(system2,t)
figure();
impulse(system2,t)
figure()
ramp=t
parab=1/2.*(t.^2)
lsim(system2,ramp,t)
figure()
lsim(system2,parab,t)

