% test indexing a matrix for the maxproduct problem
%
%     c1  c2  c3
%    +---+---+---+        +---+---+---+
% r1 | 1 | 4 | 7 |        |1,1|1,2|1,3|
%    +---+---+---+        +---+---+---+
% r2 | 2 | 5 | 8 |        |2,1|2,2|2,3|
%    +---+---+---+        +---+---+---+
% r3 | 3 | 6 | 9 |        |3,1|3,2|3,3|
%    +---+---+---+        +---+---+---+
%      linear               subscript
%
% create a matrix
A = magic(4);

% get number rows and columns
[nr,nc] = size(A);

% set n
n=3;

A

% get the linear indexes for rows, cols, diags, and r-diags

% get rows
% for rows go down the first column
fprintf('Linear indexes for the rows\n');
for j=1:nr
  ind = [j:nr:nr*nc];
  fprintf('[');
  fprintf('%d ',ind);
  fprintf(']\n');
end

% get columns
% for columns go across the first row
fprintf('\nLinear indexes for the columns\n');
for j=1:nr:nr*(nc-1)+1
  ind = [j:1:j+(nr-1)];
  fprintf('[');
  fprintf('%d ',ind);
  fprintf(']\n');
end

% get diagonals
% for diagonals go over first row and first column starting
fprintf('\nLinear indexes for the diagonals\n');
for j=1:nr:nr*(nc-1)+1
  ind = [j:nr+1:nr*nc];
  fprintf('[');
  fprintf('%d ',ind);
  fprintf(']\n');  
end
% this is incorrect! fix it!
for j=2:nr
  ind = [j:nr+1:nr*nc-(nc-2)*nc];
  fprintf('[');
  fprintf('%d ',ind);
  fprintf(']\n');  
end
