%mengubah gambar RGB menjadi gambar grayscale
function img_grayscale = grayscale(img_rgb)
%mendeteksi jumlah channel warna
[~, ~, number_of_channel] = size(img_rgb);
    %jika gambar mempunyai 3 channel warna (rgb)
    if number_of_channel  == 3
        %membagi gambar rgb menjadi 3 sesuai channel warnanya
        red = img_rgb(:, :, 1);
        green = img_rgb(:, :, 2);
        blue = img_rgb(:, :, 3);

        %menggabungkan kembali 3 channel warna menjadi 1 dengan
        %melakukan penjumlahan berbobot (weighted sum) kemudian
        %disimpan dalam variabel img_grayscale
        %koefisiennya/weightnya mengacu pada perhitungan pencahayaan (E'y) pada Rec.ITU-R BT.601-7
        img_grayscale = .299*double(red) + .587*double(green) + .114*double(blue);
        %konversi ke dalam bilangan bulat(integer)
        img_grayscale = uint8(img_grayscale);
    %jika gambar hanya mempunyai 1 channel warna/sudah grayscale    
    else
        %gambar langsung disimpan dalam variabel img_grayscale
        img_grayscale = img_rgb;  
    end
end