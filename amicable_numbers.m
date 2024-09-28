% Find First 10 Amicable Numbers
% Amicable numbers are two distinct positive integers ...
% where each number is the sum of the proper divisors of the other.
% divisors of 6 are 1,2,3,6
% proper divisors of 6 are 1,2,3
% The sum of proper divisors of 6 is 6
%
clc;clear;
fprintf(" First 10 Amicable Numbers : \n\n")

count = 1;
for  num= 2:100000
    s = sumPDiv(num) ;
    
    if s > num
        s1 = sumPDiv(s) ;
        
        if s1 == num
            fprintf("%10d    %10d\n",num,s)
            count = count + 1 ;
            
            if count > 10
                break ;
            end
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


function sum_of_proper_divs = sumPDiv(n) %find sum of proper divisors of an integer
    divs = find_divisors(n);
    sum_of_proper_divs = sum(divs) - n;
end
