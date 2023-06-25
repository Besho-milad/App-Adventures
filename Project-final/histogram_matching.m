%this function takes two inputs: input_image and destination image,
%match the histograms and return the matched image 
function output_image = histogram_matching(input_image, destination_image)

[r, c, ch] = size(input_image); 
output_image = zeros(r, c, ch);

[im_eq, new_im_color] = histogram_equalization(input_image);    %input_image_equalization
[dest_eq, new_dest_color] = histogram_equalization(destination_image); %destination_image_equalization

%Matching colors
matching_color = zeros(ch, 256);
for k = 1:ch
    for i = 1:256
        min_difference = new_im_color(k, i) - new_dest_color(k, 1);
        matching_color(k, i) = 0;
        for j = 2:256
            if(abs(new_im_color(k, i) - new_dest_color(k, j)) < min_difference)
                min_difference = abs(new_im_color(k, i) - new_dest_color(k, j));
                matching_color(k, i) = j - 1;
            end 
        end
    end
end

%Replacing the color of each pixel by the corresponding new match color
for k = 1:ch
    for i = 1:r
        for j = 1:c
            pixel_value = input_image(i, j, k);
            output_image(i, j, k) = matching_color(k, pixel_value + 1);
        end
    end
end

output_image = uint8(output_image);        

end