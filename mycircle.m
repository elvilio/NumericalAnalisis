function mycircle (x,y,r,step=0.001)
  varPoint=linspace(0,2*pi,(2*pi)/step);
  plot((cos(varPoint)*r)+x,(sin(varPoint)*r)+y,"g")
endfunction
