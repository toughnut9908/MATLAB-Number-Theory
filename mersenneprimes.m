% Find first 8 Mersenne numbers
%
% A Mersenne number is a number of the form ...
% M(n)= 2^n - 1 where n is an integer.
%
% A mersenne prime is a prime number of the form ...
% M(p) = 2^p -1 where p is a prime number.


clc ; clear ;
mersenne_primes = find_mersenne_primes() ;

function mersenne_primes = find_mersenne_primes()

    count = 0;
    n = 2;    
    mersenne_primes = []; 
    prime_nums = [] ;
    fprintf('%5s    %5s    %10s    %15s\n', 'Rank','Prime','Calculation', 'Mersenne Prime')
    while count < 8
        if isprime(n)
            prime_nums = [prime_nums,n] ;
            M_n = 2^n - 1; 
            if isprime(M_n)
                mersenne_primes = [mersenne_primes, M_n]; 
                count = count + 1;
                fprintf('%5d    %5d    2^%d - 1    %15d\n', count, n,n, M_n)
            end
        end
        n = n + 1; 
    end
    
end



