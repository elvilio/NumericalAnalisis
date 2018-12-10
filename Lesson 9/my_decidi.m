function val = my_decidi (x, p)
	varoot = roots(p);
	var = zeros(1:length(varoot));
	for i = 1:length(varoot)
		var(i) = abs(x-varoot(i));
	endfor
	[x, val] = min(var);
endfunction
