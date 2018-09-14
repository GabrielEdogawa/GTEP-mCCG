$title Modified Garver's 6-bus system data for G&TEP problems

$onText
The data are from the paper

L. Garver et al. "Transmission Network Estimation Using Linear Programming", IEEE Trans. on Power Apparatus and Systems, Sept. 1970

For G&TEP purpose, it has been modified and implemented by Gabriel Yin.
Candidate Generators can be built in each node.
All rights reserved.
$offText

option limrow = 100000;

Set
         n       All Nodes       /n1*n6/
         g       All Generators  /g1*g33/
         d       All Demands     /d1*d5/
         l       All Trans. Lines/l1*l81/
         cg(g)   Candidate Generators    /g4*g33/
         cg1(cg)   /g4*g9/
         cg2(cg)   /g10*g15/
         cg3(cg)   /g16*g21/
         cg4(cg)   /g22*g27/
         cg5(cg)   /g28*g33/
         eg(g)   Existing Generators     /g1*g3/

         cl(l)   Candidate Trans. Lines   /l7*l81/
         cl1(cl)   Candidate Trans. Lines  /l7*l21/
         cl2(cl)  /l22*l36/
         cl3(cl)  /l37*l51/
         cl4(cl)  /l52*l66/
         cl5(cl)  /l67*l81/
         el(l)   Existing Trans. Lines   /l1*l6/
         mapD(d, n)      Load-Bus Mapping        /d1.n1, d2.n2, d3.n3, d4.n4,
                                                 d5.n5/
         mapCG1(cg1, n)    Can. Gen.-Bus Mapping   /g4.n1, g5.n2, g6.n3, g7.n4, g8.n5, g9.n6/
         mapCG2(cg2, n)    Can. Gen.-Bus Mapping   /g10.n1, g11.n2, g12.n3, g13.n4, g14.n5, g15.n6/
         mapCG3(cg3, n)    Can. Gen.-Bus Mapping   /g16.n1, g17.n2, g18.n3, g19.n4, g20.n5, g21.n6/
         mapCG4(cg4, n)    Can. Gen.-Bus Mapping   /g22.n1, g23.n2, g24.n3, g25.n4, g26.n5, g27.n6/
         mapCG5(cg5, n)    Can. Gen.-Bus Mapping   /g28.n1, g29.n2, g30.n3, g31.n4, g32.n5, g33.n6/
         mapEG(eg, n)    Exi. Gen.-Bus Mapping   /g1.n1, g2.n3, g3.n6/

         mapCSL1(cl1, n)   Can. Line-Sending Bus Mapping   /l7.n1, l8.n1, l9.n1,
                         l10.n1, l11.n1, l12.n2, l13.n2, l14.n2, l15.n2, l16.n3,
                         l17.n3, l18.n3, l19.n4, l20.n4, l21.n5/
         mapCSL2(cl2, n)   Can. Line-Sending Bus Mapping   /
                         l22.n1, l23.n1, l24.n1,
                         l25.n1, l26.n1, l27.n2, l28.n2, l29.n2, l30.n2, l31.n3,
                         l32.n3, l33.n3, l34.n4, l35.n4, l36.n5/
         mapCSL3(cl3, n)   Can. Line-Sending Bus Mapping   /
                         l37.n1, l38.n1, l39.n1,
                         l40.n1, l41.n1, l42.n2, l43.n2, l44.n2, l45.n2, l46.n3,
                         l47.n3, l48.n3, l49.n4, l50.n4, l51.n5/
         mapCSL4(cl4, n)   Can. Line-Sending Bus Mapping   /
                         l52.n1, l53.n1, l54.n1,
                         l55.n1, l56.n1, l57.n2, l58.n2, l59.n2, l60.n2, l61.n3,
                         l62.n3, l63.n3, l64.n4, l65.n4, l66.n5/
         mapCSL5(cl5, n)   Can. Line-Sending Bus Mapping   /
                         l67.n1, l68.n1, l69.n1,
                         l70.n1, l71.n1, l72.n2, l73.n2, l74.n2, l75.n2, l76.n3,
                         l77.n3, l78.n3, l79.n4, l80.n4, l81.n5/
         mapCRL1(cl1,n)    Can. Line-Receiving Bus Mapping /l7.n2, l8.n3, l9.n4,
                         l10.n5, l11.n6, l12.n3, l13.n4, l14.n5, l15.n6, l16.n4,
                         l17.n5, l18.n6, l19.n5, l20.n6, l21.n6/
         mapCRL2(cl2,n)    Can. Line-Receiving Bus Mapping /l22.n2, l23.n3, l24.n4,
                         l25.n5, l26.n6, l27.n3, l28.n4, l29.n5, l30.n6, l31.n4,
                         l32.n5, l33.n6, l34.n5, l35.n6, l36.n6/
         mapCRL3(cl3,n)    Can. Line-Receiving Bus Mapping /l37.n2, l38.n3, l39.n4,
                         l40.n5, l41.n6, l42.n3, l43.n4, l44.n5, l45.n6, l46.n4,
                         l47.n5, l48.n6, l49.n5, l50.n6, l51.n6/
         mapCRL4(cl4,n)    Can. Line-Receiving Bus Mapping /l52.n2, l53.n3, l54.n4,
                         l55.n5, l56.n6, l57.n3, l58.n4, l59.n5, l60.n6, l61.n4,
                         l62.n5, l63.n6, l64.n5, l65.n6, l66.n6/
         mapCRL5(cl5,n)    Can. Line-Receiving Bus Mapping /l67.n2, l68.n3, l69.n4,
                         l70.n5, l71.n6, l72.n3, l73.n4, l74.n5, l75.n6, l76.n4,
                         l77.n5, l78.n6, l79.n5, l80.n6, l81.n6/

         mapESL(el, n)   Exi. Line-Sending Bus Mapping   /l1.n1, l2.n1, l3.n1,
                         l4.n2, l5.n2, l6.n3/
         mapERL(el, n)   Exi. Line-Receiving Bus Mapping /l1.n2, l2.n4, l3.n5,
                         l4.n3, l5.n4, l6.n5/
         t       Year Index      /t1*t5/
         ref(n)  Reference Bus   /n1/
         s       /s1*s10/;

Table    CLDATA1(cl1, *)   Candidate Trans. Lines Data
         X       FLmax   IC
l7       0.40    100     7723.2
l8       0.38    100     7337.04
l9       0.60    80      11584.8
l10      0.20    100     3861.6
l11      0.68    70      13129.44
l12      0.20    100     3861.6
l13      0.40    100     7723.2
l14      0.31    100     5985.48
l15      0.30    100     5792.4
l16      0.59    82      11391.72
l17      0.20    100     3861.6
l18      0.48    100     9267.84
l19      0.63    75      12164.04
l20      0.30    200     5792.4
l21      0.61    78      11777.88
;

Table    CLDATA2(cl2, *)   Candidate Trans. Lines Data
         X       FLmax   IC
l22      0.40    100     7723.2
l23      0.38    100     7337.04
l24      0.60    80      11584.8
l25      0.20    100     3861.6
l26      0.68    70      13129.44
l27      0.20    100     3861.6
l28      0.40    100     7723.2
l29      0.31    100     5985.48
l30      0.30    100     5792.4
l31      0.59    82      11391.72
l32      0.20    100     3861.6
l33      0.48    100     9267.84
l34      0.63    75      12164.04
l35      0.30    200     5792.4
l36      0.61    78      11777.88
;

CLDATA2(cl2, 'IC') = CLDATA2(cl2, 'IC') * 1.2;

Table    CLDATA3(cl3, *)   Candidate Trans. Lines Data
         X       FLmax   IC
l37      0.40    100     7723.2
l38      0.38    100     7337.04
l39      0.60    80      11584.8
l40      0.20    100     3861.6
l41      0.68    70      13129.44
l42      0.20    100     3861.6
l43      0.40    100     7723.2
l44      0.31    100     5985.48
l45      0.30    100     5792.4
l46      0.59    82      11391.72
l47      0.20    100     3861.6
l48      0.48    100     9267.84
l49      0.63    75      12164.04
l50      0.30    200     5792.4
l51      0.61    78      11777.88
;

CLDATA3(cl3, 'IC') = CLDATA3(cl3, 'IC') * 1.2 * 1.2;

Table    CLDATA4(cl4, *)   Candidate Trans. Lines Data
         X       FLmax   IC
l52      0.40    100     7723.2
l53      0.38    100     7337.04
l54      0.60    80      11584.8
l55      0.20    100     3861.6
l56      0.68    70      13129.44
l57      0.20    100     3861.6
l58      0.40    100     7723.2
l59      0.31    100     5985.48
l60      0.30    100     5792.4
l61      0.59    82      11391.72
l62      0.20    100     3861.6
l63      0.48    100     9267.84
l64      0.63    75      12164.04
l65      0.30    200     5792.4
l66      0.61    78      11777.88
;

CLDATA4(cl4, 'IC') = CLDATA4(cl4, 'IC') * 1.2 * 1.2 * 1.2;

Table    CLDATA5(cl5, *)   Candidate Trans. Lines Data
         X       FLmax   IC
l67      0.40    100     7723.2
l68      0.38    100     7337.04
l69      0.60    80      11584.8
l70      0.20    100     3861.6
l71      0.68    70      13129.44
l72      0.20    100     3861.6
l73      0.40    100     7723.2
l74      0.31    100     5985.48
l75      0.30    100     5792.4
l76      0.59    82      11391.72
l77      0.20    100     3861.6
l78      0.48    100     9267.84
l79      0.63    75      12164.04
l80      0.30    200     5792.4
l81      0.61    78      11777.88
;

CLDATA5(cl5, 'IC') = CLDATA5(cl5, 'IC') * 1.2 * 1.2 * 1.2 * 1.2;

Table    ELDATA(el, *)   Existing Trans. Lines Data
         X       FLmax
l1       0.40    100
l2       0.60    80
l3       0.20    100
l4       0.20    100
l5       0.40    100
l6       0.20    100
;

Table    CGDATA1(cg1, *)   Candidate Generator Data
         Pmax    IC            OC
g4       1200    50000         55
g5       1200    50000         55
g6       1200    50000         55
g7       1200    50000         55
g8       1200    50000         55
g9       1200    50000         55
;

Table    CGDATA2(cg2, *)   Candidate Generator Data
          Pmax    IC            OC
g10       1200    50000         55
g11       1200    50000         55
g12       1200    50000         55
g13       1200    50000         55
g14       1200    50000         55
g15       1200    50000         55
;

CGDATA2(cg2, 'IC') = CGDATA2(cg2, 'IC') * 1.05;

Table    CGDATA3(cg3, *)   Candidate Generator Data
          Pmax    IC            OC
g16       1200    50000         55
g17       1200    50000         55
g18       1200    50000         55
g19       1200    50000         55
g20       1200    50000         55
g21       1200    50000         55
;

CGDATA3(cg3, 'IC') = CGDATA3(cg3, 'IC') * 1.05 * 1.05;

Table    CGDATA4(cg4, *)   Candidate Generator Data
          Pmax    IC            OC
g22       1200    50000         55
g23       1200    50000         55
g24       1200    50000         55
g25       1200    50000         55
g26       1200    50000         55
g27       1200    50000         55
;

CGDATA4(cg4, 'IC') = CGDATA4(cg4, 'IC') * 1.05 * 1.05 * 1.05;

Table    CGDATA5(cg5, *)   Candidate Generator Data
          Pmax    IC            OC
g28       1200    50000         55
g29       1200    50000         55
g30       1200    50000         55
g31       1200    50000         55
g32       1200    50000         55
g33       1200    50000         55
;

CGDATA5(cg5, 'IC') = CGDATA5(cg5, 'IC') * 1.05 * 1.05 * 1.05 * 1.05;

Table    EGDATA(eg, *)   Existing Generator Data
         Pmax    IC      OC
g1       50      0       67
g2       165     0       120
g3       545     0       210
;

