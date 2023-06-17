function [res] = generate(min , max , row , col)
%    res = randi(max - min , row , col);
%    res = res + min;
res = (max-min).*rand(row,col) + min;
end