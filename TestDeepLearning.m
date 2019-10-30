load('DeepNeuralNetwork.mat');
% input_Image = imread('C:\Users\Taufiq Idrus\Documents\3. Computer Vision\Neural Network\backpropagation\data mobil\data test\xenia\xenia-9.jpg');
 input_Image = imread('C:\Users\Taufiq Idrus\Documents\3. Computer Vision\Neural Network\backpropagation\data mobil\data test\xenia\xenia-10.jpg');
%input_Image = imread('C:\Users\Taufiq Idrus\Documents\3. Computer Vision\Neural Network\backpropagation\data mobil\data test\ayla\ayla-10.jpg');


file_gs_ayla = grayscale(input_Image);
input_Imagee =  normalisasi(file_gs_ayla);

input_Imagee = reshape(input_Imagee, 7500, 1);
 
input_of_hidden_layer1 = w1*input_Imagee;
 
output_of_hidden_layer1 = ReLU(input_of_hidden_layer1);
 
input_of_hidden_layer2 = w2*output_of_hidden_layer1;
 
output_of_hidden_layer2 = ReLU(input_of_hidden_layer2);
 
input_of_hidden_layer3 = w3*output_of_hidden_layer2;
 
output_of_hidden_layer3 = ReLU(input_of_hidden_layer3);
 
input_of_output_node = w4*output_of_hidden_layer3;
 
final_output = Softmax(input_of_output_node)

ayla = Sum(final_output(1:7))
xenia = Sum(final_output(8:14))



