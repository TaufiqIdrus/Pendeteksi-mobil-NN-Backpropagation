function max = Max (x)
x = x(:);
max = x(1);
for i = 1:size(x)
   if max < x(i)
       max = x(i);
   end 
end
end