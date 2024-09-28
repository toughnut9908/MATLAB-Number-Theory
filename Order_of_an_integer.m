%Find the Order of an integer a modulo m

% The congruence 
%                             a^x≡ 1 (mod m)     ----(1)  
% is solvable if and only if gcd(a,m) = 1. 


% The reason: by the Fermat-Euler theorem,
%                             a^φ(m)≡ 1 (mod m) if gcd(a,m) = 1 ------(2)
%                             
% That is, there is at least one solution of the congruence (1), x = φ(m) . 


% The order of an integer a modulo m is the smallest positive value of x which satisfies the congruence - 
%                             a^x≡ 1 (mod m) ; gcd(a,m)=1
% 
% Theorem:
% Let, [order of a modulo m] = d, and there is an integer h such that
%                             a^h≡ 1 (mod m) => d divides h.
%                Since (2), a^φ(m)≡ 1 (mod m) => d divides φ(m) 

clc ; clear ;

m=385 ; a= 2;
%m=9 ; a= 3;
phi_m = EulerTotient(m) ;
div_phi = find_divisors(phi_m) ;

if (gcd(a,m)==1)
    for x = div_phi
        if powermod(a,x,m)==1 % a^x≡ 1 (mod m
            order = x ;
            break;
        end
    end
    fprintf("The order of %d modulo %d is %d.\n",a,m,order);
else
    error('Error. \n For the congruence a^x ≡ 1 (mod m) to be solvable, a & m must be coprime. i.e gcd(a,m) = 1')
end

function phi = EulerTotient(num)
if (isprime(num))
   phi = num - 1;
else
    count = 0 ;
    for k=1:num
        if(gcd(k,num)==1)
            count = count +1 ;
        end
        phi = count ;
    end
    
end
end

function divisors = find_divisors(n) %find divisors of an integer
divisors=[];
for i=1:n
    if mod(n,i)==0
        divisors=[divisors,i];
    end
end
divisors;
end


