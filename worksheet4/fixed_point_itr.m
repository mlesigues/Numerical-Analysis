function [p, psVec]  = fixed_point_itr(g, p0, maxits) %prof did this in class
%g = function handle
%p0 = initial iteration
%maxits = # of iterations to perform
%p = results of maxits applications of g
    p = p0;
    psVec = []; %to store p values, so we can use it to graph errors 
    for i = 1:maxits
        p = g(p); %this is on the worksheet. p = g(g(···g(p0)···)).
       % psVec(i+1) = p;
        psVec(i) = p;
        fprintf('After %d iterations: %g\n',i,p)
        %disp(p)
        
    end
end
