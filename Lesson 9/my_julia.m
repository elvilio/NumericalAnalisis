function img = my_julia (c)
	dim=501;
	img = zeros(dim);
	range = linspace(-2,2,dim);
	
	for s = 1:dim
		for t = 1:dim
			z0 = range(s)+i*range(t);
			for j=1:10
				z0 = z0^2 + c;
			endfor
			img(t,s) = atan(abs(z0));
		endfor
	endfor
endfunction
