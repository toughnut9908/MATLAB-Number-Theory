%Find first 8 even perfect number.
%
%A perfect number is a positive integer that is equal to ...
%the sum of its proper divisors (all divisors excluding the number itself).
%
%The Euclid-Euler theorem states that an even number is perfect if and only if 
%it has the form [ 2^(p-1) * (2^p - 1) ], where (2^p - 1) is a Mersenne prime for any prime p.

clc ; clear ;
count = 1 ;
n= 1 ;
fprintf("First 8 even perfect numbers :\n")
%fprintf('%5s    %5s    %15s    %20s\n', 'Rank', 'Prime', 'Mersenne Prime', 'Perfect Number')

while count <= 8
    
    if(isprime(n))
        M_n = 2^n - 1 ;
        
        if(isprime(M_n))
            perfect_num = (2^(n-1)) * M_n ;
            fprintf("    %d\n",perfect_num)
            %fprintf('%5d    %5d    %15d    %20d\n', count, n, M_n, perfect_num)
            count = count + 1 ;
        end
    end
    
    n = n + 1 ;
end
            