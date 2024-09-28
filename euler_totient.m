% Euler’s Totient function ϕ(n) counts the number of positive integers 
% up to a given integer, n ,that are relatively prime to n.  
% 
%        ϕ(n)=Number of integers k such that 1≤k≤n and gcd(n,k)=1


clc;clear;
num= 6615;
phi = EulerTotient(num) ;
fprintf("The Euler's Totient φ(%d) = %d .\n",num,phi)

function phi = EulerTotient(num)
if (isprime(num))
   phi = num - 1;  % ϕ(p) = p-1 since gcd(p,k) =1 for all 1≤k<p
else
    count = 0 ;
    for k=1:num
        if(gcd(k,num)==1)       % coprime => gcd = 1
            count = count +1 ;
        end
    end
    phi = count ;
    
end
end
   
    