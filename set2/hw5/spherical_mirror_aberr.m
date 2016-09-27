% Intro to Programming with MATLAB
% Homework 5, Problem 8
% 2016.08.20
%
%
function  mbd = spherical_mirror_aberr(fn,D)
    delta_x = 0.01;
    f = fn*D;
    x = (0:delta_x:D/2);
    x2f = x / (2*f);
    theatas = asin(x2f);
    t = ((2*f).*tan(2*theatas));
    c = (1./cos(theatas) -1);
    d = t .* c;
    mbd = ((8*delta_x) / (D*D)) * sum(x.*d);
end