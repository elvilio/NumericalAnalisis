function x = sys_solve (A, b)
  [Q,R]=my_qr(A);
  y=inf_solve_q(Q,b);
  x=sup_solve(R,y);
endfunction
