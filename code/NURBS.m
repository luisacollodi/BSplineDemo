%PROVE NURBS

%cerchio di raggio 1 e centro (0,0)
circle=rsmak('circle');
fnplt(circle)
hold on

%arco
quarter = fnbrk(fn2fm(circle,'rp'),1);
fnplt(quarter)

%ellisse
ellipse = fncmb(circle,[9 0;0 6]);
fnplt(ellipse)
axis equal
 
% cylinder=rsmak('cylinder',3,7);
% fnplt(cylinder)