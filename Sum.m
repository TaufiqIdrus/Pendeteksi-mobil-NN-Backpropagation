function y = Sum (x)
y = 0;
x = x(:);
for i = 1:size(x)
  y = y + x(i);  
end

end