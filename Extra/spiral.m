function a = spiral(n)
  a = ones(n*n, 1);
  u = -(i = n) * (v = ones(n, 1));
  for k = n-1:-1:1
    j = 1:k;
    a(j+i) = u(j) = -u(j);
    a(j+(i+k)) = v(j) = -v(j);
    i += 2*k;
  endfor
  a(cumsum(a)) = 1:n*n;
  a = reshape(a, n, n)'-1;
endfunction