function x = lap_solve2(n,b)
  [L,U]=lu(laplacian(n));
  y=inf_solve2(L,b);
  x=sup_solve2(U,y);
endfunction