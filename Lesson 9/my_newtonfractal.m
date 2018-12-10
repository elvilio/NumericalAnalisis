function img = my_newtonfractal (p)
	dim=101;
	img = zeros(dim);
	range = linspace(-2,2,dim);
	
	for s = 1:dim
		for t = 1:dim
			z0=range(s)+i*range(t);
			img(t,s) = my_decidi(my_newton(p,z0), p);
		endfor
	endfor
endfunction
