function matrix_out = laplacian (nsize)
  matrix_out = 2*eye(nsize) - diag(ones(nsize-1,1),1) - diag(ones(nsize-1,1),-1);
endfunction
