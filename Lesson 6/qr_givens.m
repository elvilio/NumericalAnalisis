function [Q,R] = qr_givens (A)
  n = size(A,1);
  Q = eye(n);
  for i=1:n-1
    G = eye(n);
    G(n-i:n,n-i:n) = my_givens_vec(A(n-i:n,i))
    G*A
    A=G'*A;
    Q=Q*G;
    
    %for j=n:-1:i+1
    %  G = eye(n);
    %  G([j,i],[j,i]) = mygivens([A(j,i),A(j,i)]');
    %  A=G'*A;
    %  Q=Q*G;
    %endfor
  endfor
  R=A;
endfunction
