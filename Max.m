function max = Max (x1,x2)
for i = 1:size(x2,1)  
    for j = 1:size(x2,2)

        if x2(i,j) > x1
          max(i,j) =   x2(i,j);
        else
          max(i,j) = 0;
        end

    end
end

end