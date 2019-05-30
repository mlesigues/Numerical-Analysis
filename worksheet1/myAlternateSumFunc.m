%this file contains 2 functions: my alternate sum and absolute error

function func1 = myAlternateSumFunc(n)
% myalternatesum function
% inputs an integer n 
% outputs summation of i = 1 to n (-1)^(i)
    previous = 0;
    for i = 1:n
        func1 = ((-1)^i) * i + previous;
        previous = func1;
    end
end


%get absolute error; |exact - approx|
function func2 = absError(h)
    f = @(x) (1/2).*(x-1).^2;
    x = 1.1;
    derv = x - 1;
    func2 = abs(derv - (f(x + h) - f(x))/h);   
end
