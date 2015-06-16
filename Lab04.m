%Lab04.m
clear;clc;
syms a r s;
assume(a>0);
assume(r>=0);
theta = 0:0.001:2*pi;

figure('name','Three-leaf Rose Curve');
rho = 3 * sin(3*theta);
polar(theta,rho);
S1 = 3 * int(int(r,r,0,a*sin(3*s)),s,0,pi/3);
disp('the area of three-leaf rose curve:');disp(S1);

figure('name','Four-leaf Rose Curve');
rho = 4 * cos(2*theta);
polar(theta,rho);
S2 = 4 * int(int(r,r,0,a*cos(2*s)),s,-pi/4,pi/4);
disp('the area of four-leaf rose curve:');disp(S2);

figure('name','Six-leaf Rose Curve');
rho = 2 * cos(3*theta).^2;
polar(theta,rho);
S3 = 6 * int(int(r,r,0,a*cos(3*s)^2),s,-pi/6,pi/6);
disp('the area of six-leaf rose curve:');disp(S3);

figure('name','Lemniscate');
rho = 2 * sqrt(cos(2*theta));
polar(theta,rho);
S4 = 2 * int(int(r,r,0,a*sqrt(cos(2*s))),s,-pi/4,pi/4);
disp('the area of lemniscate:');disp(S4);

figure('name','Descartes Folium');
x = @(t) 6*t./(1+t.^3);
y = @(t) 6*t.^2./(1+t.^3);
t = 0:0.001:50;
plot(x(t),y(t));
S5 = vpa(int(abs(3*a*r^2/(1+r^3)*diff(3*a*r/(1+r^3),r)),r,...
    (1/2)^(1/3),inf)-int(abs(3*a*r^2/(1+r^3)*diff(3*a*r/(1+r^3),...
    r)),r,0,(1/2)^(1/3)));
disp('the area of descartes folium:');disp(S5);