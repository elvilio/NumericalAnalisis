function z = restrizione (bordo, carico, r)
	k = 1.0;
	m = size(bordo,1);
	m

	if m <= 3
		z = membrana(bordo,carico,r);
	else
		newm = (m+1)/2;


		% nuovo bordo
		newbordo = zeros(newm);
		newbordo = bordo(1:2:m,1:2:m);

		% nuovo carico
		newcarico = zeros(newm);
		for i = 2:newm-1
			for j = 2:newm-1
				newcarico(i,j) = carico(i*2,j*2) + (sum(sum(carico(i*2-1:i*2+1,j*2-1:j*2+1))))/8;
			endfor
		endfor

		
		% ricorsività
		zsmall = restrizione(newbordo, newcarico, r);
		
		% espansione a nuova matrice
		zinit = bordo;
		zinit(1:2:m,1:2:m) = zsmall;
		
		for i=1:newm-1
			for j=1:newm-1
				zinit(i*2-1,j*2) = sum(zsmall(i,j:j+1))/2;
				zinit(i*2,j*2-1) = sum(zsmall(i:i+1,j))/2;
				zinit(i*2,j*2) = sum(sum((zsmall(i:i+1,j:j+1))))/4;
		 endfor
		endfor
		zinit(1:m,1) = bordo(1:m,1);
		zinit(1,1:m) = bordo(1,1:m);
		zinit(1:m,m) = bordo(1:m,m);
		zinit(m,1:m) = bordo(m,1:m);
		
		z = zinit;
		
		
		for it = 1:r   
      for i = 2:m-1
				for j = 2 : m - 1
						z(i,j) = - .25 * (k * carico(i,j) - z(i-1,j) - z(i+1,j) - z(i,j-1) - z(i,j+1));
				end
			end
		end
	endif
	printf("done");
	m
endfunction

























