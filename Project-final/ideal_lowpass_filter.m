function output_image = ideal_lowpass_filter( input_image, D0 )

input_image = rgb2gray(input_image);
FT = fft2(input_image);
FTS = fftshift(FT);
Real = real(FTS);
Imag = imag(FTS);

H = zeros(size(input_image));

[M, N] = size(input_image);

for u = 1:M
    for v = 1:N
        D = ((u - M/2)^2 + (v - N/2)^2)^0.5;
        
        if(D <= D0)
            H(u,v) = 1;
        else
            H(u,v) = 0;
        end
    end
end

Real = H .* Real;
Imag = H .* Imag;

FT = ifftshift(Real + 1i*Imag);
IFT = ifft2(FT);
output_image = IFT;

output_image = uint8(output_image);

end

