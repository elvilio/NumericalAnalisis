function dp = my_derivata (p)
	dp = p(1:end-1);
	dp = dp.*[length(p)-1:-1:1];
endfunction
