function ggsecond(A, steps=100)
  close all;
  hold on;
  axis("equal");
  
  toSubtract=(A-diag(diag(A)));
  
  gg(A);
  
  for iter=1:steps
    newMatrix=A-(toSubtract*iter)/steps;
    autovalori=eig(newMatrix);
    plot(real(autovalori),imag(autovalori),"o");
  endfor
  
endfunction
