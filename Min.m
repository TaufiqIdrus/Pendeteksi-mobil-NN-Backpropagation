function min = Min (x)
x = x(:);
min = x(1);
for i = 1:size(x)
   if min > x(i)
       min = x(i);
   end 
end
end