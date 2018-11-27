function z = membrana(bordo, carico, r)
  k = 1.0;

  z = bordo;

  [m, n] = size(z);

  for it = 1 : r   
      for i = 2 : m - 1
          for j = 2 : n - 1
              z(i,j) = - .25 * (k * carico(i,j) - z(i-1,j) - z(i+1,j) - z(i,j-1) - z(i,j+1));
          end
      end
  end
end
