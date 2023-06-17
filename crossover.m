function [newGen] = crossover(gen)
    t = size(gen);
    newGen = gen;
    for i=1: t(1)/2        
        a = gen(i , :);
        b = gen(i + t(1)/2 , :);
        s=size(a);
        d1 = 9;
        d2 = 9;
        % check if x + y != 9
        while(d1 == 9 || d2 == 9) 
            p = randperm(s(2));
            r=p(1:2);
            r=sort(r);
            r1=r(1);
            r2=r(2);
            b1=[a(1:r1) b(r1+1:r2) a(r2+1:end)];
            b2=[b(1:r1) a(r1+1:r2) b(r2+1:end)];           
            d1 =  b1(1) + b1(2);  
            d2 =  b2(1) + b2(2);
        end
          
        children = [b1;b2];
        newGen = [newGen;children];       
    end
k = 1; 
end