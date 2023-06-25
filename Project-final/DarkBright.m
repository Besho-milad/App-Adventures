function output_image = DarkBright(input_image, offset)

[row, col, ch] = size(input_image);
output_image = zeros(row, col, ch);

for k=1:ch
   for i = 1 : row
      for j = 1:col
         new_val = input_image(i, j, k) + offset;
         
         if(new_val > 255)
             new_val = 255;
         end
         
         if(new_val < 0)
             new_val = 0;
         end
         
         output_image(i, j, k) = new_val;
      end
   end
end

output_image = uint8(output_image);

end