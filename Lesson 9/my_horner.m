function y = my_horner (p,x)
	y = p(1);
	for i=2:length(p)
		y = y * x + p(i);
	endfor
endfunction
