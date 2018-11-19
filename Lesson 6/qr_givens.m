function [Q,R] = qr_givens (A)
  n = size(A,1);
  Q = eye(n);
  for i=1:n-1
    G = eye(n);
    G(i:n,i:n) = my_givens_vec(A(i:n,i));
    A=G*A;
    Q=Q*G;
  endfor
  %R=triu(A);
  R=A;
endfunction
