function y = upper_toeplitz_vector(c, x)
	yy = polymul(c(end:-1:1), x);
	y = yy(length(c):end)';
endfunction
