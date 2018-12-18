function c = better_fourier_interp (s)
	k = 1;
	x = (0:2*k) * 2 * pi ./ (2*k+1);
	y = exp(1i .* x);

	v = s(x) .* (y .^ k);
	c = fft(v) ./ (2*k+1);
	while(abs(c(2*k+1)) > 10e-12 && abs(c(1)) > 10e-12 && k < 8193)
		k*=2
		x = (0:2*k) * 2 * pi ./ (2*k+1);
		y = exp(1i .* x);

		v = s(x) .* (y .^ k);
		c = fft(v) ./ (2*k+1);
	endwhile
	c = c(2:2*k);
endfunction
