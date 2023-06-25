function gray = cvt2gray(rgb)

%Singel color channel
% gray = rgb(:, :, 1);


%Averaging
% gray = (rgb(:, :, 1) + rgb(:, :, 2) + rgb(:, :, 3)) / 3;


%Luminance
% gray = 0.3*rgb(:, :, 1) + 0.59*rgb(:, :, 2) + 0.11*rgb(:, :, 3);


%Desaturation
% [r, c, ch] = size(rgb);
% gray = zeros(r, c);
% 
% for i = 1 : r
%    for j = 1 : c
%        gray(i, j) = (max([rgb(i, j, 1), rgb(i, j, 2), rgb(i, j, 3)]) + min([rgb(i, j, 1), rgb(i, j, 2), rgb(i, j, 3)])) / 2;
%    end
% end


%Decomposing
[r, c, ch] = size(rgb);
gray = zeros(r, c);
for i = 1 : r
   for j = 1 : c
       gray(i, j) = max([rgb(i, j, 1), rgb(i, j, 2), rgb(i, j, 3)]);
       %gray(i, j) = min([rgb(i, j, 1), rgb(i, j, 2), rgb(i, j, 3)]);
   end
end


gray = uint8(gray);


end