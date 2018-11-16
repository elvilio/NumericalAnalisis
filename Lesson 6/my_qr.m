function [Q, R] = my_qr (A)
  n = size(A,1);
  Q = eye(n);
  for i=1:n
    H=eye(n);
    H(i:n,i:n) = householder_matrix(A(i:n,i));
    Q = Q * H;
    A = H * A;
  endfor
  R = A;
endfunction
