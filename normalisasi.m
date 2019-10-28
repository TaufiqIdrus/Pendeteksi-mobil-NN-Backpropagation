function y = normalisasi (x)
y = size(x);
for i = 1:size(x,1)
    for j = 1:size(x,2)
    
        y (i, j) = double(x(i,j)) / double(255);
    
    end
    
end



end