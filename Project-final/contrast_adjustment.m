%Function takes 3 arguments input_image, new minimum value and new maximum
%value and return the output image after constrast adjustment
function output_image = contrast_adjustment(input_image, new_min, new_max)

[r, c, ch] = size(input_image);
output_image = zeros(r, c, ch);

for k = 1 : ch
    %calculating old minimum and old maximum values in each channel of the
    %input image
    old_min = min(min(input_image(:, :, k)));
    old_max = max(max(input_image(:, :, k)));
   
    for i = 1 : r
       for j = 1 : c
           old_value = input_image(i, j, k);
           new_value = ((new_max - new_min) / (old_max - old_min)) * (old_value - old_min) + new_min;
           
           %post-processing: cut-off the range
           if(new_value > 255)
               new_value = 255;
           end
           
           if(new_value < 0)
               new_value = 0;
           end
           
           output_image(i, j, k) = new_value;
           
       end
    end
    
end

output_image = uint8(output_image);

end