function x = my_jacobi_lap (n, b)
  max_iter = 1000;
  
  x = b;
  vari = 0;
  A=laplacian(n);
  
  while 1e-8 < norm(A*x-b) && vari < max_iter
    x_new = zeros(n,1);
    
    x_new(1) = 1/2 * (b(1) + x(2));
    for i = 2:n-1
      x_new(i) = 1/2 * (b(i) + x(i-1) + x(i+1) );
    endfor
    x_new(n) = 1/2 * (b(n) + x(n-1));
    
    x = x_new;
    vari++;
  endwhile
endfunction
