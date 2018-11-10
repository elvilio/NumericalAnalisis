function x = sys_solve (A, b)
  [L,U]=my_lu(A);
  y=inf_solve(L,b);
  x=sup_solve(U,y);
endfunction
