function x = my_gaussseidel_opt_xo (A, b, x0)
  max_iter = 1000;
  
  n = size(A,1);
  
  if n ~= length(b)
    error("different dimensions for matrix and vector")
  endif
  
  x = x0;
  vari = 0;
  
  while 1e-8 < norm(A*x-b) && vari < max_iter
    x_new = zeros(n,1);
    
    for i = 1:n
      x_new(i) = 1/(A(i,i)) * (b(i) - sum(A(i,1:i-1) * x_new(1:i-1)) - sum(A(i,i+1:n) * x(i+1:n)) );
    endfor
    
    x = x_new;
    vari++;
  endwhile
endfunction
