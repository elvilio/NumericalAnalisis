function x = my_newton (p,x0)
	x = x0;
  px = my_horner(p,x0);
	dp = my_derivata(p);
  while(abs(px)>1e-12)
    x = x - my_horner(p,x) * my_horner(dp,x)^(-1);
		px = my_horner(p,x);
	endwhile
endfunction
