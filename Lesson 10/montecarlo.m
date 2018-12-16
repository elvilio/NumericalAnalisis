function pi_appr=montecarlo(n)
	rr = (rand(2,n).-1/2).*2;
	rr = rr.^2;
	r = zeros(1,n);
	r = rr(1,:) + rr(2,:);
	r = (r <= 1);
	pi_appr = 4*sum(r)*(n^-1);
endfunction
