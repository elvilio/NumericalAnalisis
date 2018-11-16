function d = my_det_qr (A)
  [Q,R] = my_qr(A);
  d = prod(diag(R))*(-1)^size(A,1);
endfunction
