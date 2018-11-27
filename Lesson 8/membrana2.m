function z = membrana2 (bordo, carico, r)
  k = 1.0;

  z = bordo;

  [m, n] = size(z);
	
  for it = 1 : r
    oldz=z;
    for i = 2 : m - 1
      for j = 2 : n - 1
          z(i,j) = - .25 * (k * carico(i,j) - oldz(i-1,j) - oldz(i+1,j) - oldz(i,j-1) - oldz(i,j+1));
      end
    end
  end
end
