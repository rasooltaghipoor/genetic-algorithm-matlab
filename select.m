function [ half ] = select( gen , value , row )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
  [e , idx] = sort(value,'descend');
  res = gen(idx,:);
  half = res(1:row/2 , :);
end

