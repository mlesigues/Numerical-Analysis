function X = uint_to_digits_converter(x)
% a function that converts a natural number (nonnegative integer) 
% into an array of its decimal digit
% x = natural number
% X = array of natural numbers, between 0 - 9
    X = []; 
    for g = ceil(log10(x)): -1:1
	initialNum = floor(mod(x/(10^(g-1)),10));
	X(end + 1, :) = (initialNum);
    end
    
    %convert vertical array to horizontal using transpose
        X = X';
end
