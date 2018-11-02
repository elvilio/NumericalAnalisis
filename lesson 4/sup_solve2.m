function x = sup_solve2(L,b)
  n=size(L,1);
  x=zeros(n,1);
  
  x(n)=(b(n)-L(n,n)*x(n))/L(n,n);
  
  for i=n-1:-1:1
    p=b(i);
    p=p-L(i,i:i+1)*x(i:i+1);
    x(i)=p/L(i,i);
  endfor
endfunction