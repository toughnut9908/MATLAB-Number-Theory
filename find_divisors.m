
function divisors = find_divisors(n) %find divisors of an integer
divisors=[];
for i=1:n
    if mod(n,i)==0
        divisors=[divisors,i];
    end
end
divisors;
end