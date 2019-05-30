function [p, p_Est] = secant_method(f, p0, p1, tol, maxits)
% secant method
% f = some function handle
% p0 = 1st initial p_naught (some value)
% p1 = 2nd p_naught (some value)
% tol = tolerance (some value)
% maxits = maximum iterations (some value)

    p_Est = [p0, p1];
    
    for i = 1:maxits
        p = p1 - f(p1) * (p1 - p0) / (f(p1) - f(p0)); %secant equation
        p_Est = [p_Est, p];
        
        if abs(p - p1) < tol
            return
        else 
            p0 = p1;
            p1 = p;
        end
   
    end

end