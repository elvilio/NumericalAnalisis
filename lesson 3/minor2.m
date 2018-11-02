function B = minor2 (A, i, j)
  B = A([1:i-1,i+1:size(A,1)],[1:j-1,j+1:size(A,2)]);
endfunction
