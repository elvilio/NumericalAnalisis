function G = my_givens_vec(v)
  n=size(v,1);
  G=eye(n);
  for i=n:-1:2
    H = eye(n);
    H([i-1,i],[i-1,i])=mygivens([v(i-1),v(i)]');
    v=H*v;
    G=H*G;
  endfor
endfunction
