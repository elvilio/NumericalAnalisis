function M = spiral_reversed (N)
  M = (-spiral(N)) .+ N^2+1;
  if mod(N,2)==0
      M = flipud(M);
  elseif
      M = fliplr(M);
  endif
endfunction
