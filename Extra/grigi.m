function grigi (n)
  a = zeros(n);
  for i = 1 : n
    for j = 1 : n
      a(i,j) = cos(pi*i/n)*cos(pi*j/n);
    endfor
  endfor
  colormap([0:1/63:1]'*[1 1 1]);
  imagesc(a);
endfunction
