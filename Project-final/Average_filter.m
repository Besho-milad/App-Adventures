function output_image = Average_filter( input_image, s )

output_image = zeros(size(input_image));
bor = floor(s/2);
border = padarray(input_image, [bor, bor], 'replicate', 'both');
[row, col, n] = size(border);

for k=1:n
    for i = (bor+1) : (row-bor)
        for j = (bor+1):(col-bor)
            new_val = mean(mean(border(i-bor:i+bor, j-bor:j+bor, k)));
            %OR
            %new_val = sum(sum(border(i-bor:i+bor, j-bor:j+bor, k))) / (s*s);
            output_image(i-bor, j-bor, k) = new_val;
        end
    end
end


output_image = uint8(output_image);
end