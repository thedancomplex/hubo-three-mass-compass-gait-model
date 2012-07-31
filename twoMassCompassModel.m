close all
clear all

a       = 0.5;          % Lower leg segment (meters)
b       = 0.5;          % Upper leg segment (meters)
m       = 5.0;          % Mass of leg (kg)
m_h     = 5.0;          % Mass of body (kg)  
g       = 9.8;          % Gravity (m/s^2)

l       = a+b;          % Combined leg length


q = [   theta1 ;
        theta2 ];

u = [   u_h ;
        0   ];

M = [   m*b^2                       -m*b*l*cos(theta1 - theta2) ;
        -m*b*l*cos(theta1-theta2)   m*a^2 + m_h*l^2 + m*l^2     ];

C = [   0                                               m*b*l*sin(theta1 - theta2) * theta1_dot ;
        -m*b*l*sin(theta1 - theta2) * theta2_dot        0                                       ];
    
G = [   m*g*b*sin(theta2)                                        ;
        -m*g*a*sin(theta1)-m_h*g*l*sin(theta1)-m*g*l*sin(theta1) ];
    
B = [   1   1;
        0   -1];