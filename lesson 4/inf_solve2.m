function x = inf_solve2(L,b)
  n=size(L,1);
  x=zeros(n,1);
  
  x(1)=(b(1)-L(1,1)*x(1))/L(1,1);
  
  for i=2:n
    p=b(i);
    p=p-L(i,i-1:i)*x(i-1:i);
    x(i)=p/L(i,i);
  endfor
endfunction
