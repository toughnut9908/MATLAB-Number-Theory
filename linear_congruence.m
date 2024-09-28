% Congruence is a relationship between two integers a and b indicating  m ∤(a-b)
%                     a ≡ b (mod m) , a,b,m ∈ Z, m > 0 

% m = modulus , b = residue of a mod m
% If 0 < b < m , mod(a,m) = b
% If b > m , mod(a,m) = mod(b,m)

% A linear congruence is an equation of the form:
%                     ax ≡ b ( mod m ) where m ∤ a. 
% 
% incongruent solutions ⊆ {0,1,2, ... , m-1}
% 
% Theorem:
% 1) Let gcd(a,m) = d.The congruence is solvable if and only if d divides b .
% 2) If it is solvable, then it has d incongruent solutions of the form.
% 
%                  [ x0 + s * (m/d) ] where s ranges from 0 to d-1.
% 
% x0 is the unique solution of the simplified congruence : 
%                    (a/d)x ≡ (b/d) ( mod m/d ) 

% gcd(a/d,m/d)=1 so this simplified congruence has one unique solution.


clc ; clear ;
%solve_linear_congruence(55,66,77);
solve_linear_congruence(12,9,15);
%  solve_linear_congruence(12,9,-15); % m < 0
%  solve_linear_congruence(45,9,15) ; % m divides a


function incongruent_sols = solve_linear_congruence(a,b,m)

if m < 0 
    error(" Error. \nThe modulus must be positive integer.")
end

% if m|a , a ≡ 0( mod m ) => 0 ≡ b( mod m )
if( mod(a,m)==0 )
    error("The modulus m=%d divides the coefficient of the variable x, a= %d .\ni.e The congruence is either trivially satisfied by any x or has no solution.",m,a)
end

d= gcd(a,m) ;

if (~mod(b,d)==0)
    fprintf("The linear congruence is not solvable.\n")
else
    fprintf("The linear congruence is solvable.\nIt has exactly %d incongruent solutions modulo %d.\n\n",d,m)
    
    A = a/d ;
    B = b/d ;
    M = m/d ;
    % (a/d)x ≡ (b/d) ( mod m/d ) or Ax ≡ B ( mod M ) , GCD(A,M) =1
    incongruent_sols = [];
    for x=0:M-1
        
        if(mod(A*x-B,M)==0) % Ax ≡ B ( mod M ) => M | (Ax-B)
            x0 = x ;        % UNIQUE SOLUTION
        end
    end
    
    S = linspace(0,d-1,d);
    incongruent_sols = x0 + S*M; % [ x0 + s * (m/d) ] where s ranges from 0 to d-1
    
    fprintf("The incongruent solutions of %dx ≡ %d (mod %d) :\n",a,b,m)
    disp(incongruent_sols')
end
end  
            
    