
input boxes
%input TEX

outputtemplate := "etupic-%c.eps";
prologues := 3;

numeric #;
# = 10mm;

%
%
beginfig(1);
  % matrix
  draw (2#,2#)--(2#,7#)--(5#,7#)--(5#,2#)--cycle;
  draw (2.4#,2#)--(2.4#,7#);
  draw (2.8#,2#)--(2.8#,7#);
  draw (3.2#,2#)--(3.2#,7#);
  draw (2#,6.6#)--(5#,6.6#);
  draw (2#,6.2#)--(5#,6.2#);
  draw (2#,5.8#)--(5#,5.8#);
  draw (2#,5.4#)--(5#,5.4#);
  label.top(btex $C$ etex, (3.5#,7#));
  label.rt(btex $R$ etex, (5#,4.5#));
  % row decoder
  draw (1.8#,2#)--(1.8#,7#)--(1.4#,6.6#)--(1.4#,2.4#)--cycle;
  draw (1.8#,6.8#)--(2#,6.8#);
  draw (1.8#,6.4#)--(2#,6.4#);
  draw (1.8#,6#)--(2#,6#);
  draw (1.8#,5.6#)--(2#,5.6#);
  draw (1.8#,2.2#)--(2#,2.2#);
  %drawarrow (1#,4.5#)--(1.4#,4.5#);
  label(btex {\sevenrm row address} etex rotated 90, (1#,4.5#));
  % column decoder
  draw (2#,1.8#)--(5#,1.8#)--(4.6#,1.4#)--(2.4#,1.4#)--cycle;
  draw (2.2#,1.8#)--(2.2#,2#);
  draw (2.6#,1.8#)--(2.6#,2#);
  draw (3#,1.8#)--(3#,2#);
  draw (4.8#,1.8#)--(4.8#,2#);
  label(btex {\sevenrm column address} etex, (3.5#,1#));
endfig;

%
%
beginfig(2);
  circleit.so(btex $s_0$ etex);  so.c=(1#,1#);
  circleit.si(btex $s_1$ etex);  si.c=(2.5#,1#);
  circleit.sii(btex $s_2$ etex); sii.c=(4#,1#);
  drawboxed(so,si,sii);
  draw (si.n - (0,.06#)) .. (si.e - (.06#,0))
    .. (si.s + (0,.06#)) .. (si.w + (.06#,0)) .. cycle;

  drawarrow (0.6#,1.5#) -- so.c cutafter bpath so;
  drawarrow so.e--si.w;
  label.top(btex $1$ etex, .5[so.e,si.w]);
  z0 = 0.5[si.c,sii.c] shifted (0,.3#);
  drawarrow si.c..z0..sii.c cutbefore bpath si cutafter bpath sii;
  label.top(btex $0$ etex, z0);
  z1 = 0.5[si.c,sii.c] shifted (0,-.3#);
  drawarrow sii.c..z1..si.c cutbefore bpath sii cutafter bpath si;
  label.bot(btex $1$ etex, z1);
endfig;

end.