$ontext
Parameter        DDATA(d,s)        Demand Data;

DDATA('d1', 's1') = 64.6392;
DDATA('d1', 's2') = 69.1227;
DDATA('d1', 's3') = 72.2625;
DDATA('d1', 's4') = 75.5694;
DDATA('d1', 's5') = 78.7723;
DDATA('d1', 's6') = 82.1699;
DDATA('d1', 's7') = 85.386;
DDATA('d1', 's8') = 88.726;
DDATA('d1', 's9') = 92.0622;
DDATA('d1', 's10') = 95.3325;
DDATA('d2', s) = 240;  DDATA('d3', s) = 40;  DDATA('d4', s) = 160;  DDATA('d5', s) = 240;

Parameter prob(s);
prob('s1') = 0.001;
prob('s2') = 0.021;
prob('s3') = 0.071;
prob('s4') = 0.165;
prob('s5') = 0.268;
prob('s6') = 0.268;
prob('s7') = 0.136;
prob('s8') = 0.047;
prob('s9') = 0.018;
prob('s10') = 0.005;

$offtext

Parameter        DDATA(d)/
         d1      80
         d2      240
         d3      40
         d4      160
         d5      240
/;

Parameter        DDATAR(d,t);
DDATAR(d,'t1') = DDATA(d);
DDATAR(d,'t2') = DDATA(d) * 1.2;
DDATAR(d,'t3') = DDATA(d) * 1.2 * 1.2;
DDATAR(d,'t4') = DDATA(d) * 1.2 * 1.2 * 1.2;
DDATAR(d,'t5') = DDATA(d) * 1.2 * 1.2 * 1.2 * 1.2;

Scalar PC  Penalty Cost  /1000/;

Scalar M       big M value     /100000/

Set iter /1*50/;

Set cutset(iter) dynamic set;
cutset(iter) = no;

Set itera /1*10/;

Set rowset(itera) dynamic set;
rowset(itera) = no;

*****************************************************

*****************************************************

Variables
         obj0     Objective Value;

Positive Variables
         xl1(cl1), xg1(cg1), xl2(cl2), xg2(cg2), xl3(cl3), xg3(cg3), xl4(cl4), xg4(cg4), xl5(cl5), xg5(cg5);

Equations
         objective0, xglim1, xllim2, xglim5, xllim6, xglim3, xllim4, xglim7, xllim8, xglim9, xllim10;

objective0..    obj0 =e= sum(cl1, CLDATA1(cl1, 'IC') /100 * xl1(cl1)) + sum(cg1, CGDATA1(cg1, 'IC') /100 * xg1(cg1))
                         + sum(cl2, CLDATA2(cl2, 'IC') /100 * xl2(cl2)) + sum(cg2, CGDATA2(cg2, 'IC') /100 * xg2(cg2))
                         + sum(cl3, CLDATA3(cl3, 'IC') /100 * xl3(cl3)) + sum(cg3, CGDATA3(cg3, 'IC') /100 * xg3(cg3))
                         + sum(cl4, CLDATA4(cl4, 'IC') /100 * xl4(cl4)) + sum(cg4, CGDATA4(cg4, 'IC') /100 * xg4(cg4))
                         + sum(cl5, CLDATA5(cl5, 'IC') /100 * xl5(cl5)) + sum(cg5, CGDATA5(cg5, 'IC') /100 * xg5(cg5)) ;

xglim1..         sum(cg1, CGDATA1(cg1, 'IC') * xg1(cg1)) =l= 200000;
xllim2..         sum(cl1, CLDATA1(cl1, 'IC')* xl1(cl1)) =l= 50000;

xglim3..         sum(cg2, CGDATA2(cg2, 'IC')* xg2(cg2)) =l= 500000;
xllim4..         sum(cl2, CLDATA2(cl2, 'IC')* xl2(cl2)) =l= 50000;

xglim5..         sum(cg3, CGDATA3(cg3, 'IC') * xg3(cg3)) =l= 500000;
xllim6..         sum(cl3, CLDATA3(cl3, 'IC') * xl3(cl3)) =l= 50000;

xglim7..         sum(cg4, CGDATA4(cg4, 'IC') * xg4(cg4)) =l= 500000;
xllim8..         sum(cl4, CLDATA4(cl4, 'IC') * xl4(cl4)) =l= 50000;

xglim9..         sum(cg5, CGDATA5(cg5, 'IC') * xg5(cg5)) =l= 500000;
xllim10..         sum(cl5, CLDATA5(cl5, 'IC') * xl5(cl5)) =l= 50000;

Model Master0 / objective0, xglim1, xllim2, xglim5, xllim6, xglim3, xllim4, xglim7, xllim8, xglim9, xllim10 /  ;

Parameters
                 xl1m(cl1), xg1m(cg1), xl2m(cl2), xg2m(cg2), xl3m(cl3), xg3m(cg3),
                 xl5m(cl5), xg5m(cg5), xl4m(cl4), xg4m(cg4);

*********************** Subproblem *******************************

Positive Variables
                 eleq1d(el,t), eleq2d(el,t), ellim1d(el,t), ellim2d(el,t),
                 cleq11d(cl1,t), cleq12d(cl1,t), cleq21d(cl2,t), cleq22d(cl2,t), cleq31d(cl3,t),
                 cleq32d(cl3,t), cleq41d(cl4,t), cleq42d(cl4,t), cleq51d(cl5,t), cleq52d(cl5,t),
                 cllim11d(cl1,t), cllim12d(cl1,t), cllim21d(cl2,t), cllim22d(cl2,t),
                 cllim31d(cl3,t), cllim32d(cl3,t), cllim41d(cl4,t), cllim42d(cl4,t), cllim51d(cl5,t), cllim52d(cl5,t),
                 eglim1d(eg,t), eglim2d(eg,t), cglim11d(cg1,t), cglim12d(cg1,t), cglim21d(cg2,t), cglim22d(cg2,t), cglim31d(cg3,t), cglim32d(cg3,t),
                 cglim41d(cg4,t), cglim42d(cg4,t), cglim51d(cg5,t), cglim52d(cg5,t), zeta(n,t),

                 eleq1dM(el,t), eleq2dM(el,t), ellim1dM(el,t), ellim2dM(el,t), eglim1dM(eg,t), eglim2dM(eg,t),
                 cleq12dM(cl1,t), cleq22dM(cl2,t), cleq32dM(cl3,t), cleq42dM(cl4,t), cleq52dM(cl5,t),
                 cleq11dM(cl1,t), cleq21dM(cl2,t), cleq31dM(cl3,t), cleq41dM(cl4,t), cleq51dM(cl5,t),
                 cllim11dM(cl1,t), cllim21dM(cl2,t), cllim31dM(cl3,t), cllim41dM(cl4,t), cllim51dM(cl5,t),
                 cllim12dM(cl1,t), cllim22dM(cl2,t), cllim32dM(cl3,t), cllim42dM(cl4,t), cllim52dM(cl5,t),
                 cglim11dM(cg1,t), cglim21dM(cg2,t), cglim31dM(cg3,t), cglim41dM(cg4,t), cglim51dM(cg5,t),
                 cglim12dM(cg1,t), cglim22dM(cg2,t), cglim32dM(cg3,t), cglim42dM(cg4,t), cglim52dM(cg5,t);

Free Variable
                 pi(n,t), subdual, cllim23d(cl2,t), cllim33d(cl3,t), cllim43d(cl4,t), cllim53d(cl5,t);

Binary Variables
                 AEG(eg,t), AEL(el,t),
                 ACG1(cg1,t),  ACG2(cg2,t),  ACG3(cg3,t),  ACG4(cg4,t),  ACG5(cg5,t),
                 ACL1(cl1,t),  ACL2(cl2,t),  ACL3(cl3,t),  ACL4(cl4,t),  ACL5(cl5,t) ;

Binary Variable
         exl1(cl1,t), exl2(cl2,t), exl3(cl3,t), exl4(cl4,t), exl5(cl5,t),
         exg1(cg1,t), exg2(cg2,t), exg3(cg3,t), exg4(cg4,t), exg5(cg5,t);

Equations
         subobj,
         uncertainty1, uncertainty2, uncertainty3, uncertainty4, uncertainty5, uncertainty6, uncertainty7, uncertainty8, uncertainty9, uncertainty0,
         uncertainty31, uncertainty32, uncertainty33, uncertainty34, uncertainty35, uncertainty41, uncertainty42, uncertainty43, uncertainty44, uncertainty45,
         uncertainty51, uncertainty52, uncertainty53, uncertainty54, uncertainty55, uncertainty61, uncertainty62, uncertainty63, uncertainty64, uncertainty65,
         existl1, existl21, existl22, existl31, existl32, existl41, existl42, existl51, existl52,
         existg1, existg21, existg22, existg31, existg32, existg41, existg42, existg51, existg52,
         peg, fel, pcg1, pcg2, pcg3, pcg4, pcg5, fcl1, fcl2, fcl3, fcl4, fcl5, thetan, rdual,
         bigMel11, bigMel12, bigMel13, bigMel14, bigMel21, bigMel22, bigMel23, bigMel24, bigMel31, bigMel32, bigMel33, bigMel34, bigMel41, bigMel42, bigMel43, bigMel44,
         bigMeg11, bigMeg12, bigMeg13, bigMeg14, bigMeg21, bigMeg22, bigMeg23, bigMeg24,
         bigMcl11, bigMcl12, bigMcl13, bigMcl14, bigMcl21, bigMcl22, bigMcl23, bigMcl24, bigMcl31, bigMcl32, bigMcl33, bigMcl34, bigMcl41, bigMcl42, bigMcl43, bigMcl44, bigMcl51, bigMcl52, bigMcl53, bigMcl54,
         bigMcl61, bigMcl62, bigMcl63, bigMcl64, bigMcl71, bigMcl72, bigMcl73, bigMcl74, bigMcl81, bigMcl82, bigMcl83, bigMcl84, bigMcl91, bigMcl92, bigMcl93, bigMcl94, bigMcl01, bigMcl02, bigMcl03, bigMcl04,
         bigMcl112, bigMcl122, bigMcl132, bigMcl142, bigMcl212, bigMcl222, bigMcl232, bigMcl242, bigMcl312, bigMcl322, bigMcl332, bigMcl342, bigMcl412, bigMcl422, bigMcl432, bigMcl442, bigMcl512, bigMcl522, bigMcl532, bigMcl542,
         bigMcl612, bigMcl622, bigMcl632, bigMcl642, bigMcl712, bigMcl722, bigMcl732, bigMcl742, bigMcl812, bigMcl822, bigMcl832, bigMcl842, bigMcl912, bigMcl922, bigMcl932, bigMcl942, bigMcl012, bigMcl022, bigMcl032, bigMcl042,
         bigMcg11, bigMcg12, bigMcg13, bigMcg14, bigMcg21, bigMcg22, bigMcg23, bigMcg24, bigMcg31, bigMcg32, bigMcg33, bigMcg34, bigMcg41, bigMcg42, bigMcg43, bigMcg44, bigMcg51, bigMcg52, bigMcg53, bigMcg54,
         bigMcg61, bigMcg62, bigMcg63, bigMcg64, bigMcg71, bigMcg72, bigMcg73, bigMcg74, bigMcg81, bigMcg82, bigMcg83, bigMcg84, bigMcg91, bigMcg92, bigMcg93, bigMcg94, bigMcg01, bigMcg02, bigMcg03, bigMcg04;
;

