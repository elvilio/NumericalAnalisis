bordo = zeros(513);bordo(:,1) = linspace(0,10,513);bordo(513,:) = linspace(10,0,513);save bordo.mat bordo;carico = zeros(513);for i=1:513	carico(i,1:100) = linspace(0,0.1,100);
endfor
for i=1:513	carico(i,101:ceil(101+412/513*i)) = linspace(0.1,0,1+ceil(412/513*i));endforsave carico.mat carico;resmesh = restrizione(bordo, carico, 40);save resmesh.mat resmesh;mesh(resmesh);