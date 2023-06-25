%Function to reduce number of colors in the image
function output_image = quantization(input_image, k)

[r, c, ch] = size(input_image);
output_image = zeros(r, c, ch);
gray_level = 2^k;
gap = 256/gray_level;
colors = gap:gap:256;

for k1 = 1:ch
    for i = 1:r
        for j = 1:c
            temp = input_image(i, j, k1)/gap;
            index = floor(temp);
            
            if(index == 0)
                index = 1;
            end
            
            output_image(i, j, k1) = colors(index);
        end
    end
end

output_image = uint8(output_image);

end