subobj..                 subdual =e= -( sum(t, sum(n, sum(d$mapD(d,n), DDATAR(d,t) * pi(n,t)))) -
                         sum(t, sum(el, M * eleq1dM(el,t))) -
                         sum(t, sum(el, M * eleq2dM(el,t))) -
                         sum(t, sum(el, ELDATA(el, 'FLmax') * ellim1dM(el,t))) -
                         sum(t, sum(el, ELDATA(el, 'FLmax') * ellim2dM(el,t))) -
                         sum(t, sum(cl1, M * cleq11dM(cl1,t))) - sum(t, sum(cl1, M * cleq12dM(cl1,t))) -
                         sum(t, sum(cl2, M * cleq21dM(cl2,t))) - sum(t, sum(cl2, M * cleq22dM(cl2,t))) -
                         sum(t, sum(cl3, M * cleq31dM(cl3,t))) - sum(t, sum(cl3, M * cleq32dM(cl3,t))) -
                         sum(t, sum(cl4, M * cleq41dM(cl4,t))) - sum(t, sum(cl4, M * cleq42dM(cl4,t))) -
                         sum(t, sum(cl5, M * cleq51dM(cl5,t))) - sum(t, sum(cl5, M * cleq52dM(cl5,t))) -
                         sum(t, sum(cl1, CLDATA1(cl1, 'FLmax') * cllim11dM(cl1,t))) - sum(t, sum(cl1, CLDATA1(cl1, 'FLmax') * cllim12dM(cl1,t))) -
                         sum(t, sum(cl2, CLDATA2(cl2, 'FLmax') * cllim21dM(cl2,t))) - sum(t, sum(cl2, CLDATA2(cl2, 'FLmax') * cllim22dM(cl2,t))) -
                         sum(t, sum(cl3, CLDATA3(cl3, 'FLmax') * cllim31dM(cl3,t))) - sum(t, sum(cl3, CLDATA3(cl3, 'FLmax') * cllim32dM(cl3,t))) -
                         sum(t, sum(cl4, CLDATA4(cl4, 'FLmax') * cllim41dM(cl4,t))) - sum(t, sum(cl4, CLDATA4(cl4, 'FLmax') * cllim42dM(cl4,t))) -
                         sum(t, sum(cl5, CLDATA5(cl5, 'FLmax') * cllim51dM(cl5,t))) - sum(t, sum(cl5, CLDATA5(cl5, 'FLmax') * cllim52dM(cl5,t))) -
                         sum(t, sum(eg, eglim1dM(eg,t) * EGDATA(eg, 'Pmax'))) + sum(t, sum(eg, eglim2dM(eg,t) * EGDATA(eg, 'Pmin'))) -
                         sum(t, sum(cg1, CGDATA1(cg1, 'Pmax') * cglim11dM(cg1,t))) + sum(t, sum(cg1, CGDATA1(cg1, 'Pmin') * cglim12dM(cg1,t))) -
                         sum(t, sum(cg2, CGDATA2(cg2, 'Pmax') * cglim21dM(cg2,t))) + sum(t, sum(cg2, CGDATA2(cg2, 'Pmin') * cglim22dM(cg2,t))) -
                         sum(t, sum(cg3, CGDATA3(cg3, 'Pmax') * cglim31dM(cg3,t))) + sum(t, sum(cg3, CGDATA3(cg3, 'Pmin') * cglim32dM(cg3,t))) -
                         sum(t, sum(cg4, CGDATA4(cg4, 'Pmax') * cglim41dM(cg4,t))) + sum(t, sum(cg4, CGDATA4(cg4, 'Pmin') * cglim42dM(cg4,t))) -
                         sum(t, sum(cg5, CGDATA5(cg5, 'Pmax') * cglim51dM(cg5,t))) + sum(t, sum(cg5, CGDATA5(cg5, 'Pmin') * cglim52dM(cg5,t))) -
                         sum(t, sum(n, sum(d$mapD(d,n), DDATAR(d,t)) * zeta(n,t))) );

uncertainty1(t)$(ord(t)=1)..           sum(eg, AEG(eg,t)) + sum(cg1, ACG1(cg1,t)) + sum(cg2, ACG2(cg2,t)) + sum(cg3, ACG3(cg3,t)) + sum(cg4, ACG4(cg4,t)) + sum(cg5, ACG5(cg5,t)) =l= 1;
uncertainty2(t)$(ord(t)=1)..           sum(el, AEL(el,t)) + sum(cl1, ACL1(cl1,t)) + sum(cg2, ACG2(cg2,t)) + sum(cg3, ACG3(cg3,t)) + sum(cg4, ACG4(cg4,t)) + sum(cg5, ACG5(cg5,t)) =l= 1;
uncertainty3(t)$(ord(t)=2)..           sum(eg, AEG(eg,t)) + sum(cg1, ACG1(cg1,t)) + sum(cg2, ACG2(cg2,t)) + sum(cg3, ACG3(cg3,t)) + sum(cg4, ACG4(cg4,t)) + sum(cg5, ACG5(cg5,t)) =l= 1;
uncertainty4(t)$(ord(t)=2)..           sum(el, AEL(el,t)) + sum(cl1, ACL1(cl1,t)) + sum(cg2, ACG2(cg2,t)) + sum(cg3, ACG3(cg3,t)) + sum(cg4, ACG4(cg4,t)) + sum(cg5, ACG5(cg5,t)) =l= 1;
uncertainty5(t)$(ord(t)=3)..           sum(eg, AEG(eg,t)) + sum(cg1, ACG1(cg1,t)) + sum(cg2, ACG2(cg2,t)) + sum(cg3, ACG3(cg3,t)) + sum(cg4, ACG4(cg4,t)) + sum(cg5, ACG5(cg5,t)) =l= 1;
uncertainty6(t)$(ord(t)=3)..           sum(el, AEL(el,t)) + sum(cl1, ACL1(cl1,t)) + sum(cg2, ACG2(cg2,t)) + sum(cg3, ACG3(cg3,t)) + sum(cg4, ACG4(cg4,t)) + sum(cg5, ACG5(cg5,t)) =l= 1;
uncertainty7(t)$(ord(t)=4)..           sum(eg, AEG(eg,t)) + sum(cg1, ACG1(cg1,t)) + sum(cg2, ACG2(cg2,t)) + sum(cg3, ACG3(cg3,t)) + sum(cg4, ACG4(cg4,t)) + sum(cg5, ACG5(cg5,t)) =l= 1;
uncertainty8(t)$(ord(t)=4)..           sum(el, AEL(el,t)) + sum(cl1, ACL1(cl1,t)) + sum(cg2, ACG2(cg2,t)) + sum(cg3, ACG3(cg3,t)) + sum(cg4, ACG4(cg4,t)) + sum(cg5, ACG5(cg5,t)) =l= 1;
uncertainty9(t)$(ord(t)=5)..           sum(eg, AEG(eg,t)) + sum(cg1, ACG1(cg1,t)) + sum(cg2, ACG2(cg2,t)) + sum(cg3, ACG3(cg3,t)) + sum(cg4, ACG4(cg4,t)) + sum(cg5, ACG5(cg5,t)) =l= 1;
uncertainty0(t)$(ord(t)=5)..           sum(el, AEL(el,t)) + sum(cl1, ACL1(cl1,t)) + sum(cg2, ACG2(cg2,t)) + sum(cg3, ACG3(cg3,t)) + sum(cg4, ACG4(cg4,t)) + sum(cg5, ACG5(cg5,t)) =l= 1;

uncertainty31(cl1,t)$(ord(t)>=1)..           ACL1(cl1,t) =l= xl1m(cl1);
uncertainty32(cl2,t)$(ord(t)>=2)..           ACL2(cl2,t) =l= xl2m(cl2);
uncertainty33(cl3,t)$(ord(t)>=3)..           ACL3(cl3,t) =l= xl3m(cl3);
uncertainty34(cl4,t)$(ord(t)>=4)..           ACL4(cl4,t) =l= xl4m(cl4);
uncertainty35(cl5,t)$(ord(t)>=5)..           ACL5(cl5,t) =l= xl5m(cl5);
uncertainty41(cg1,t)$(ord(t)>=1)..           ACG1(cg1,t) =l= xg1m(cg1);
uncertainty42(cg2,t)$(ord(t)>=2)..           ACG2(cg2,t) =l= xg2m(cg2);
uncertainty43(cg3,t)$(ord(t)>=3)..           ACG3(cg3,t) =l= xg3m(cg3);
uncertainty44(cg4,t)$(ord(t)>=4)..           ACG4(cg4,t) =l= xg4m(cg4);
uncertainty45(cg5,t)$(ord(t)>=5)..           ACG5(cg5,t) =l= xg5m(cg5);

uncertainty51(cl1,t)$(ord(t)<=0)..           ACL1(cl1,t) =l= 0;
uncertainty52(cl2,t)$(ord(t)<=1)..           ACL2(cl2,t) =l= 0;
uncertainty53(cl3,t)$(ord(t)<=2)..           ACL3(cl3,t) =l= 0;
uncertainty54(cl4,t)$(ord(t)<=3)..           ACL4(cl4,t) =l= 0;
uncertainty55(cl5,t)$(ord(t)<=4)..           ACL5(cl5,t) =l= 0;
uncertainty61(cg1,t)$(ord(t)<=0)..           ACG1(cg1,t) =l= 0;
uncertainty62(cg2,t)$(ord(t)<=1)..           ACG2(cg2,t) =l= 0;
uncertainty63(cg3,t)$(ord(t)<=2)..           ACG3(cg3,t) =l= 0;
uncertainty64(cg4,t)$(ord(t)<=3)..           ACG4(cg4,t) =l= 0;
uncertainty65(cg5,t)$(ord(t)<=4)..           ACG5(cg5,t) =l= 0;

$ontext

uncertainty51(cl1,t)$(ord(t)>=2)..           ACL1(cl1,t) =g= ACL1(cl1,t-1);
uncertainty52(cl2,t)$(ord(t)>=2)..           ACL2(cl2,t) =g= ACL2(cl2,t-1);
uncertainty53(cl3,t)$(ord(t)>=2)..           ACL3(cl3,t) =g= ACL3(cl3,t-1);
uncertainty54(cl4,t)$(ord(t)>=2)..           ACL4(cl4,t) =g= ACL4(cl4,t-1);
uncertainty55(cl5,t)$(ord(t)>=2)..           ACL5(cl5,t) =g= ACL5(cl5,t-1);
uncertainty61(cg1,t)$(ord(t)>=2)..           ACG1(cg1,t) =g= ACG1(cg1,t-1);
uncertainty62(cg2,t)$(ord(t)>=2)..           ACG2(cg2,t) =g= ACG2(cg2,t-1);
uncertainty63(cg3,t)$(ord(t)>=2)..           ACG3(cg3,t) =g= ACG3(cg3,t-1);
uncertainty64(cg4,t)$(ord(t)>=2)..           ACG4(cg4,t) =g= ACG4(cg4,t-1);
uncertainty65(cg5,t)$(ord(t)>=2)..           ACG5(cg5,t) =g= ACG5(cg5,t-1);
$offtext

existl1(cl1,t)..                 exl1(cl1,t) =e= xl1m(cl1) * (1-ACL1(cl1,t));
existl21(cl2,t)$(ord(t)>=2)..    exl2(cl2,t) =e= xl2m(cl2) * (1-ACL2(cl2,t));
existl22(cl2,t)$(ord(t)<2)..     exl2(cl2,t) =e= 0;
existl31(cl3,t)$(ord(t)>=3)..    exl3(cl3,t) =e= xl3m(cl3) * (1-ACL3(cl3,t));
existl32(cl3,t)$(ord(t)<3)..     exl3(cl3,t) =e= 0;
existl41(cl4,t)$(ord(t)>=4)..    exl4(cl4,t) =e= xl4m(cl4) * (1-ACL4(cl4,t));
existl42(cl4,t)$(ord(t)<4)..     exl4(cl4,t) =e= 0;
existl51(cl5,t)$(ord(t)>=5)..    exl5(cl5,t) =e= xl5m(cl5) * (1-ACL5(cl5,t));
existl52(cl5,t)$(ord(t)<5)..     exl5(cl5,t) =e= 0;

