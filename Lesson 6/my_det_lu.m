function d = my_det_lu (A)
  [L,U] = my_lu(A);
  d = prod(diag(U));
endfunction
