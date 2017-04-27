a = 7;
b = 100;
ab = a+b;

for i = 100:110
  printf("i (%d) mod a (%d), b (%d), and ab (%d): %d, %d, %d\n", i, a, b, ab, mod(i,a), mod(i,b), mod(i,ab));
endfor