existg1(cg1,t)..                 exg1(cg1,t) =e= xg1m(cg1) * (1-ACG1(cg1,t));
existg21(cg2,t)$(ord(t)>=2)..    exg2(cg2,t) =e= xg2m(cg2) * (1-ACG2(cg2,t));
existg22(cg2,t)$(ord(t)<2)..     exg2(cg2,t) =e= 0;
existg31(cg3,t)$(ord(t)>=3)..    exg3(cg3,t) =e= xg3m(cg3) * (1-ACG3(cg3,t));
existg32(cg3,t)$(ord(t)<3)..     exg3(cg3,t) =e= 0;
existg41(cg4,t)$(ord(t)>=4)..    exg4(cg4,t) =e= xg4m(cg4) * (1-ACG4(cg4,t));
existg42(cg4,t)$(ord(t)<4)..     exg4(cg4,t) =e= 0;
existg51(cg5,t)$(ord(t)>=5)..    exg5(cg5,t) =e= xg5m(cg5) * (1-ACG5(cg5,t));
existg52(cg5,t)$(ord(t)<5)..     exg5(cg5,t) =e= 0;

peg(eg,t)..                - eglim1d(eg,t) + eglim2d(eg,t) + sum(n$mapEG(eg,n), pi(n,t)) =l= EGDATA(eg, 'OC');

fel(el,t)..                eleq1d(el,t) - eleq2d(el,t) + ellim1d(el,t) - ellim2d(el,t) + sum(n$mapERL(el,n), pi(n,t)) - sum(n$mapESL(el,n), pi(n,t)) =e= 0;

pcg1(cg1,t)..              - cglim11d(cg1,t) + cglim12d(cg1,t) + sum(n$mapCG1(cg1,n), pi(n,t)) =l= CGDATA1(cg1, 'OC');
pcg2(cg2,t)..              - cglim21d(cg2,t) + cglim22d(cg2,t) + sum(n$mapCG2(cg2,n), pi(n,t)) =l= CGDATA2(cg2, 'OC');
pcg3(cg3,t)..              - cglim31d(cg3,t) + cglim32d(cg3,t) + sum(n$mapCG3(cg3,n), pi(n,t)) =l= CGDATA3(cg3, 'OC');
pcg4(cg4,t)..              - cglim41d(cg4,t) + cglim42d(cg4,t) + sum(n$mapCG4(cg4,n), pi(n,t)) =l= CGDATA4(cg4, 'OC');
pcg5(cg5,t)..              - cglim51d(cg5,t) + cglim52d(cg5,t) + sum(n$mapCG5(cg5,n), pi(n,t)) =l= CGDATA5(cg5, 'OC');

fcl1(cl1,t)..                cleq11d(cl1,t) - cleq12d(cl1,t) + cllim11d(cl1,t) - cllim12d(cl1,t) + sum(n$mapCRL1(cl1,n), pi(n,t)) - sum(n$mapCSL1(cl1,n), pi(n,t)) =e= 0;
fcl2(cl2,t)..                cleq21d(cl2,t) - cleq22d(cl2,t) + cllim21d(cl2,t) - cllim22d(cl2,t) + sum(n$mapCRL2(cl2,n), pi(n,t)) - sum(n$mapCSL2(cl2,n), pi(n,t)) =e= 0;
fcl3(cl3,t)..                cleq31d(cl3,t) - cleq32d(cl3,t) + cllim31d(cl3,t) - cllim32d(cl3,t) + sum(n$mapCRL3(cl3,n), pi(n,t)) - sum(n$mapCSL3(cl3,n), pi(n,t)) =e= 0;
fcl4(cl4,t)..                cleq41d(cl4,t) - cleq42d(cl4,t) + cllim41d(cl4,t) - cllim42d(cl4,t) + sum(n$mapCRL4(cl4,n), pi(n,t)) - sum(n$mapCSL4(cl4,n), pi(n,t)) =e= 0;
fcl5(cl5,t)..                cleq51d(cl5,t) - cleq52d(cl5,t) + cllim51d(cl5,t) - cllim52d(cl5,t) + sum(n$mapCRL5(cl5,n), pi(n,t)) - sum(n$mapCSL5(cl5,n), pi(n,t)) =e= 0;

thetan(n,t)..            sum(el$mapESL(el,n), eleq1d(el,t) / ELDATA(el, 'X')) - sum(el$mapERL(el,n), eleq1d(el,t) / ELDATA(el, 'X')) -
                         sum(el$mapESL(el,n), eleq2d(el,t) / ELDATA(el, 'X')) + sum(el$mapERL(el,n), eleq2d(el,t) / ELDATA(el, 'X')) +
                         sum(cl1$mapCSL1(cl1,n), cleq11d(cl1,t) / CLDATA1(cl1, 'X')) - sum(cl1$mapCRL1(cl1,n), cleq11d(cl1,t) / CLDATA1(cl1, 'X')) -
                         sum(cl1$mapCSL1(cl1,n), cleq12d(cl1,t) / CLDATA1(cl1, 'X')) + sum(cl1$mapCRL1(cl1,n), cleq12d(cl1,t) / CLDATA1(cl1, 'X')) +
                         sum(cl2$mapCSL2(cl2,n), cleq21d(cl2,t) / CLDATA2(cl2, 'X')) - sum(cl2$mapCRL2(cl2,n), cleq21d(cl2,t) / CLDATA2(cl2, 'X')) -
                         sum(cl2$mapCSL2(cl2,n), cleq22d(cl2,t) / CLDATA2(cl2, 'X')) + sum(cl2$mapCRL2(cl2,n), cleq22d(cl2,t) / CLDATA2(cl2, 'X')) +
                         sum(cl3$mapCSL3(cl3,n), cleq31d(cl3,t) / CLDATA3(cl3, 'X')) - sum(cl3$mapCRL3(cl3,n), cleq31d(cl3,t) / CLDATA3(cl3, 'X')) -
                         sum(cl3$mapCSL3(cl3,n), cleq32d(cl3,t) / CLDATA3(cl3, 'X')) + sum(cl3$mapCRL3(cl3,n), cleq32d(cl3,t) / CLDATA3(cl3, 'X')) +
                         sum(cl4$mapCSL4(cl4,n), cleq41d(cl4,t) / CLDATA4(cl4, 'X')) - sum(cl4$mapCRL4(cl4,n), cleq41d(cl4,t) / CLDATA4(cl4, 'X')) -
                         sum(cl4$mapCSL4(cl4,n), cleq42d(cl4,t) / CLDATA4(cl4, 'X')) + sum(cl4$mapCRL4(cl4,n), cleq42d(cl4,t) / CLDATA4(cl4, 'X')) +
                         sum(cl5$mapCSL5(cl5,n), cleq51d(cl5,t) / CLDATA5(cl5, 'X')) - sum(cl5$mapCRL5(cl5,n), cleq51d(cl5,t) / CLDATA5(cl5, 'X')) -
                         sum(cl5$mapCSL5(cl5,n), cleq52d(cl5,t) / CLDATA5(cl5, 'X')) + sum(cl5$mapCRL5(cl5,n), cleq52d(cl5,t) / CLDATA5(cl5, 'X')) =e= 0;

rdual(d,t)..             sum(n$mapD(d,n), pi(n,t)) - sum(n$mapD(d,n), zeta(n,t)) =l= PC;

bigMel11(el,t)..              eleq1dM(el,t) =l= eleq1d(el,t) + M * (1-AEL(el,t));
bigMel12(el,t)..              eleq1dM(el,t) =g= eleq1d(el,t) - M * (1-AEL(el,t));
bigMel13(el,t)..              eleq1dM(el,t) =l= M * AEL(el,t);
bigMel14(el,t)..              eleq1dM(el,t) =g= - M * AEL(el,t);
bigMel21(el,t)..              eleq2dM(el,t) =l= eleq2d(el,t) + M * (1-AEL(el,t));
bigMel22(el,t)..              eleq2dM(el,t) =g= eleq2d(el,t) - M * (1-AEL(el,t));
bigMel23(el,t)..              eleq2dM(el,t) =l= M * AEL(el,t);
bigMel24(el,t)..              eleq2dM(el,t) =g= - M * AEL(el,t);

bigMel31(el,t)..              ellim1dM(el,t) =l= ellim1d(el,t) + M * AEL(el,t);
bigMel32(el,t)..              ellim1dM(el,t) =g= ellim1d(el,t) - M * AEL(el,t);
bigMel33(el,t)..              ellim1dM(el,t) =l= M * (1-AEL(el,t));
bigMel34(el,t)..              ellim1dM(el,t) =g= - M * (1-AEL(el,t));
bigMel41(el,t)..              ellim2dM(el,t) =l= ellim2d(el,t) + M * AEL(el,t);
bigMel42(el,t)..              ellim2dM(el,t) =g= ellim2d(el,t) - M * AEL(el,t);
bigMel43(el,t)..              ellim2dM(el,t) =l= M * (1-AEL(el,t));
bigMel44(el,t)..              ellim2dM(el,t) =g= - M * (1-AEL(el,t));

bigMeg11(eg,t)..              eglim1dM(eg,t) =l= eglim1d(eg,t) + M * AEG(eg,t);
bigMeg12(eg,t)..              eglim1dM(eg,t) =g= eglim1d(eg,t) - M * AEG(eg,t);
bigMeg13(eg,t)..              eglim1dM(eg,t) =l= M * (1-AEG(eg,t));
bigMeg14(eg,t)..              eglim1dM(eg,t) =g= - M * (1-AEG(eg,t));
bigMeg21(eg,t)..              eglim2dM(eg,t) =l= eglim2d(eg,t) + M * AEG(eg,t);
bigMeg22(eg,t)..              eglim2dM(eg,t) =g= eglim2d(eg,t) - M * AEG(eg,t);
bigMeg23(eg,t)..              eglim2dM(eg,t) =l= M * (1-AEG(eg,t));
bigMeg24(eg,t)..              eglim2dM(eg,t) =g= - M * (1-AEG(eg,t));

