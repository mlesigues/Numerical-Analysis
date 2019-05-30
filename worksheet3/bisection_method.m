function r = bisection_method(f, a, b, tol, maxits, varargin)
% f is a function handle
% [a, b] are endpoints
% tol is tolerance; a given error
% maxits is the maximum iteration
 
    % condition: f(a) and f(b) must have different signs
    assert( sign(f(a)) ~= sign(f(b)) );
    
    %condition: a must be LESS than b
    assert (a < b); 
    
    %condition: -INF < a < b < +INF
    assert(~isinf(a) && ~isinf(b));
    
    %check if root is one of the endpoints
    if(f(a)) == 0
        r = a;
        return;
    elseif f(b) == 0
        r = b;
        return;
    end
    
    for i = 1:maxits  
        %get the midpoint
        c = (a + b)/2;
        numItr(i) = c;
        
    %base check: is it a root or close enough to tol?
    if f(c) == 0 || (b - a)/2 <= tol
        r = c;
        
    % this part (question 2d), my friend helped, and also
    % this part was originally put at the bottom, but it didn't work
       
        % optional arguments like iter & plot
        if numel(varargin) > 0
            if strcmp(varargin{1}, 'iter')
                %code for display iteration
                disp([numItr])
            elseif strcmp(varargin{1}, 'plot')
                %code for plotting
                plot([numItr])
            end
        end
        return;
    end
    
    if sign(f(c)) ~= sign(f(a))
      % root is in left subinterval
      % a stays the same
        b = c;
    else 
      % root is in right subinterval
      % b stays the same
        a = c; 
    end
    
   end
    
    if i == maxits
     warning('maximum number of iterations reached')
    end

    r = c;
    
    %optional arguments like iter & plot
    %if numel(varargin) > 0 
     %   if strcmp(varargin{1}, 'iter')
            %code for display iteration
            %func = @(x) tan;
            %x0 = 1;
      %      iter = fzero(f, [a b], optimset('Display', 'iter'));
       %     r = iter
            %r = fzero(f, [a b], optimset('Display', 'iter'))
       % elseif strcmp(varargin{1}, 'plot')
            %code for plotting
       %   fzero(f, [a b], optimset('PlotFcns', @optimval))
       % end
   % end

end