%DWeidman

function [ min,max ] = minMax( nums)
    N=length(nums);
    min= nums(1);
    max=nums(1);
    
    for i= 1:N
        if nums(i)<min
            min=nums(i);
        end
        if nums(i)>max
            max=nums(i);
        end
    end
end

