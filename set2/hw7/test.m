%% for loop test
max = 10;
for k = max:-1:1
    fprintf('k: %d\n', k);
end

%% limit test for palin_product problem
lim = 100;
dig = 2;
for kk = 50:100
    fprintf('kk: %d\tsqrt(kk): %d\n',kk,floor(sqrt(kk)));
end

%% test substring for palin_product problem
s='12382321';
l=length(s);
k=floor(l/2);
s1=s(1:k);
s2=fliplr(s(l-(k-1):l));
ck=strncmp(s1,s2,k);

%% test min and max range for palin_product problem
% what is dmin and dmax for dig digit numbers?
dig = 4;
dmin=10^(dig-1);
dmax=10^dig-1;

%% test my thoughts on min and max
dig = 2;
lim = 8448;
dmin=10^(dig-1);
dmax=10^dig-1;
n = 0;
for d1 = dmax:-1:dmin
    for d2 = dmax:-1:dmin
        p = d1*d2;
        if (p < lim)
            ns = num2str(p);
            l = length(ns);
            k = floor(l/2);
            ns1 = ns(1:k);
            ns2 = fliplr(ns(l-(k-1):l));
            if strncmp(ns1,ns2,k)
                if (p > n), n = p; end;
                fprintf('ns: %s\tns1: %s\tns2: %s\td1: %d\td2: %d\n',ns,ns1,ns2,d1,d2);
            end
        end
    end
end
%% experimenting with struct
mystruct = struct('c','C','yr',[1:100],'c','CC','yr',[101:200]);
mystruct(1)



%%




