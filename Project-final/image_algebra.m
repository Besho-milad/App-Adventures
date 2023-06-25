function output_image = image_algebra(image1, image2)

[r, c] = size(image1);
[r2, c2] = size(image2);

r = r/r2;
c = c/c2;

image2 = RM_1_order(image2, r, c);  %resizing one image to another size

output_image = image1 + image2;
output_image = uint8(output_image);

end