bigMcl11(cl1,t)..              cleq11dM(cl1,t) =l= cleq11d(cl1,t) + M * exl1(cl1,t);
bigMcl12(cl1,t)..              cleq11dM(cl1,t) =g= cleq11d(cl1,t) - M * exl1(cl1,t);
bigMcl13(cl1,t)..              cleq11dM(cl1,t) =l= M * (1-exl1(cl1,t));
bigMcl14(cl1,t)..              cleq11dM(cl1,t) =g= - M * (1-exl1(cl1,t));
bigMcl21(cl1,t)..              cleq12dM(cl1,t) =l= cleq12d(cl1,t) + M * exl1(cl1,t);
bigMcl22(cl1,t)..              cleq12dM(cl1,t) =g= cleq12d(cl1,t) - M * exl1(cl1,t);
bigMcl23(cl1,t)..              cleq12dM(cl1,t) =l= M * (1-exl1(cl1,t));
bigMcl24(cl1,t)..              cleq12dM(cl1,t) =g= - M * (1-exl1(cl1,t));
bigMcl31(cl2,t)..              cleq21dM(cl2,t) =l= cleq21d(cl2,t) + M * exl2(cl2,t);
bigMcl32(cl2,t)..              cleq21dM(cl2,t) =g= cleq21d(cl2,t) - M * exl2(cl2,t);
bigMcl33(cl2,t)..              cleq21dM(cl2,t) =l= M * (1-exl2(cl2,t));
bigMcl34(cl2,t)..              cleq21dM(cl2,t) =g= - M * (1-exl2(cl2,t));
bigMcl41(cl2,t)..              cleq22dM(cl2,t) =l= cleq22d(cl2,t) + M * exl2(cl2,t);
bigMcl42(cl2,t)..              cleq22dM(cl2,t) =g= cleq22d(cl2,t) - M * exl2(cl2,t);
bigMcl43(cl2,t)..              cleq22dM(cl2,t) =l= M * (1-exl2(cl2,t));
bigMcl44(cl2,t)..              cleq22dM(cl2,t) =g= - M * (1-exl2(cl2,t));
bigMcl51(cl3,t)..              cleq31dM(cl3,t) =l= cleq31d(cl3,t) + M * exl3(cl3,t);
bigMcl52(cl3,t)..              cleq31dM(cl3,t) =g= cleq31d(cl3,t) - M * exl3(cl3,t);
bigMcl53(cl3,t)..              cleq31dM(cl3,t) =l= M * (1-exl3(cl3,t));
bigMcl54(cl3,t)..              cleq31dM(cl3,t) =g= - M * (1-exl3(cl3,t));
bigMcl61(cl3,t)..              cleq32dM(cl3,t) =l= cleq32d(cl3,t) + M * exl3(cl3,t);
bigMcl62(cl3,t)..              cleq32dM(cl3,t) =g= cleq32d(cl3,t) - M * exl3(cl3,t);
bigMcl63(cl3,t)..              cleq32dM(cl3,t) =l= M * (1-exl3(cl3,t));
bigMcl64(cl3,t)..              cleq32dM(cl3,t) =g= - M * (1-exl3(cl3,t));
bigMcl71(cl4,t)..              cleq41dM(cl4,t) =l= cleq41d(cl4,t) + M * exl4(cl4,t);
bigMcl72(cl4,t)..              cleq41dM(cl4,t) =g= cleq41d(cl4,t) - M * exl4(cl4,t);
bigMcl73(cl4,t)..              cleq41dM(cl4,t) =l= M * (1-exl4(cl4,t));
bigMcl74(cl4,t)..              cleq41dM(cl4,t) =g= - M * (1-exl4(cl4,t));
bigMcl81(cl4,t)..              cleq42dM(cl4,t) =l= cleq42d(cl4,t) + M * exl4(cl4,t);
bigMcl82(cl4,t)..              cleq42dM(cl4,t) =g= cleq42d(cl4,t) - M * exl4(cl4,t);
bigMcl83(cl4,t)..              cleq42dM(cl4,t) =l= M * (1-exl4(cl4,t));
bigMcl84(cl4,t)..              cleq42dM(cl4,t) =g= - M * (1-exl4(cl4,t));
bigMcl91(cl5,t)..              cleq51dM(cl5,t) =l= cleq51d(cl5,t) + M * exl5(cl5,t);
bigMcl92(cl5,t)..              cleq51dM(cl5,t) =g= cleq51d(cl5,t) - M * exl5(cl5,t);
bigMcl93(cl5,t)..              cleq51dM(cl5,t) =l= M * (1-exl5(cl5,t));
bigMcl94(cl5,t)..              cleq51dM(cl5,t) =g= - M * (1-exl5(cl5,t));
bigMcl01(cl5,t)..              cleq52dM(cl5,t) =l= cleq52d(cl5,t) + M * exl5(cl5,t);
bigMcl02(cl5,t)..              cleq52dM(cl5,t) =g= cleq52d(cl5,t) - M * exl5(cl5,t);
bigMcl03(cl5,t)..              cleq52dM(cl5,t) =l= M * (1-exl5(cl5,t));
bigMcl04(cl5,t)..              cleq52dM(cl5,t) =g= - M * (1-exl5(cl5,t));

bigMcl112(cl1,t)..              cllim11dM(cl1,t) =l= cllim11d(cl1,t) + M * (1-exl1(cl1,t));
bigMcl122(cl1,t)..              cllim11dM(cl1,t) =g= cllim11d(cl1,t) - M * (1-exl1(cl1,t));
bigMcl132(cl1,t)..              cllim11dM(cl1,t) =l= M * exl1(cl1,t);
bigMcl142(cl1,t)..              cllim11dM(cl1,t) =g= - M * exl1(cl1,t);
bigMcl212(cl1,t)..              cllim12dM(cl1,t) =l= cllim12d(cl1,t) + M * (1-exl1(cl1,t));
bigMcl222(cl1,t)..              cllim12dM(cl1,t) =g= cllim12d(cl1,t) - M * (1-exl1(cl1,t));
bigMcl232(cl1,t)..              cllim12dM(cl1,t) =l= M * exl1(cl1,t);
bigMcl242(cl1,t)..              cllim12dM(cl1,t) =g= - M * exl1(cl1,t);
bigMcl312(cl2,t)..              cllim21dM(cl2,t) =l= cllim21d(cl2,t) + M * (1-exl2(cl2,t));
bigMcl322(cl2,t)..              cllim21dM(cl2,t) =g= cllim21d(cl2,t) - M * (1-exl2(cl2,t));
bigMcl332(cl2,t)..              cllim21dM(cl2,t) =l= M * exl2(cl2,t);
bigMcl342(cl2,t)..              cllim21dM(cl2,t) =g= - M * exl2(cl2,t);
bigMcl412(cl2,t)..              cllim22dM(cl2,t) =l= cllim22d(cl2,t) + M * (1-exl2(cl2,t));
bigMcl422(cl2,t)..              cllim22dM(cl2,t) =g= cllim22d(cl2,t) - M * (1-exl2(cl2,t));
bigMcl432(cl2,t)..              cllim22dM(cl2,t) =l= M * exl2(cl2,t);
bigMcl442(cl2,t)..              cllim22dM(cl2,t) =g= - M * exl2(cl2,t);
bigMcl512(cl3,t)..              cllim31dM(cl3,t) =l= cllim31d(cl3,t) + M * (1-exl3(cl3,t));
bigMcl522(cl3,t)..              cllim31dM(cl3,t) =g= cllim31d(cl3,t) - M * (1-exl3(cl3,t));
bigMcl532(cl3,t)..              cllim31dM(cl3,t) =l= M * exl3(cl3,t);
bigMcl542(cl3,t)..              cllim31dM(cl3,t) =g= - M * exl3(cl3,t);
bigMcl612(cl3,t)..              cllim32dM(cl3,t) =l= cllim32d(cl3,t) + M * (1-exl3(cl3,t));
bigMcl622(cl3,t)..              cllim32dM(cl3,t) =g= cllim32d(cl3,t) - M * (1-exl3(cl3,t));
bigMcl632(cl3,t)..              cllim32dM(cl3,t) =l= M * exl3(cl3,t);
bigMcl642(cl3,t)..              cllim32dM(cl3,t) =g= - M * exl3(cl3,t);
bigMcl712(cl4,t)..              cllim41dM(cl4,t) =l= cllim41d(cl4,t) + M * (1-exl4(cl4,t));
bigMcl722(cl4,t)..              cllim41dM(cl4,t) =g= cllim41d(cl4,t) - M * (1-exl4(cl4,t));
bigMcl732(cl4,t)..              cllim41dM(cl4,t) =l= M * exl4(cl4,t);
bigMcl742(cl4,t)..              cllim41dM(cl4,t) =g= - M * exl4(cl4,t);
bigMcl812(cl4,t)..              cllim42dM(cl4,t) =l= cllim42d(cl4,t) + M * (1-exl4(cl4,t));
bigMcl822(cl4,t)..              cllim42dM(cl4,t) =g= cllim42d(cl4,t) - M * (1-exl4(cl4,t));
bigMcl832(cl4,t)..              cllim42dM(cl4,t) =l= M * exl4(cl4,t);
bigMcl842(cl4,t)..              cllim42dM(cl4,t) =g= - M * exl4(cl4,t);
bigMcl912(cl5,t)..              cllim51dM(cl5,t) =l= cllim51d(cl5,t) + M * (1-exl5(cl5,t));
bigMcl922(cl5,t)..              cllim51dM(cl5,t) =g= cllim51d(cl5,t) - M * (1-exl5(cl5,t));
bigMcl932(cl5,t)..              cllim51dM(cl5,t) =l= M * exl5(cl5,t);
bigMcl942(cl5,t)..              cllim51dM(cl5,t) =g= - M * exl5(cl5,t);
bigMcl012(cl5,t)..              cllim52dM(cl5,t) =l= cllim52d(cl5,t) + M * (1-exl5(cl5,t));
bigMcl022(cl5,t)..              cllim52dM(cl5,t) =g= cllim52d(cl5,t) - M * (1-exl5(cl5,t));
bigMcl032(cl5,t)..              cllim52dM(cl5,t) =l= M * exl5(cl5,t);
bigMcl042(cl5,t)..              cllim52dM(cl5,t) =g= - M * exl5(cl5,t);

bigMcg11(cg1,t)..              cglim11dM(cg1,t) =l= cglim11d(cg1,t) + M * (1-exg1(cg1,t));
bigMcg12(cg1,t)..              cglim11dM(cg1,t) =g= cglim11d(cg1,t) - M * (1-exg1(cg1,t));
bigMcg13(cg1,t)..              cglim11dM(cg1,t) =l= M * exg1(cg1,t);
bigMcg14(cg1,t)..              cglim11dM(cg1,t) =g= - M * exg1(cg1,t);
bigMcg21(cg1,t)..              cglim12dM(cg1,t) =l= cglim12d(cg1,t) + M * (1-exg1(cg1,t));
bigMcg22(cg1,t)..              cglim12dM(cg1,t) =g= cglim12d(cg1,t) - M * (1-exg1(cg1,t));
bigMcg23(cg1,t)..              cglim12dM(cg1,t) =l= M * exg1(cg1,t);
bigMcg24(cg1,t)..              cglim12dM(cg1,t) =g= - M * exg1(cg1,t);
bigMcg31(cg2,t)..              cglim21dM(cg2,t) =l= cglim21d(cg2,t) + M * (1-exg2(cg2,t));
bigMcg32(cg2,t)..              cglim21dM(cg2,t) =g= cglim21d(cg2,t) - M * (1-exg2(cg2,t));
bigMcg33(cg2,t)..              cglim21dM(cg2,t) =l= M * exg2(cg2,t);
bigMcg34(cg2,t)..              cglim21dM(cg2,t) =g= - M * exg2(cg2,t);
bigMcg41(cg2,t)..              cglim22dM(cg2,t) =l= cglim22d(cg2,t) + M * (1-exg2(cg2,t));
bigMcg42(cg2,t)..              cglim22dM(cg2,t) =g= cglim22d(cg2,t) - M * (1-exg2(cg2,t));
bigMcg43(cg2,t)..              cglim22dM(cg2,t) =l= M * exg2(cg2,t);
bigMcg44(cg2,t)..              cglim22dM(cg2,t) =g= - M * exg2(cg2,t);
bigMcg51(cg3,t)..              cglim31dM(cg3,t) =l= cglim31d(cg3,t) + M * (1-exg3(cg3,t));
bigMcg52(cg3,t)..              cglim31dM(cg3,t) =g= cglim31d(cg3,t) - M * (1-exg3(cg3,t));
bigMcg53(cg3,t)..              cglim31dM(cg3,t) =l= M * exg3(cg3,t);
bigMcg54(cg3,t)..              cglim31dM(cg3,t) =g= - M * exg3(cg3,t);
bigMcg61(cg3,t)..              cglim32dM(cg3,t) =l= cglim32d(cg3,t) + M * (1-exg3(cg3,t));
bigMcg62(cg3,t)..              cglim32dM(cg3,t) =g= cglim32d(cg3,t) - M * (1-exg3(cg3,t));
bigMcg63(cg3,t)..              cglim32dM(cg3,t) =l= M * exg3(cg3,t);
bigMcg64(cg3,t)..              cglim32dM(cg3,t) =g= - M * exg3(cg3,t);
bigMcg71(cg4,t)..              cglim41dM(cg4,t) =l= cglim41d(cg4,t) + M * (1-exg4(cg4,t));
bigMcg72(cg4,t)..              cglim41dM(cg4,t) =g= cglim41d(cg4,t) - M * (1-exg4(cg4,t));
bigMcg73(cg4,t)..              cglim41dM(cg4,t) =l= M * exg4(cg4,t);
bigMcg74(cg4,t)..              cglim41dM(cg4,t) =g= - M * exg4(cg4,t);
bigMcg81(cg4,t)..              cglim42dM(cg4,t) =l= cglim42d(cg4,t) + M * (1-exg4(cg4,t));
bigMcg82(cg4,t)..              cglim42dM(cg4,t) =g= cglim42d(cg4,t) - M * (1-exg4(cg4,t));
bigMcg83(cg4,t)..              cglim42dM(cg4,t) =l= M * exg4(cg4,t);
bigMcg84(cg4,t)..              cglim42dM(cg4,t) =g= - M * exg4(cg4,t);
bigMcg91(cg5,t)..              cglim51dM(cg5,t) =l= cglim51d(cg5,t) + M * (1-exg5(cg5,t));
bigMcg92(cg5,t)..              cglim51dM(cg5,t) =g= cglim51d(cg5,t) - M * (1-exg5(cg5,t));
bigMcg93(cg5,t)..              cglim51dM(cg5,t) =l= M * exg5(cg5,t);
bigMcg94(cg5,t)..              cglim51dM(cg5,t) =g= - M * exg5(cg5,t);
bigMcg01(cg5,t)..              cglim52dM(cg5,t) =l= cglim52d(cg5,t) + M * (1-exg5(cg5,t));
bigMcg02(cg5,t)..              cglim52dM(cg5,t) =g= cglim52d(cg5,t) - M * (1-exg5(cg5,t));
bigMcg03(cg5,t)..              cglim52dM(cg5,t) =l= M * exg5(cg5,t);
bigMcg04(cg5,t)..              cglim52dM(cg5,t) =g= - M * exg5(cg5,t);

