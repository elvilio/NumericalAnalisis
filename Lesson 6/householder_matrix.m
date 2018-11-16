function P = householder_matrix(v)
  n = size(v,1);
  u = v+(sign(v(1))*norm(v)*eye(n,1));
  P = eye(n) - (2/(u' * u)) * (u * u');
endfunction
