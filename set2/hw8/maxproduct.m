function [ m ] = maxproduct( A, n )
    [nr,nc] = size(A);
    
    m = zeros(n,2);
    mp = 0;
    % just rows
    for r = 1:nr
        for c = 1:nc-(n-1)
           p = prod(A(r,c:c+n-1));
           if p > mp
               mp = p;
               for j = 1:n
                   m(j,1) = r;
                   m(j,2) = c+j-1;
               end
           end
        end
    end

end