function x = lap_solve_bad(n,b)
  [L,U]=lu(laplacian(n));
  y=inf_solve_bad(L,b);
  x=sup_solve_bad(U,y);
endfunction