function M = myjpegdecode(C, t)
	boxsize = 32;
	[col, rig] = size(C);
	
	kcol = col / t;
	krig = rig / t;
	
	M = uint8(zeros(kcol * boxsize, krig * boxsize));
	
	for i = 1:kcol
		for j = 1:krig
			S = zeros(boxsize);
			S(1:t, 1:t) = C((i-1)*t+1 : i*t, (j-1)*t+1 : j*t);
			M((i-1)*boxsize+1 : i*boxsize, (j-1)*boxsize+1 : j*boxsize) = uint8(idct2(S));
		endfor
	endfor
	
endfunction
