function output_image = Edge_detection_filter( input_image )

input_image = rgb2gray(input_image);
mask = [0,-1,0; -1,4,-1; 0,-1,0];

%Padding the original image by replicating rows and columns
input_image = double(input_image);
output_image = zeros(size(input_image));
s = size(mask, 1);
bor = floor(s/2);
border = padarray(input_image, [bor, bor], 'replicate', 'both');
[row, col, n] = size(border);

for i = (bor+1) : (row-bor)
    for j = (bor+1) : (col-bor)
        sub = border(i-bor:i+bor, j-bor:j+bor);    %the sub matrix of the original image
        n = round(sub.*mask);
        new_value = sum(sum(n));
        output_image(i-bor, j-bor) = new_value;
    end
end

output_image = uint8(output_image);

end