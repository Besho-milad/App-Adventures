%Function to take an input image and equalize its histogram and return two
%ouputs: output_image is the histogram equalized image and new_color is the
%corresponding new colors (made it as output to use it in histogram
%matching)
function [output_image, new_color] = histogram_equalization(input_image)

[r, c, ch] = size(input_image);

%to calculate the histogram
num_of_pixels = zeros(ch, 256);
for k=1:ch
    for i=1:r
        for j=1:c
            pixel_value = input_image(i, j, k) + 1;
            num_of_pixels(k, pixel_value) = num_of_pixels(k, pixel_value) + 1;
        end
    end
end


%to calculate running sum over the histogram
new_color = zeros(ch, 256);
new_color(:, 1) = num_of_pixels(:, 1);
for k = 1 : ch 
    for i = 2:256
        new_color(k, i) = new_color(k, i-1) + num_of_pixels(k, i);
    end
end

%to get new color
for k=1:ch 
    max_value = max(max(new_color(k, :)));
    new_color(k, :) = new_color(k, :)./max_value;   %Dividing each value by max value
    new_color(k, :) = round(new_color(k, :).*255);  %Multiplying by new range
end

%Replacing the color of each pixel by the corresponding new color
for k=1:ch
    for i=1:r
        for j=1:c
            pixel_value = input_image(i, j, k);
            output_image(i, j, k) = new_color(k, pixel_value + 1); 
        end
    end
end

output_image = uint8(output_image);

end