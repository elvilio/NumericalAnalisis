function x = my_jacobi (A, b, k)
  n = size(A,1);
  
  if n ~= length(b)
    error("different dimensions for matrix and vector")
  endif
  
  x = b;
  
  for vari = 1:k
    x_new = zeros(n,1);
    
    for i = 1:n
      x_new(i) = 1/(A(i,i)) * (b(i) - sum(A(i,1:i-1) * x(1:i-1)) - sum(A(i,i+1:n) * x(i+1:n)) );
    endfor
    
    x = x_new;
  endfor
  norm(A*x-b)
endfunction
