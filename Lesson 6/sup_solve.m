function x = sup_solve(R,b)
  n=size(R,1);
  x=zeros(n,1);
  
  for i=n:-1:1
    p=b(i);
    p=p-R(i,i:n)*x(i:n);
    x(i)=p/R(i,i);
  endfor
endfunction