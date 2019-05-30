function result = add_natural_num(A,B)
% function that implements addition of natural numbers
% A, B, and result are digit arrays
% cannot use shortcuts!
  combineLength = max(length(A), length(B));
  A = fliplr(A);
  B = fliplr(B);
  aLength = length(A);
  bLength = length(B);
  
      %arrays are not equal, therefore add zeros accordingly
      if (aLength > bLength)
          B = [B, linspace(0, 0, length(A))];
      else 
          A = [A, linspace(0, 0, length(A))];
      end
  
  result = []; %unnecessary (maybe)
  carry = 0;
  
      for i = 1:combineLength
          %do the same thing as uint to digits
          result(i) = mod(A(i) + B(i) + carry, 10);
          carry = floor((carry + A(i) + B(i))/10);
      end
  
      if(carry ~= 0)
          result(i + 1) = carry;
      end
      
  result = fliplr(result);
    
end
