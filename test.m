k = [0 -1 -1;
    0  0 1;
    0 -1 0;];

a = imread('ayla.jpg');
b = rgb2gray(a);
c = konvolusi(b,k);
imshow(c);