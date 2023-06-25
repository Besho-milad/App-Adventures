% Name : Kerollos Saad Shahat Mansour
% Group : G5
% ID : 2021342

function New_im = DM_1L(im,fact)
[r, c, ch]=size(im);
New_r = r*fact;
New_c = c*fact;
New_im = zeros(New_r,New_c, ch);


for k=1:ch
    tmp_i = 1;
    for i=1:r
        tmp_j = 1;
        for j=1:c
            New_im(tmp_i, tmp_j, k) = im(i,j,k);
            tmp_j = tmp_j + fact;
        end
        tmp_i = tmp_i + fact;
    end
end


for k=1:ch
    for i=1 : New_r
        for j=1 : fact : New_c
            
            mn = New_im(i,j,k);
            if j+fact <= c*fact
                mx = New_im(i, j+fact, k);
            else
                mx = -1;
            end 
            
            if mx == -1
                for x=j+1 : j+fact-1
                    New_im(i,x,k) = mn;
                end 
            elseif mn <= mx
                p = 1;
                for x=j+1 : j+fact-1
                    New_im(i,x,k) = round( ((mx-mn)/ fact)* p + mn);
                    p = p+1;
                end 
            else
                tmp = mx;
                mx = mn;
                mn = tmp;
                p = 1;
                for x=j+1 : j+fact-1
                    New_im(i,x,k) = round( ((mx-mn)/ fact)* (fact - p) + mn);
                    p = p+1;
                end 
            end
            
        end
    end
end


for k=1:ch
    for i=1 : fact :  New_r
        for j=1 : New_c
            
            mn = New_im(i,j,k);
            if i+fact <= r*fact
                mx = New_im(i+fact, j, k);
            else
                mx = -1;
            end 
            
            if mx == -1
                for x=i+1 : i+fact-1
                    New_im(x,j,k) = mn;
                end 
            elseif mn <= mx
                p = 1;
                for x=i+1 : i+fact-1
                    New_im(x,j,k) = round( ((mx-mn)/ fact)* p + mn);
                    p = p+1;
                end 
            else
                tmp = mx;
                mx = mn;
                mn = tmp;
                p = 1;
                for x=i+1 : i+fact-1
                    New_im(x,j,k) = round( ((mx-mn)/ fact)* (fact - p) + mn);
                    p = p+1;
                end 
            end
            
        end
    end
end

New_im = uint8(New_im);
% figure,imshow(im),title('Original')
% figure,imshow(New_im),title('Resized')
end