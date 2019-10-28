function y = Exp (x)

e = 2.71828182845904523536;
x = x(:);
y = size(x)
    for i=1:size(x)
        y(i) = e^(x(i));
    end



end