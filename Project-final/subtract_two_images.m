function New_im = subtract_two_images(im1,im2)

[r, c, ch] = size(im1);
New_im = zeros(r,c,ch);


for k=1:ch
    for i=1:r
        for j=1:c
            New_im(i,j,k) = im1(i,j,k) - im2(i,j,k);
        end
    end
end

New_im = uint8(New_im);
% subplot(2,2,1);imshow(im1);title('Original 1');
% subplot(2,2,2);imshow(im2);title('Original 2');
% subplot(2,1,2);imshow(New_im);title('New Image');


end