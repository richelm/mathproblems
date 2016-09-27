% Intro to Programming with MATLAB
% Homework 6, Problem 1
% 2016.08.24
%
%
function w = move_me(v,a)
   if (nargin == 1), a = 0; end;
   
   w = v(v ~= a);
   w = [w v(v == a)];

end