% Intro to Programming with MATLAB
% Homework 8, Problem 7
% 2016.09.21

function [ ncp ] = circular_primes( n )
    k = 2;
    ncp = 0;
    %primes = [];
    while (k < n)
        ks = num2str(k);
        kcp = not_prime(ks);
        if (kcp && k > 20) % has rotation divisible by 2 or 5?
        else
            kcp = true;
            kl = length(ks);
            for j = 1:kl
                kr = str2double(ks);
                if (length(factor(kr)) > 1)
                    kcp = false;
                    break;
                end
                ks = circshift(ks,1);
            end
            if (kcp)
                ncp = ncp + 1;
                %primes = [primes k];
            end
        end
        k = k + 1;
    end            
end

% check if a circular rotation is not prime
function [ np ] = not_prime( s )
   l = length(s);
   np = false;
   for i = 1:l
       if ~isempty(strfind('024568',s(i)))
           np = true;
           break
       end
   end
end