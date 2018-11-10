function testing_values (M)
  v=(1:10)';
  b=M*v;
  fprintf("sys_solve\n");
  sys_solve(M,b)
  fprintf("inv\n");
  inv(M)*b
  fprintf("\\\n");
  M\b
endfunction
