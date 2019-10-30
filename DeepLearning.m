function [w1, w2, w3, w4] = DeepLearning(w1, w2, w3, w4, input_Image, correct_Output)
 
alpha = 0.0001; %to control the learning rate
 
N = 14;
 
for k = 1:N
 
reshaped_input_Image = reshape(input_Image(:,:,k), 7500, 1);

input_of_hidden_layer1 = w1*reshaped_input_Image;

output_of_hidden_layer1 = ReLU(input_of_hidden_layer1);

input_of_hidden_layer2 = w2* output_of_hidden_layer1;

output_of_hidden_layer2 = ReLU(input_of_hidden_layer2);
 
input_of_hidden_layer3 = w3* output_of_hidden_layer2;
 
output_of_hidden_layer3 = ReLU(input_of_hidden_layer3);
 
input_of_output_node = w4* output_of_hidden_layer3;

input_of_output_nodee = input_of_output_node;

final_output = Softmax(input_of_output_nodee); %%

correct_Output_transpose = correct_Output(k, :)';

error = correct_Output_transpose - final_output;
 
delta = error;
 
error_of_hidden_layer3 = w4'*delta;

delta3 = (input_of_hidden_layer3>0).*error_of_hidden_layer3;
 
error_of_hidden_layer2 = w3'*delta3;
 
delta2 = (input_of_hidden_layer2>0).*error_of_hidden_layer2;
 
error_of_hidden_layer1 = w2'*delta2;
 
delta1 = (input_of_hidden_layer1>0).*error_of_hidden_layer1;
 
adjustment_of_w4 = alpha*delta*output_of_hidden_layer3';
 
adjustment_of_w3 = alpha*delta3*output_of_hidden_layer2';
 
adjustment_of_w2 = alpha*delta2*output_of_hidden_layer1';
 
adjustment_of_w1 = alpha*delta1*reshaped_input_Image';
 
w1 = w1+ adjustment_of_w1;
 
w2 = w2+ adjustment_of_w2;
 
w3 = w3+ adjustment_of_w3;
 
w4 = w4+ adjustment_of_w4;
 
end
 
end