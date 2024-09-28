% Find Primitive roots modulo m.

% The order of an integer a modulo m is the smallest positive value of x which satisfies the congruence - 
%                             a^x≡ 1 (mod m) ; gcd(a,m)=1 ; a,m ∈ Z, m > 0

% An integer a is called the primitive root modulo m if 
%                            ord(a) mod m = φ(m) ; gcd(a,m) = 1

% To find all the primitive roots modulo m, we need to determine the order of 
% all integers less than m that are coprime to m. 
%                            Zm* = {a ∈ Z | 1≤a<m & gcd(a,m) =1 } 
%                       
% The set of integers less than m that are coprime to m is called 
% the multiplicative group of integers modulo m, Zm* .
% 
% Primitive roots modulo m exist within this group Zm*.
% 
% If the order of any integer in this group Zm*, equals φ(m),that integer is a primitive root of m.


clc ; clear ;
m = 19 ;
phi_m = EulerTotient(m) ;
primitive_roots = [] ;

for a = linspace(1,m-1,m-1) 
    %Check if gcd(a, m) = 1 during the for-loop iteration rather than within the function
    if ( gcd(a,m)==1 )
        ord = find_order(a,m) ;
    
        if (ord == phi_m)
         primitive_roots = [primitive_roots,a] ;
        end
    end
end

if(~isempty(primitive_roots))
    fprintf("The primitive roots of %d:\n\n",m)
    disp(primitive_roots')
else
    fprintf("There is no primitive root of %d.\n\n",m)
end

function order = find_order(a,m)

phi_m = EulerTotient(m) ;
div_phi = find_divisors(phi_m) ;

% gcd(a,m)=1 isn't checked inside the function.
for x = div_phi
    if powermod(a,x,m)==1 
        order = x ;
        break;
    end
end

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

