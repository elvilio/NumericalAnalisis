function x = inf_solve_bad(L,b)
  n=size(L,1);
  x=zeros(n,1);
  
  for i=1:n
    p=b(i);
    for j=1:i-1
      p=p-L(i,j)*x(j);
    endfor
    x(i)=p/L(i,i);
  endfor
endfunction
