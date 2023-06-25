%function to draw histogram of gray image
function histogram_drawing(input_image)
[r,c]=size(input_image);
hist = zeros(1,256);
for i = 1:r
     for j = 1:c
         z = input_image(i,j);
         hist(z+1)=hist(z+1)+1;
     end
end

bar(hist);

end