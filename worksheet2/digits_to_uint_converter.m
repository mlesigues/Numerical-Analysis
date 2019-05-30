function x = digits_to_uint_converter(X)
% function that converts an array of decimal digits 
% into a natural number.
% x = natural number
% X = array of natural numbers, between 0 - 9

    numLength = length(X);
    n = numLength - 1;
    x = 0;
    
    for i = 1:numLength
        x = x + X(i) * 10^n;
        n = n - 1;
    end
    
end