function output_image = power_law(input_image, gamma)

output_image = double(input_image).^gamma;
output_image = contrast_adjustment(output_image, 0, 255);   %post-processing: contrast adjustment (normalization) (-function in the folder-)

end