% Intro to Programming with MATLAB
% Homework 6, Problem 8
% 2016.08.29
%
%    theta = angle [radian]
%    omega = angular velocity [radians/s]
%    alpha = angular acceleration [radians/s2]
%        g = acceleration due to gravity = 9.8 [m/s2]
%        t = time [s]
%  delta_t = 1x10^-6

function T = pendulum(L,a0)
    theta = a0;
    theta_old = theta;
    delta_t = 1e-6;
    elapsed_t = 0;
    omega = 0;
    
    if (L == 0)
        T = 0;
    else
        while (theta > 0)
            alpha = (-9.8*sin(theta))/L;
            omega = omega + (alpha * delta_t);
            theta = theta_old + (omega * delta_t);
            elapsed_t = elapsed_t + delta_t;
            theta_old = theta;
        end
        T = 4*elapsed_t;
    end
    
end