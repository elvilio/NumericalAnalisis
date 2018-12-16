function y = toeplitz_vector(c, r, x)
	c(1) = 0;
	y = lower_toeplitz_vector(c, x) + upper_toeplitz_vector(r, x);
endfunction
