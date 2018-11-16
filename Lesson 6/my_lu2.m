function [L, U] = my_lu2 (A, q)
  n=size(A,1);
  L=eye(n);
  
  for k=1:n-1
    for i=k+1:min(k+2*q,n)
      L(i,k)=A(i,k)/A(k,k);
      for j=k+1:min(k+2*q,n)
        A(i,j)=A(i,j)-(L(i,k)*A(k,j));
      endfor
    endfor
  endfor
  U=triu(A);
endfunction
