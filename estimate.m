function [res] = estimate(a)
%   res = a(:,1).^2 + a(:,2).^2 + 7 + sqrt(abs(a(:,3))) + 10 * a(:,4)+ a(:,5) + a(:,6)+a(:,7) + a(:,8)+ a(:,9) + a(:,10);
  %[e , idx] = sort(val,'descend');
  %res = a(idx,:);
    res = a(:,1).^2 + a(:,2).^2 + 7 + sqrt(abs(a(:,3))) + 10 * a(:,4)+ a(:,5) + a(:,6)+a(:,7) + a(:,8)+ a(:,9) + a(:,10);

end