function x = sup_solve(L,b)
  n=size(L,1);
  x=zeros(n,1);
  
  for i=n:-1:1
    p=b(i);
    p=p-L(i,i:n)*x(i:n);
    x(i)=p/L(i,i);
  endfor
endfunction