Model dualsp /subobj,
         uncertainty1, uncertainty2, uncertainty3, uncertainty4, uncertainty5, uncertainty6, uncertainty7, uncertainty8, uncertainty9, uncertainty0,
         uncertainty31, uncertainty32, uncertainty33, uncertainty34, uncertainty35, uncertainty41, uncertainty42, uncertainty43, uncertainty44, uncertainty45,
         uncertainty51, uncertainty52, uncertainty53, uncertainty54, uncertainty55, uncertainty61, uncertainty62, uncertainty63, uncertainty64, uncertainty65,
         existl1, existl21, existl22, existl31, existl32, existl41, existl42, existl51, existl52,
         existg1, existg21, existg22, existg31, existg32, existg41, existg42, existg51, existg52,
         peg, fel, pcg1, pcg2, pcg3, pcg4, pcg5, fcl1, fcl2, fcl3, fcl4, fcl5, thetan, rdual,
         bigMel11, bigMel12, bigMel13, bigMel14, bigMel21, bigMel22, bigMel23, bigMel24, bigMel31, bigMel32, bigMel33, bigMel34, bigMel41, bigMel42, bigMel43, bigMel44,
         bigMeg11, bigMeg12, bigMeg13, bigMeg14, bigMeg21, bigMeg22, bigMeg23, bigMeg24,
         bigMcl11, bigMcl12, bigMcl13, bigMcl14, bigMcl21, bigMcl22, bigMcl23, bigMcl24, bigMcl31, bigMcl32, bigMcl33, bigMcl34, bigMcl41, bigMcl42, bigMcl43, bigMcl44, bigMcl51, bigMcl52, bigMcl53, bigMcl54,
         bigMcl61, bigMcl62, bigMcl63, bigMcl64, bigMcl71, bigMcl72, bigMcl73, bigMcl74, bigMcl81, bigMcl82, bigMcl83, bigMcl84, bigMcl91, bigMcl92, bigMcl93, bigMcl94, bigMcl01, bigMcl02, bigMcl03, bigMcl04,
         bigMcl112, bigMcl122, bigMcl132, bigMcl142, bigMcl212, bigMcl222, bigMcl232, bigMcl242, bigMcl312, bigMcl322, bigMcl332, bigMcl342, bigMcl412, bigMcl422, bigMcl432, bigMcl442, bigMcl512, bigMcl522, bigMcl532, bigMcl542,
         bigMcl612, bigMcl622, bigMcl632, bigMcl642, bigMcl712, bigMcl722, bigMcl732, bigMcl742, bigMcl812, bigMcl822, bigMcl832, bigMcl842, bigMcl912, bigMcl922, bigMcl932, bigMcl942, bigMcl012, bigMcl022, bigMcl032, bigMcl042,
         bigMcg11, bigMcg12, bigMcg13, bigMcg14, bigMcg21, bigMcg22, bigMcg23, bigMcg24, bigMcg31, bigMcg32, bigMcg33, bigMcg34, bigMcg41, bigMcg42, bigMcg43, bigMcg44, bigMcg51, bigMcg52, bigMcg53, bigMcg54,
         bigMcg61, bigMcg62, bigMcg63, bigMcg64, bigMcg71, bigMcg72, bigMcg73, bigMcg74, bigMcg81, bigMcg82, bigMcg83, bigMcg84, bigMcg91, bigMcg92, bigMcg93, bigMcg94, bigMcg01, bigMcg02, bigMcg03, bigMcg04
/;

******************* Revisited Master Problem **********************

$ontext
Free Variable
         efm(el, s, itera)           Line flow in line l
         cfm(cl, s, itera)
         thetam(n, s, itera)    Bus angle of bus n;

Positive Variable
         rm(d, s, itera)     load violation values
         epm(eg, s, itera)     Generation of Generator g
         cpm(cg, s, itera),
         eta;

Parameters
         AEGm(eg, itera), AELm(el, itera), ACLm(cl, itera), ACGm(cg, itera);

Binary variables
         z1m(cl, itera), z2m(cg, itera);

Equations
         loadbalance,
         eleq1, eleq2,
         ellim1, ellim2,
         cleq1, cleq2,
         cllim1, cllim2,
         eglim1, eglim2,
         cglim1, cglim2, zcon112, zcon122,zcon132,zcon212,zcon222,zcon232;

variable         remasobj;

Equations
         remasobjj, Lower;

remasobjj..              remasobj =e= sum(cl, CLDATA(cl, '5') * xl(cl)) + sum(cg, CGDATA(cg, 'IC') * xg(cg)) + eta;

Lower(rowset)..       eta =g= sum(s, prob(s) * (sum(eg, epm(eg, s, rowset) * EGDATA(eg, 'OC')) + sum(cg, cpm(cg, s, rowset) * CGDATA(cg, 'OC')) +
                         sum(d, rm(d, s, rowset) * PC)));

loadbalance(n, s, rowset).. sum(cg$mapCG(cg,n), cpm(cg, s, rowset)) + sum(eg$mapEG(eg,n), epm(eg, s, rowset)) -
                            sum(cl$mapCSL(cl,n), cfm(cl, s, rowset)) + sum(cl$mapCRL(cl,n), cfm(cl, s, rowset)) -
                            sum(el$mapESL(el,n), efm(el, s, rowset)) + sum(el$mapERL(el,n), efm(el, s, rowset)) + sum(d$mapD(d,n), rm(d, s, rowset))
                            =e= sum(d$mapD(d,n), DDATA(d,s));

eleq1(el, s, rowset)..              efm(el, s, rowset) =g= (sum(n$mapESL(el,n), thetam(n, s, rowset)) -
                                    sum(n$mapERL(el,n), thetam(n, s, rowset))) / ELDATA(el, '1') - M * AELm(el, rowset);
eleq2(el, s, rowset)..              efm(el, s, rowset) =l= (sum(n$mapESL(el,n), thetam(n, s, rowset)) -
                                    sum(n$mapERL(el,n), thetam(n, s, rowset))) / ELDATA(el, '1') + M * AELm(el, rowset);
ellim1(el, s, rowset)..             efm(el, s, rowset) =g= - (1-AELm(el, rowset)) * ELDATA(el, '4');
ellim2(el, s, rowset)..             efm(el, s, rowset) =l= (1-AELm(el, rowset)) * ELDATA(el, '4');

cleq1(cl, s, rowset)..              cfm(cl, s, rowset) =g= (sum(n$mapCSL(cl,n), thetam(n, s, rowset)) -
                                    sum(n$mapCRL(cl,n), thetam(n, s, rowset))) / CLDATA(cl, '1') - M * (1-z1m(cl, rowset));
cleq2(cl, s, rowset)..              cfm(cl, s, rowset) =l= (sum(n$mapCSL(cl,n), thetam(n, s, rowset)) -
                                    sum(n$mapCRL(cl,n), thetam(n, s, rowset))) / CLDATA(cl, '1') + M * (1-z1m(cl, rowset));
cllim1(cl, s, rowset)..             cfm(cl, s, rowset) =g= - CLDATA(cl, '4')  * z1m(cl, rowset);
cllim2(cl, s, rowset)..             cfm(cl, s, rowset) =l= CLDATA(cl, '4')  * z1m(cl, rowset);

eglim1(eg, s, rowset)..             epm(eg, s, rowset) =l= (1-AEGm(eg, rowset)) * EGDATA(eg, 'Pmax');
eglim2(eg, s, rowset)..             epm(eg, s, rowset) =g= (1-AEGm(eg, rowset)) * EGDATA(eg, 'Pmin');
cglim1(cg, s, rowset)..             cpm(cg, s, rowset) =l= CGDATA(cg, 'Pmax') * z2m(cg, rowset);
cglim2(cg, s, rowset)..             cpm(cg, s, rowset) =g= CGDATA(cg, 'Pmin') * z2m(cg, rowset);

zcon112(cl, rowset)..            z1m(cl, rowset) =g= xl(cl) + 1 - ACLm(cl, rowset) - 1;
zcon122(cl, rowset)..            z1m(cl, rowset) =l= xl(cl);
zcon132(cl, rowset)..            z1m(cl, rowset) =l= 1 - ACLm(cl, rowset);
zcon212(cg, rowset)..            z2m(cg, rowset) =g= xg(cg) + 1 - ACGm(cg, rowset) - 1;
zcon222(cg, rowset)..            z2m(cg, rowset) =l= xg(cg);
zcon232(cg, rowset)..            z2m(cg, rowset) =l= 1 - ACGm(cg, rowset);

Model remaster /remasobjj, Lower, xglim, xllim,
         loadbalance,
         eleq1, eleq2,
         ellim1, ellim2,
         cleq1, cleq2,
         cllim1, cllim2,
         eglim1, eglim2,
         cglim1, cglim2, zcon112, zcon122, zcon132, zcon212, zcon222, zcon232/;
$offtext

Free Variable
         remasobj
         efm(el, t, itera)           Line flow in line l
         cf1m(cl1, t, itera)
         cf2m(cl2, t, itera)
         cf3m(cl3, t, itera)
         cf4m(cl4, t, itera)
         cf5m(cl5, t, itera)
         thetam(n, t, itera)    Bus angle of bus n;

Positive Variable
         rm(d, t, itera)     load violation values
         epm(eg, t, itera)     Generation of Generator g
         cp1m(cg1, t, itera)
         cp2m(cg2, t, itera)
         cp3m(cg3, t, itera)
         cp4m(cg4, t, itera)
         cp5m(cg5, t, itera);

Binary Variable
         exlm1(cl1,t, itera), exlm2(cl2,t, itera), exlm3(cl3,t, itera), exlm4(cl4,t, itera), exlm5(cl5,t, itera),
         exgm1(cg1,t, itera), exgm2(cg2,t, itera), exgm3(cg3,t, itera), exgm4(cg4,t, itera), exgm5(cg5,t, itera);

Parameters
         AEGm(eg, t, itera), AELm(el, t, itera),
         ACL1m(cl1, t, itera), ACG1m(cg1, t, itera),
         ACL2m(cl2, t, itera), ACG2m(cg2, t, itera),
         ACL3m(cl3, t, itera), ACG3m(cg3, t, itera),
         ACL4m(cl4, t, itera), ACG4m(cg4, t, itera),
         ACL5m(cl5, t, itera), ACG5m(cg5, t, itera);

