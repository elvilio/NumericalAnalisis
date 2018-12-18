function y = fourier_eval (c, theta)

	ll = (length(c)-1)/2;
	y = zeros(1,length(theta));

	for j=1:length(theta)
		var = ((ones(1,length(c)) .* exp(1i*theta(j))) .^ (-ll:ll)) .* c;
		y(j) = real(sum(var));
	endfor
endfunction
