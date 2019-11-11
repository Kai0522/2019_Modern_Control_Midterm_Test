%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Try to replace the ?????? by appropriate value.
%%% Design a phase lead controller to guarantee 
%%% the system with PM larger than 45¢X and Bandwidth become wider than 10^5 Hz.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;clear; close all;

%% Parameter table
Vi=12;
Vo=36;
R=??????;
fs=100*10^3;
T=1/fs;
D=0.5;
D_p=1-D;
Lo=??????;
Li=??????;
Co=??????;
Cb=??????;
Cm=??????;


%% Electrical circuit simulation result.
Vcb=Vo-Vi;
Vco=Vo;
I_Li=3;
I_Lo=1;

%% Parameter of transfer function
Alpha=(Cm*(10^6)-Cb*(10^6))/(2*Cm*(10^6)*Cb*(10^6));
Beta=T/(Cm*(10^6)*2);

a4=Li*Lo*Cb*Co;
a3=Li*Lo*Cb/R  +Beta*Lo*Cb*Co*(D_p^3)  -Alpha*Li*Cb*Co*(D_p^2);
a2=??????;
a1=Lo/R*(D_p^2) +Li/R*(1+D_p)^2 +Beta*Co*(D_p^4)*(1+D_p)+Alpha*Co*(D_p^5) +Beta*Cb*(D_p^3);
a0=Beta*(D_p^4)*(1+D_p)/R  +Alpha*(D_p^5)/R+(D_p^2);
b2 = (Vcb +2*Alpha*D_p*I_Lo +2*Beta*D_p*I_Li ) *Li*Cb;
b1 = Vcb*Cb*Beta*(D_p^3-D_p^2)  -(Alpha*I_Lo +Beta*I_Li)*Beta*Cb*D_p^4+(I_Li -I_Lo)*(1+D_p)*Li;
b0 = (I_Li -I_Lo)*Beta*D_p^4 -Vcb*D_p -Alpha*D_p^3*I_Lo -Beta*D_p^3*I_Li-3*Alpha*D_p^4*I_Lo -3*Beta*D_p^4*I_Li;

%% Plot the Bode plot and try to design phase lead compensator
%%% Notice:Please plot the (1) bode plot of the compensator, (2) system bode plot,
%%% and (3) the system bode plot after compensated.
......

