function C = myjpeg (M, t)
	boxsize = 32;
	[col, rig] = size(M);

	if (mod(col,boxsize) ~= 0 || mod(rig,boxsize) ~= 0 || col == 0 || rig == 0)
		error("not properly sized image");
	endif

	kcol = col / boxsize;
	krig = rig / boxsize;

	C = zeros(kcol * t, krig * t);

	for i = 1:kcol
		for j = 1:krig
			S = dct2(M((i-1)*boxsize+1 : i*boxsize, (j-1)*boxsize+1 : j*boxsize));
			C((i-1)*t+1 : i*t, (j-1)*t+1 : j*t) = S(1:t, 1:t);
		endfor
	endfor

endfunction
