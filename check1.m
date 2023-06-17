% check if all random generated gens are valid or not 
function [ res ] = check1( data , min , max)
    s = size(data);
    for i=1: s(1)
        new = data(i,:);
        d =  new(1) + new(2);       
        while(d == 9)
           new =  generate(min , max , 1 , s(2));           
           d = new(1)+ new(2);        
        end
        data(i,:) = new;    
    end
    res = data;
end

