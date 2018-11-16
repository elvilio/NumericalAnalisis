function G = mygivens (v)
  if (v(1)==0)
    if (v(2)==0)
      c = 1;
    else
      c = 0;
    endif
    s = sign(v(2));
  elseif (v(2)==0)
    c = sign(v(1));
    s = 0;
  else
    t = hypot(v(1),v(2));
    c = v(1)/t;
    s = v(2)/t;
  endif
  G = [c,s;-s,c];
endfunction
