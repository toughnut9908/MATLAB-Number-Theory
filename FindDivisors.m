% Find divisors of a positive integer
clc; clear;
n= fix(input("Enter an integer : ")) ;
fprintf("Divisors of %d :\n",n) 
find_divisors(n)

function divisors = find_divisors(n) %find divisors of an integer
divisors=[];
for i=1:n
    if mod(n,i)==0
        divisors=[divisors,i];
    end
end
divisors;
end



