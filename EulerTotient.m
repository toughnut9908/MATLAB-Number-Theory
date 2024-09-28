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