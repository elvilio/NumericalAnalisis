function perturb(A,epsilon)
  close all;
  hold on;
  axis("equal");
  
  gg(A);
  n=size(A)(1);
  
  for iter=1:50
    variation=epsilon*(randn(n)+i*randn(n));
    autovalori=eig(A+variation);
    plot(real(autovalori),imag(autovalori),"*b");
  endfor
  
endfunction
