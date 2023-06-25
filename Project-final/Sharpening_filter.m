function output_image = Sharpening_filter( input_image )

mask = [-1,-1,-1; -1,9,-1; -1,-1,-1];

%Padding the original image by replicating rows and columns
input_image = double(input_image);
output_image = zeros(size(input_image));
s = size(mask, 1);
bor = floor(s/2);
border = padarray(input_image, [bor, bor], 'replicate', 'both');
[row, col, n] = size(border);

for k = 1:n
    for i = (bor+1) : (row-bor)
        for j = (bor+1) : (col-bor)
            sub = border(i-bor:i+bor, j-bor:j+bor, k);    %the sub matrix of the original image
            n = round(sub.*mask);
            new_value = sum(sum(n));
            if(new_value < 0)
                new_value = 0;
            end
        
            if(new_value > 255)
                new_value = 255;
            end
            output_image(i-bor, j-bor, k) = new_value;
        end
    end
end

output_image = uint8(output_image);

end