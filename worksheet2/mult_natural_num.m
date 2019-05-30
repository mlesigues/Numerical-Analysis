function s = mult_natural_num(a, b)
%function that implements multiplication of natural numbers
% a, b, and s are digit arrays

    aLength = length(a);
    bLength = length(b);
    totalLength = aLength + bLength;
    zeroArray = zeros(1,totalLength + 1);

    index1 = 1;
    
    % inverse loop (going backwards)
    for i = aLength:-1:1
        carry = 0;
        index2 = 1;
    
        for j = bLength:-1:1
        
            %this is almost same as the addition function
            sum = a(i) * b(j) + zeroArray(index1 + index2) + carry;

            carry = floor(sum/10);

            zeroArray(index1 + index2) = mod(sum,10);
            index2 = index2 + 1;
        end
  
        if (carry > 0)
            zeroArray(index1 + index2) = zeroArray(index1 + index2) + carry;
        end
            index1 = index1 + 1;
    end

    s = fliplr(zeroArray(2:end));
    
end
