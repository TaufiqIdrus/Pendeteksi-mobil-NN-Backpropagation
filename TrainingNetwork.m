%membaca file ayla
folder_ayla = 'C:\Users\Taufiq Idrus\Documents\3. Computer Vision\Neural Network\backpropagation\data mobil\data training\ayla';
directories_ayla = strcat(folder_ayla,'/*.jpg');
imagefiles_ayla = dir(directories_ayla);      
nfiles_ayla = length(imagefiles_ayla);    % Number of files found

folder_xenia = 'C:\Users\Taufiq Idrus\Documents\3. Computer Vision\Neural Network\backpropagation\data mobil\data training\xenia';
directories_xenia = strcat(folder_xenia,'/*.jpg');
imagefiles_xenia = dir(directories_xenia);      
nfiles_xenia = length(imagefiles_xenia);

input_Image = zeros(75,100,14);
for i=1:nfiles_ayla
   file_ayla = imagefiles_ayla(i).name;
   file_ayla = strcat(folder_ayla,'/', file_ayla);
   file_gs_ayla = grayscale(imread(file_ayla));
   input_Image(:,:,i) =  normalisasi(file_gs_ayla);
end

for i=nfiles_ayla+1:nfiles_ayla + nfiles_xenia
   file_xenia = imagefiles_xenia(i-nfiles_xenia).name;
   file_xenia = strcat(folder_xenia,'/', file_xenia);
   file_gs_xenia = grayscale(imread(file_xenia));
   input_Image(:,:,i) =  normalisasi(file_gs_xenia);
end

correct_Output = zeros(14,14);
correct_Output(1,1) = 1;
correct_Output(2,2) = 1;
correct_Output(3,3) = 1;
correct_Output(4,4) = 1;
correct_Output(5,5) = 1;
correct_Output(6,6) = 1;
correct_Output(7,7) = 1;
correct_Output(8,8) = 1;
correct_Output(9,9) = 1;
correct_Output(10,10) = 1;
correct_Output(11,11) = 1;
correct_Output(12,12) = 1;
correct_Output(13,13) = 1;
correct_Output(14,14) = 1;

w1 = 2*rand(20,7500)-1;
 
w2 = 2*rand(20,20)-1;
 
w3 = 2*rand(20,20)-1;
 
w4 = 2*rand(14, 20)-1;
 
for epoch = 1:1000
[w1, w2, w3, w4] = DeepLearning(w1, w2, w3, w4, input_Image, correct_Output);
epoch
end
save('DeepNeuralNetwork.mat')