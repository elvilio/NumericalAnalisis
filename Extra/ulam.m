function ulam (n)
  LIST = primes(n^2+1);
  a = spiral_reversed(n);
  
  for i=[1:n]
    for j=[1:n]
      if any( LIST == a(i,j) )
        LIST(LIST == a(i,j)) = [];
        a(i,j) = 0;
      else
        a(i,j) = 1;
      endif
    endfor
  endfor
  
  hold on;
  axis("equal");
  colormap([0:1/63:1]'*[1 1 1]);
  imagesc(a);
endfunction
