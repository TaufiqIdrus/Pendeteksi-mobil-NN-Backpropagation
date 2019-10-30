function y = Exp (x)

e = 2.71828182845904523536;


    for i=1:size(x,1)
        for j=1:size(x,2)
          y(i,j) = e^(x(i,j)); 
        end
    end
end