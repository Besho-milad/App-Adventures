function output_image = Unsharpen_mask( input_image, sigma )

%Can be done with two lines using Weighted_filter function that I sent
% g_mask = double(input_image) - Weighted_filter(input_image, 2);
% output_image = double(input_image) + g_mask;

%Instead (full calculating weighted filter from beginning steps)
%Computing the Gaussian Filter
N = floor(3.7*sigma-0.5);
mask_size = 2*N+1;
t = floor(mask_size/2);
x = (-t:t);
mask =zeros(mask_size, mask_size);
coef = (1/(2*pi*(sigma^2)));
for i = 1:mask_size
    for j = 1:mask_size
        mask(i,j) = coef*exp(-((x(i)^2)+(x(j)^2))/(2*(sigma^2)));
    end
end

%Padding the original image before convolution, by replicating rows and columns
input_image = double(input_image);
output_image = zeros(size(input_image));
border = padarray(input_image, [t, t], 'replicate', 'both');
[row, col, n] = size(border);

%Applying the mask to the image
for k=1:n
    for i = (t+1) : (row-t)
        for j = (t+1):(col-t)
            sub = border(i-t:i+t, j-t:j+t, k);    %the sub matrix of the original image
            n = round(sub.*mask);
            new_value = sum(sum(n));
            output_image(i-t, j-t, k) = new_value;
        end
    end
end

g_mask = double(input_image) - output_image;
output_image = double(input_image) + g_mask;


output_image = uint8(output_image);



end