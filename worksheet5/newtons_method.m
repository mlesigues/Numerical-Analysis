function [p, p_errEst ] = newtons_method(f, fp, p0, tol, maxits)
% newton's method 
% p = apprx to the root (some value)
% p_errEst = error estimate 
% f = some function handle
% fp = derivative of f (fprime), also a function handle
% p0 = p_naught/initial value (starting point)
% tol = tolerance (some value)
% maxits = maximum iteration (some value)
    
    p_errEst = p0;

    for i = 1:maxits
        p0 = real(p0); %make sure that p0 is real number
        p = p0 - f(p0)/fp(p0); %this is the newton's equation
        p_errEst = [p_errEst, p];
        if abs(p - p_errEst) < tol
            return;
        else 
            p0 = p;
        end
    end

end