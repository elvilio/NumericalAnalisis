function retdet = mydet2(A)
  retdet = 1;
  holder = 1;
  
  for iter=1:size(A,1)
    if A(iter,iter)==0
      for iterin=iter+1:size(A,1)
        if A(iterin,iter)~=0
          
          retdet*=-1;
          break;
        elseif iterin >= size(A,1)
          error('ho incontrato un pivot nullo');
        endif
      endfor
    endif
  endfor
  
  
  for iter=1:size(A,1)
    holder = 1/A(iter,iter);
    for iterin=iter+1:size(A,1)
      A(iterin,:)=A(iterin,:)-(A(iter,:)*holder*A(iterin,iter));
    endfor
  endfor
  retdet *= prod(diag(A));
endfunction
