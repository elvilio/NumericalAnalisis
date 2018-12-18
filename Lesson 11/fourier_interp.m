function c = fourier_interp (s, k)
	x = (0:2*k) * 2 * pi ./ (2*k+1);
	y = exp(1i .* x);

	v = s(x) .* (y .^ k);
	c = fft(v) ./ (2*k+1);
endfunction