Equations
         loadbalance,
         eleq1, eleq2,
         ellim1, ellim2,
         cleq11, cleq12, cleq21, cleq22, cleq31, cleq32, cleq41, cleq42, cleq51, cleq52,
         cllim11, cllim12, cllim21, cllim22, cllim31, cllim32, cllim41, cllim42, cllim51, cllim52,
         eglim1, eglim2,
         cglim11, cglim12, cglim21, cglim22, cglim31, cglim32, cglim41, cglim42, cglim51, cglim52, lslimm,
         existl1m, existl21m, existl22m, existl31m, existl32m, existl41m, existl42m, existl51m, existl52m,
         existg1m, existg21m, existg22m, existg31m, existg32m, existg41m, existg42m, existg51m, existg52m;

variable         eta;

Equations
         remasobjj, Lower;

remasobjj..              remasobj =e=  sum(cl1, CLDATA1(cl1, 'IC') /100 * xl1(cl1)) + sum(cg1, CGDATA1(cg1, 'IC') /100 * xg1(cg1))
                         + sum(cl2, CLDATA2(cl2, 'IC') /100 * xl2(cl2)) + sum(cg2, CGDATA2(cg2, 'IC') /100 * xg2(cg2))
                         + sum(cl3, CLDATA3(cl3, 'IC') /100 * xl3(cl3)) + sum(cg3, CGDATA3(cg3, 'IC') /100 * xg3(cg3))
                         + sum(cl4, CLDATA4(cl4, 'IC') /100 * xl4(cl4)) + sum(cg4, CGDATA4(cg4, 'IC') /100 * xg4(cg4))
                         + sum(cl5, CLDATA5(cl5, 'IC') /100 * xl5(cl5)) + sum(cg5, CGDATA5(cg5, 'IC') /100 * xg5(cg5))  + eta;

Lower(rowset)..          eta =e= sum(t, sum(eg, epm(eg, t, rowset) * EGDATA(eg, 'OC'))
                                  + sum(cg1, cp1m(cg1, t, rowset) * CGDATA1(cg1, 'OC')) + sum(cg2, cp2m(cg2, t, rowset) * CGDATA2(cg2, 'OC'))
                                  + sum(cg3, cp3m(cg3, t, rowset) * CGDATA3(cg3, 'OC')) + sum(cg4, cp4m(cg4, t, rowset) * CGDATA4(cg4, 'OC')) + sum(cg5, cp5m(cg5, t, rowset) * CGDATA5(cg5, 'OC'))
                                  + sum(d, rm(d, t, rowset) * PC));

loadbalance(n, t, rowset)..         sum(cg1$mapCG1(cg1,n), cp1m(cg1, t, rowset)) + sum(cg2$mapCG2(cg2,n), cp2m(cg2, t, rowset)) + sum(cg3$mapCG3(cg3,n), cp3m(cg3, t, rowset)) + sum(cg4$mapCG4(cg4,n), cp4m(cg4, t, rowset)) + sum(cg5$mapCG5(cg5,n), cp5m(cg5, t, rowset)) +
                            sum(eg$mapEG(eg,n), epm(eg, t, rowset)) -
                            sum(cl1$mapCSL1(cl1,n), cf1m(cl1, t, rowset)) + sum(cl1$mapCRL1(cl1,n), cf1m(cl1, t, rowset)) -
                            sum(cl2$mapCSL2(cl2,n), cf2m(cl2, t, rowset)) + sum(cl2$mapCRL2(cl2,n), cf2m(cl2, t, rowset)) -
                            sum(cl3$mapCSL3(cl3,n), cf3m(cl3, t, rowset)) + sum(cl3$mapCRL3(cl3,n), cf3m(cl3, t, rowset)) -
                            sum(cl4$mapCSL4(cl4,n), cf4m(cl4, t, rowset)) + sum(cl4$mapCRL4(cl4,n), cf4m(cl4, t, rowset)) -
                            sum(cl5$mapCSL5(cl5,n), cf5m(cl5, t, rowset)) + sum(cl5$mapCRL5(cl5,n), cf5m(cl5, t, rowset)) -
                            sum(el$mapESL(el,n), efm(el, t, rowset)) + sum(el$mapERL(el,n), efm(el, t, rowset)) + sum(d$mapD(d,n), rm(d, t, rowset))
                            =e= sum(d$mapD(d,n), DDATAR(d,t));

eleq1(el, t, rowset)..              efm(el, t, rowset) =g= (sum(n$mapESL(el,n), thetam(n, t, rowset)) -
                                    sum(n$mapERL(el,n), thetam(n, t, rowset))) / ELDATA(el, 'X') - M * AELm(el, t, rowset);
eleq2(el, t, rowset)..              efm(el, t, rowset) =l= (sum(n$mapESL(el,n), thetam(n, t, rowset)) -
                                    sum(n$mapERL(el,n), thetam(n, t, rowset))) / ELDATA(el, 'X') + M * AELm(el, t, rowset);
ellim1(el, t, rowset)..             efm(el, t, rowset) =g= - (1-AELm(el, t, rowset)) * ELDATA(el, 'FLmax');
ellim2(el, t, rowset)..             efm(el, t, rowset) =l= (1-AELm(el, t, rowset)) * ELDATA(el, 'FLmax');

