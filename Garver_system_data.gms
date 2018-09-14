$title Modified Garver's 6-bus system data for G&TEP problems

$onText
The data are from the paper

L. Garver et al. "Transmission Network Estimation Using Linear Programming", IEEE Trans. on Power Apparatus and Systems, Sept. 1970

For G&TEP purpose, it has been modified and implemented by Gabriel Yin.
Candidate Generators can be built in each node.
All rights reserved.
$offText

Set
         n       All Nodes       /n1*n6/
         g       All Generators  /g1*g9/
         d       All Demands     /d1*d5/
         l       All Trans. Lines/l1*l21/
         cg(g)   Candidate Generators    /g4*g9/
         eg(g)   Existing Generators     /g1*g3/
         cl(l)   Candidate Trans. Lines  /l7*l21/
         el(l)   Existing Trans. Lines   /l1*l6/
         mapD(d, n)      Load-Bus Mapping        /d1.n1, d2.n2, d3.n3, d4.n4,
                                                 d5.n5/
         mapCG(cg, n)    Can. Gen.-Bus Mapping   /g4.n1, g5.n2, g6.n3, g7.n4,
                                                 g8.n5, g9.n6/
         mapEG(eg, n)    Exi. Gen.-Bus Mapping   /g1.n1, g2.n3, g3.n6/
         mapCSL(cl, n)   Can. Line-Sending Bus Mapping   /l7.n1, l8.n1, l9.n1,
                         l10.n1, l11.n1, l12.n2, l13.n2, l14.n2, l15.n2, l16.n3,
                         l17.n3, l18.n3, l19.n4, l20.n4, l21.n5/
         mapCRL(cl,n)    Can. Line-Receiving Bus Mapping /l7.n2, l8.n3, l9.n4,
                         l10.n5, l11.n6, l12.n3, l13.n4, l14.n5, l15.n6, l16.n4,
                         l17.n5, l18.n6, l19.n5, l20.n6, l21.n6/
         mapESL(el, n)   Exi. Line-Sending Bus Mapping   /l1.n1, l2.n1, l3.n1,
                         l4.n2, l5.n2, l6.n3/
         mapERL(el, n)   Exi. Line-Receiving Bus Mapping /l1.n2, l2.n4, l3.n5,
                         l4.n3, l5.n4, l6.n5/
         ref(n)  Reference Bus   /n1/;

Table    CLDATA(cl, *)   Candidate Trans. Lines Data
         X       FLmax   IC
l7       0.40    400     3500000
l8       0.38    200     2000000
l9       0.60    110     2000000
l10      0.20    200     2000000
l11      0.68    120     2000000
l12      0.20    200     2000000
l13      0.40    200     2000000
l14      0.31    200     2000000
l15      0.30    200     2000000
l16      0.59    152     2000000
l17      0.20    200     2000000
l18      0.48    200     2000000
l19      0.63    125     2000000
l20      0.30    200     2000000
l21      0.61    118     2000000
;

Table    ELDATA(el, *)   Existing Trans. Lines Data
         X       FLmax
l1       0.40    200
l2       0.60    180
l3       0.20    200
l4       0.20    200
l5       0.40    200
l6       0.20    200
;

Table    CGDATA(cg, *)   Candidate Generator Data
         Pmax    IC              OC
g4       100     3000000         4700
g5       160     3600000         8250
g6       80      2700000         3800
g7       50      1700000         4000
g8       160     4800000         7700
g9       50      2100000         3300
;

Table    EGDATA(eg, *)   Existing Generator Data
         Pmax    IC      OC
g1       150     0       5500
g2       360     0       8000
g3       600     0       11000
;

Parameter        DDATA(d)        Demand Data     /
         d1      180
         d2      480
         d3      240
         d4      160
         d5      480
/;

Scalar   PC      Penalty Cost    /20000/;




