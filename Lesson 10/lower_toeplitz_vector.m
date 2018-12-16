function y = lower_toeplitz_vector(c, x)
	yy = polymul(c, x);
	y = yy(1:length(c))';
endfunction
