function [newGen] = mutation(gen , percent , min , max)
    s = size(gen);
    num = s(1)*s(2);
   
    totalChanges = num * percent / 100;     
    rows = randi(s(1) , totalChanges , 1);  
    cells = randi(s(2) , totalChanges , 1);    
    %cols = randi(s(2) , 20 , 1);
    for i=1: totalChanges
        b  = rows(i);    
        p = cells(i);        
        d = 9;
      % rows(i)
        while(d == 9)           
            q = randi(max-min);
            q = q + min;       
            gen(rows(i),p) = q ;       
            d = gen(rows(i),1) + gen(rows(i),2);            
        end
    end
    newGen = gen;
end