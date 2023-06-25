function output_image = image_negative(input_image)

output_image = 255 - input_image;
output_image = uint8(output_image);

end