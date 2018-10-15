function retdet = mydet(A)
  if size(A)==[1,1]
    retdet = A(1,1);
  else
    retdet = 0;
    for iter=1:size(A,1);
      retdet += ((-1)^(iter+1)) * A(1,iter)*mydet(minor(A,1,iter));
    endfor
  endif
endfunction