function gg(A)
%% plots the corresponding Gerschgorin circles and eighenvalues
  n=size(A)(1);
  autovalori=eig(A);
  plot(real(autovalori),imag(autovalori),"*k");
  
  for k=1:n
    center=A(k,k);
    radius=0;
    radius=sum(abs(A(k,1:k-1)))+sum(abs(A(k,k+1:n)));
    circlecomplex(center,radius)
  end

end