function order = find_order(a,m)

phi_m = EulerTotient(m) ;
div_phi = find_divisors(phi_m) ;


for x = div_phi
    if powermod(a,x,m)==1 
        order = x ;
        break;
    end
end

end
