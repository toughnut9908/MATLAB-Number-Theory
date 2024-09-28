% Solve a linear Diophantine equation using MATLAB

% A linear diophantine equation  in two variables is of the form 
% ax + by = c where a, b, c are integers. Also, a & b are non-zero.
% A LDE only involves integer solutions.So, x and y are integer variables
% 
% A LDE has integral solutions if and only if 
% the greatest common divisor (gcd) of a & b divides the constant, c.

clc ; clear ;
%Solve 13x + 21y = 1791
solveLDE(13,21,1791);

%Solve 13x + 5y = 987
%solveLDE(13,5,987) ;

function [X,Y,parameter,conditions] = solveLDE(a,b,c)
syms  x y integer
eqn=  a*x + b*y == c ;
d= gcd(a,b);
if(mod(c,d)==0)
    disp("The LDE is solvable in integers.")
else
    disp("The LDE is not solvable in integers.")
end
disp("The general solution of the LDE : ");
[X,Y,parameter,conditions] =solve(eqn,[x y],'ReturnConditions',true)

assume(conditions);
restriction = [0<X, 0<Y];
solk = solve(restriction,parameter) ;

if(~isempty(solk))
    fprintf("Positive integral solutions :\n")
    fprintf("%5s    %5s    %5s\n",'k','x','y')
    for i= 1:length(solk)
        xSol = subs(X,parameter,solk(i));
        ySol = subs(Y,parameter,solk(i));
        fprintf("%5d    %5d    %5d\n",solk(i),xSol,ySol);
    end
end

end
    