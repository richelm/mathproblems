% Intro to Programming with MATLAB
% Homework 7, Problem 1
%
% Created: 2016-09-07

function ic = integerize (A)
  minval = min(min(A));
  maxval = max(max(A));
  
  if ((minval >= intmin('int8') && minval <= intmax('int8')) ...
      && (maxval >= intmin('int8') && maxval <= intmax('int8')))
      ic = 'int8';
      
  elseif ((minval >= intmin('int16') && minval <= intmax('int16')) ...
      && (maxval >= intmin('int16') && maxval <= intmax('int16')))
      ic = 'int16';

  elseif ((minval >= intmin('int32') && minval <= intmax('int32')) ...
      && (maxval >= intmin('int32') && maxval <= intmax('int32')))
      ic = 'int32';
      
  elseif ((minval >= intmin('int64') && minval <= intmax('int64')) ...
      && (maxval >= intmin('int64') && maxval <= intmax('int64')))
      ic = 'int64';
      
  else
      ic = 'NONE';
  end
end
