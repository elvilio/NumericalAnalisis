function x = sup_solve_bad(L,b)
  n=size(L,1);
  x=zeros(n,1);
  
  for i=n:-1:1
    p=b(i);
    for j=i:n
      p=p-L(i,j)*x(j);
    endfor
    x(i)=p/L(i,i);
  endfor
endfunction
