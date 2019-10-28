function y = Softmax(x)
ex = Exp(x);
y = ex / Sum(ex);

end