function x = inf_solve(L,b)
  n=size(L,1);
  x=zeros(n,1);
  
  for i=1:n
    p=b(i);
    p=p-L(i,1:i)*x(1:i);
    x(i)=p/L(i,i);
  endfor
endfunction