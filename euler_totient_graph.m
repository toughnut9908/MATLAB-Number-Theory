%Plot The first thousand values of φ(n)

clc ; clear ;
for n=1:1000
    phi = EulerTotient(n);
    plot(n,phi,'b.')
    hold on 
end
xlabel("n")
ylabel("φ(n)")
title("The first thousand values of φ(n)")

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