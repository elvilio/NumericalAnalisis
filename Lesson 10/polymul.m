function c = polymul(a, b)
	aa = [a, zeros(1, length(b)-1)];
	bb = [b, zeros(1, length(a)-1)];
	
	c = ifft(fft(aa) .* fft(bb));
	
endfunction
