
filename=["collatz_" regexprep(datestr(clock()),'\s+','_') ".csv"];
fid=fopen(filename,"w");
fprintf(fid,"%s,%s,%s\n","startnum","iterations","sequence");
A=[];
for j = 1:9999
  i = j;
  while (i != 1)
    A = [A,i];
    if (rem (i,2) == 0)
      i = i/2;
    else
      i = (3*i+1);
    endif
  endwhile
  A = [A,i];
  fprintf (fid,"%d,%d,\"%s\"\n",j,length(A),regexprep(num2str(A),'\s+',','));
  A=[];
endfor
fclose(fid);