cleq11(cl1, t, rowset)..             cf1m(cl1, t, rowset) =g= (sum(n$mapCSL1(cl1,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL1(cl1,n), thetam(n, t, rowset))) / CLDATA1(cl1, 'X') - M * (1-exlm1(cl1,t, rowset));
cleq12(cl1, t, rowset)..             cf1m(cl1, t, rowset) =l= (sum(n$mapCSL1(cl1,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL1(cl1,n), thetam(n, t, rowset))) / CLDATA1(cl1, 'X') + M * (1-exlm1(cl1,t, rowset));
cleq21(cl2, t, rowset)..             cf2m(cl2, t, rowset) =g= (sum(n$mapCSL2(cl2,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL2(cl2,n), thetam(n, t, rowset))) / CLDATA2(cl2, 'X') - M * (1-exlm2(cl2,t, rowset));
cleq22(cl2, t, rowset)..             cf2m(cl2, t, rowset) =l= (sum(n$mapCSL2(cl2,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL2(cl2,n), thetam(n, t, rowset))) / CLDATA2(cl2, 'X') + M * (1-exlm2(cl2,t, rowset));
cleq31(cl3, t, rowset)..             cf3m(cl3, t, rowset) =g= (sum(n$mapCSL3(cl3,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL3(cl3,n), thetam(n, t, rowset))) / CLDATA3(cl3, 'X') - M * (1-exlm3(cl3,t, rowset));
cleq32(cl3, t, rowset)..             cf3m(cl3, t, rowset) =l= (sum(n$mapCSL3(cl3,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL3(cl3,n), thetam(n, t, rowset))) / CLDATA3(cl3, 'X') + M * (1-exlm3(cl3,t, rowset));
cleq41(cl4, t, rowset)..             cf4m(cl4, t, rowset) =g= (sum(n$mapCSL4(cl4,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL4(cl4,n), thetam(n, t, rowset))) / CLDATA4(cl4, 'X') - M * (1-exlm4(cl4,t, rowset));
cleq42(cl4, t, rowset)..             cf4m(cl4, t, rowset) =l= (sum(n$mapCSL4(cl4,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL4(cl4,n), thetam(n, t, rowset))) / CLDATA4(cl4, 'X') + M * (1-exlm4(cl4,t, rowset));
cleq51(cl5, t, rowset)..             cf5m(cl5, t, rowset) =g= (sum(n$mapCSL5(cl5,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL5(cl5,n), thetam(n, t, rowset))) / CLDATA5(cl5, 'X') - M * (1-exlm5(cl5,t, rowset));
cleq52(cl5, t, rowset)..             cf5m(cl5, t, rowset) =l= (sum(n$mapCSL5(cl5,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL5(cl5,n), thetam(n, t, rowset))) / CLDATA5(cl5, 'X') + M * (1-exlm5(cl5,t, rowset));

cllim11(cl1, t, rowset)..             cf1m(cl1, t, rowset) =g= - CLDATA1(cl1, 'FLmax') * exlm1(cl1,t, rowset);
cllim12(cl1, t, rowset)..             cf1m(cl1, t, rowset) =l= CLDATA1(cl1, 'FLmax') * exlm1(cl1,t, rowset);

cllim21(cl2, t, rowset)..             cf2m(cl2, t, rowset) =g= - CLDATA2(cl2, 'FLmax') * exlm2(cl2,t, rowset);
cllim22(cl2, t, rowset)..             cf2m(cl2, t, rowset) =l= CLDATA2(cl2, 'FLmax') * exlm2(cl2,t, rowset);

cllim31(cl3, t, rowset)..             cf3m(cl3, t, rowset) =g= - CLDATA3(cl3, 'FLmax') * exlm3(cl3,t, rowset);
cllim32(cl3, t, rowset)..             cf3m(cl3, t, rowset) =l= CLDATA3(cl3, 'FLmax') * exlm3(cl3,t, rowset);

cllim41(cl4, t, rowset)..             cf4m(cl4, t, rowset) =g= - CLDATA4(cl4, 'FLmax') * exlm4(cl4,t, rowset);
cllim42(cl4, t, rowset)..             cf4m(cl4, t, rowset) =l= CLDATA4(cl4, 'FLmax') * exlm4(cl4,t, rowset);

cllim51(cl5, t, rowset)..             cf5m(cl5, t, rowset) =g= - CLDATA5(cl5, 'FLmax') * exlm5(cl5,t, rowset);
cllim52(cl5, t, rowset)..             cf5m(cl5, t, rowset) =l= CLDATA5(cl5, 'FLmax') * exlm5(cl5,t, rowset);

eglim1(eg, t, rowset)..             epm(eg, t, rowset) =l= (1-AEGm(eg, t, rowset)) * EGDATA(eg, 'Pmax');
eglim2(eg, t, rowset)..             epm(eg, t, rowset) =g= (1-AEGm(eg, t, rowset)) * EGDATA(eg, 'Pmin');

cglim11(cg1, t, rowset)..             cp1m(cg1, t, rowset) =l= CGDATA1(cg1, 'Pmax') * exgm1(cg1,t, rowset);
cglim12(cg1, t, rowset)..             cp1m(cg1, t, rowset) =g= CGDATA1(cg1, 'Pmin') * exgm1(cg1,t, rowset);

cglim21(cg2, t, rowset)..             cp2m(cg2, t, rowset) =l= CGDATA2(cg2, 'Pmax') * exgm2(cg2,t, rowset);
cglim22(cg2, t, rowset)..             cp2m(cg2, t, rowset) =g= CGDATA2(cg2, 'Pmin') * exgm2(cg2,t, rowset);

cglim31(cg3, t, rowset)..             cp3m(cg3, t, rowset) =l= CGDATA3(cg3, 'Pmax') * exgm3(cg3,t, rowset);
cglim32(cg3, t, rowset)..             cp3m(cg3, t, rowset) =g= CGDATA3(cg3, 'Pmin') * exgm3(cg3,t, rowset);

cglim41(cg4, t, rowset)..             cp4m(cg4, t, rowset) =l= CGDATA4(cg4, 'Pmax') * exgm4(cg4,t, rowset);
cglim42(cg4, t, rowset)..             cp4m(cg4, t, rowset) =g= CGDATA4(cg4, 'Pmin') * exgm4(cg4,t, rowset);

cglim51(cg5, t, rowset)..             cp5m(cg5, t, rowset) =l= CGDATA5(cg5, 'Pmax') * exgm5(cg5,t, rowset);
cglim52(cg5, t, rowset)..             cp5m(cg5, t, rowset) =g= CGDATA5(cg5, 'Pmin') * exgm5(cg5,t, rowset);

lslimm(n, t, rowset)..              sum(d$mapD(d,n), rm(d, t, rowset)) =l= sum(d$mapD(d,n), DDATAR(d,t));

existl1m(cl1,t, rowset)..                 exlm1(cl1,t, rowset) =e= xl1(cl1) * (1-ACL1m(cl1,t, rowset));
existl21m(cl2,t, rowset)$(ord(t)>=2)..    exlm2(cl2,t, rowset) =e= xl2(cl2) * (1-ACL2m(cl2,t, rowset));
existl22m(cl2,t, rowset)$(ord(t)<2)..     exlm2(cl2,t, rowset) =e= 0;
existl31m(cl3,t, rowset)$(ord(t)>=3)..    exlm3(cl3,t, rowset) =e= xl3(cl3) * (1-ACL3m(cl3,t, rowset));
existl32m(cl3,t, rowset)$(ord(t)<3)..     exlm3(cl3,t, rowset) =e= 0;
existl41m(cl4,t, rowset)$(ord(t)>=4)..    exlm4(cl4,t, rowset) =e= xl4(cl4) * (1-ACL4m(cl4,t, rowset));
existl42m(cl4,t, rowset)$(ord(t)<4)..     exlm4(cl4,t, rowset) =e= 0;
existl51m(cl5,t, rowset)$(ord(t)>=5)..    exlm5(cl5,t, rowset) =e= xl5(cl5) * (1-ACL5m(cl5,t, rowset));
existl52m(cl5,t, rowset)$(ord(t)<5)..     exlm5(cl5,t, rowset) =e= 0;

existg1m(cg1,t, rowset)..                 exgm1(cg1,t, rowset) =e= xg1(cg1) * (1-ACG1m(cg1,t, rowset));
existg21m(cg2,t, rowset)$(ord(t)>=2)..    exgm2(cg2,t, rowset) =e= xg2(cg2) * (1-ACG2m(cg2,t, rowset));
existg22m(cg2,t, rowset)$(ord(t)<2)..     exgm2(cg2,t, rowset) =e= 0;
existg31m(cg3,t, rowset)$(ord(t)>=3)..    exgm3(cg3,t, rowset) =e= xg3(cg3) * (1-ACG3m(cg3,t, rowset));
existg32m(cg3,t, rowset)$(ord(t)<3)..     exgm3(cg3,t, rowset) =e= 0;
existg41m(cg4,t, rowset)$(ord(t)>=4)..    exgm4(cg4,t, rowset) =e= xg4(cg4) * (1-ACG4m(cg4,t, rowset));
existg42m(cg4,t, rowset)$(ord(t)<4)..     exgm4(cg4,t, rowset) =e= 0;
existg51m(cg5,t, rowset)$(ord(t)>=5)..    exgm5(cg5,t, rowset) =e= xg5(cg5) * (1-ACG5m(cg5,t, rowset));
existg52m(cg5,t, rowset)$(ord(t)<5)..     exgm5(cg5,t, rowset) =e= 0;

Model remaster /remasobjj, Lower,
         loadbalance,
         eleq1, eleq2,
         ellim1, ellim2,
         cleq11, cleq12, cleq21, cleq22, cleq31, cleq32, cleq41, cleq42, cleq51, cleq52,
         cllim11, cllim12, cllim21, cllim22, cllim31, cllim32, cllim41, cllim42, cllim51, cllim52,
         eglim1, eglim2,
         cglim11, cglim12, cglim21, cglim22, cglim31, cglim32, cglim41, cglim42, cglim51, cglim52, lslimm,
         existl1m, existl21m, existl22m, existl31m, existl32m, existl41m, existl42m, existl51m, existl52m,
         existg1m, existg21m, existg22m, existg31m, existg32m, existg41m, existg42m, existg51m, existg52m/;

************************************************************

option limrow = 10000;

parameters
         UB(itera), LB(itera), UBm(itera);

parameters
         dec_g1(cg1, itera), dec_l1(cl1, itera), dec_g2(cg2, itera), dec_l2(cl2, itera), dec_g3(cg3, itera), dec_l3(cl3, itera), dec_g4(cg4, itera), dec_l4(cl4, itera), dec_g5(cg5, itera), dec_l5(cl5, itera);

scalar   epsilon /0.01/;


Solve Master0 use lp min obj0;

Loop(itera$(ord(itera)<=1),
         dec_g1(cg1, itera) = xg1.l(cg1); dec_g2(cg2, itera) = xg2.l(cg2); dec_g3(cg3, itera) = xg3.l(cg3); dec_g4(cg4, itera) = xg4.l(cg4); dec_g5(cg5, itera) = xg5.l(cg5);
         dec_l1(cl1, itera) = xl1.l(cl1); dec_l2(cl2, itera) = xl2.l(cl2); dec_l3(cl3, itera) = xl3.l(cl3); dec_l4(cl4, itera) = xl4.l(cl4); dec_l5(cl5, itera) = xl5.l(cl5);
);

xl1m(cl1) = xl1.l(cl1); xl2m(cl2) = xl2.l(cl2); xl3m(cl3) = xl3.l(cl3); xl4m(cl4) = xl4.l(cl4); xl5m(cl5) = xl5.l(cl5);
xg1m(cg1) = xg1.l(cg1); xg2m(cg2) = xg2.l(cg2); xg3m(cg3) = xg3.l(cg3); xg4m(cg4) = xg4.l(cg4); xg5m(cg5) = xg5.l(cg5);

$ontext
xl1m('l7') = 1;
xl2m('l23') = 1;
xl3m('l39') = 1;
xl4m('l55') = 1;
xl5m('l70') = 1;
xg1m('g4') = 1;
xg2m('g11') = 1;
xg3m('g18') = 1;
xg4m('g25') = 1;
xg5m('g33') = 1;
$offtext

Loop(itera$(ord(itera)<=1),
         dec_g1(cg1, itera) = xg1m(cg1); dec_g2(cg2, itera) = xg2m(cg2); dec_g3(cg3, itera) = xg3m(cg3); dec_g4(cg4, itera) = xg4m(cg4); dec_g5(cg5, itera) = xg5m(cg5);
         dec_l1(cl1, itera) = xl1m(cl1); dec_l2(cl2, itera) = xl2m(cl2); dec_l3(cl3, itera) = xl3m(cl3); dec_l4(cl4, itera) = xl4m(cl4); dec_l5(cl5, itera) = xl5m(cl5);
);

Loop(itera,

         if(ord(itera) <= 1,

                 solve dualsp use mip min subdual;

                 UBm(itera) = - subdual.l + sum(cl1, CLDATA1(cl1, 'IC') /100 * xl1m(cl1)) + sum(cg1, CGDATA1(cg1, 'IC') /100 * xg1m(cg1))
                         + sum(cl2, CLDATA2(cl2, 'IC') /100 * xl2m(cl2)) + sum(cg2, CGDATA2(cg2, 'IC') /100 * xg2m(cg2))
                         + sum(cl3, CLDATA3(cl3, 'IC') /100 * xl3m(cl3)) + sum(cg3, CGDATA3(cg3, 'IC') /100 * xg3m(cg3))
                         + sum(cl4, CLDATA4(cl4, 'IC') /100 * xl4m(cl4)) + sum(cg4, CGDATA4(cg4, 'IC') /100 * xg4m(cg4))
                         + sum(cl5, CLDATA5(cl5, 'IC') /100 * xl5m(cl5)) + sum(cg5, CGDATA5(cg5, 'IC') /100 * xg5m(cg5));

                 UB(itera) = UBm(itera);

                 AELm(el, t, itera+1) = AEL.l(el,t);
                 ACL1m(cl1, t, itera+1) = ACL1.l(cl1,t); ACL2m(cl2, t, itera+1) = ACL2.l(cl2,t); ACL3m(cl3, t, itera+1) = ACL3.l(cl3,t); ACL4m(cl4, t, itera+1) = ACL4.l(cl4,t); ACL5m(cl5, t, itera+1) = ACL5.l(cl5,t);
                 AEGm(eg, t, itera+1) = AEG.l(eg,t);
                 ACG1m(cg1, t, itera+1) = ACG1.l(cg1,t); ACG2m(cg2, t, itera+1) = ACG2.l(cg2,t); ACG3m(cg3, t, itera+1) = ACG3.l(cg3,t); ACG4m(cg4, t, itera+1) = ACG4.l(cg4,t); ACG5m(cg5, t, itera+1) = ACG5.l(cg5,t);
         );

         if(ord(itera) > 1,

                 rowset(itera) = yes;

                 solve remaster use mip min remasobj;

                 LB(itera) = remasobj.l;

                 dec_g1(cg1, itera) = xg1.l(cg1); dec_g2(cg2, itera) = xg2.l(cg2); dec_g3(cg3, itera) = xg3.l(cg3); dec_g4(cg4, itera) = xg4.l(cg4); dec_g5(cg5, itera) = xg5.l(cg5);
                 dec_l1(cl1, itera) = xl1.l(cl1); dec_l2(cl2, itera) = xl2.l(cl2); dec_l3(cl3, itera) = xl3.l(cl3); dec_l4(cl4, itera) = xl4.l(cl4); dec_l5(cl5, itera) = xl5.l(cl5);

                 xl1m(cl1) = xl1.l(cl1); xl2m(cl2) = xl2.l(cl2); xl3m(cl3) = xl3.l(cl3); xl4m(cl4) = xl4.l(cl4); xl5m(cl5) = xl5.l(cl5);
                 xg1m(cg1) = xg1.l(cg1); xg2m(cg2) = xg2.l(cg2); xg3m(cg3) = xg3.l(cg3); xg4m(cg4) = xg4.l(cg4); xg5m(cg5) = xg5.l(cg5);

                 solve dualsp use mip min subdual;

                 UBm(itera) = - subdual.l + sum(cl1, CLDATA1(cl1, 'IC') /100 * xl1m(cl1)) + sum(cg1, CGDATA1(cg1, 'IC') /100 * xg1m(cg1))
                         + sum(cl2, CLDATA2(cl2, 'IC') /100 * xl2m(cl2)) + sum(cg2, CGDATA2(cg2, 'IC') /100 * xg2m(cg2))
                         + sum(cl3, CLDATA3(cl3, 'IC') /100 * xl3m(cl3)) + sum(cg3, CGDATA3(cg3, 'IC') /100 * xg3m(cg3))
                         + sum(cl4, CLDATA4(cl4, 'IC') /100 * xl4m(cl4)) + sum(cg4, CGDATA4(cg4, 'IC') /100 * xg4m(cg4))
                         + sum(cl5, CLDATA5(cl5, 'IC') /100 * xl5m(cl5)) + sum(cg5, CGDATA5(cg5, 'IC') /100 * xg5m(cg5));

                 UB(itera) = min(UB(itera-1), UBm(itera));

*                 break$((abs(UB(itera)-LB(itera))/UB(itera)) <= epsilon);
*                 break$( ((UB(itera-1) - LB(itera-1) - UB(itera) + LB(itera)) / (UB(itera) - LB(itera)) <= epsilon));

                 AELm(el, t, itera+1) = AEL.l(el,t);
                 ACL1m(cl1, t, itera+1) = ACL1.l(cl1,t); ACL2m(cl2, t, itera+1) = ACL2.l(cl2,t); ACL3m(cl3, t, itera+1) = ACL3.l(cl3,t); ACL4m(cl4, t, itera+1) = ACL4.l(cl4,t); ACL5m(cl5, t, itera+1) = ACL5.l(cl5,t);
                 AEGm(eg, t, itera+1) = AEG.l(eg,t);
                 ACG1m(cg1, t, itera+1) = ACG1.l(cg1,t); ACG2m(cg2, t, itera+1) = ACG2.l(cg2,t); ACG3m(cg3, t, itera+1) = ACG3.l(cg3,t); ACG4m(cg4, t, itera+1) = ACG4.l(cg4,t); ACG5m(cg5, t, itera+1) = ACG5.l(cg5,t);
         );
);

display dec_g1, dec_g2, dec_g3, dec_g4, dec_g5, dec_l1, dec_l2, dec_l3, dec_l4, dec_l5, LB, UB, UBm;
