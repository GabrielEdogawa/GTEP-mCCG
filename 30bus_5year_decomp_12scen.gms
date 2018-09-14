Set
     n  All nodes /n1*n30/
     g  All Generators /g1*g26/
     l  All Lines /l1*l106/
     d  All Demands /d1*d21/
     mapD(d,n) Load-Bus Mapping /d1.n2, d2.n3, d3.n4, d4.n5, d5.n7, d6.n8, d7.n10, d8.n12, d9.n14, d10.n15, d11.n16, d12.n17, d13.n18, d14.n19
                         d15.n20, d16.n21, d17.n23, d18.n24, d19.n26, d20.n29, d21.n30/

     eg(g) Exisited Generators /g1, g2, g3, g4, g5, g6/
     mapEG(eg,n) /g1.n1, g2.n2, g3.n8, g4.n11, g5.n13, g6.n19/
     el(l) Exisited Lines /l1*l31/
     mapESL(el,n)    /l1.n1, l2.n2, l3.n2, l4.n2, l5.n3, l6.n3, l7.n4, l8.n4, l9.n4, l10.n6, l11.n6, l12.n8, l31.n10, l14.n10, l15.n10, l16.n10,
         l17.n12, l18.n14, l19.n15, l20.n16, l21.n18, l22.n19, l23.n21, l24.n22, l25.n23, l26.n24, l27.n25, l28.n26, l29.n27, l30.n27, l31.n29/
     mapERL(el,n)    /l1.n3, l2.n4, l3.n5, l4.n6, l5.n4, l6.n13, l7.n6, l8.n11, l9.n12, l10.n7, l11.n9, l12.n28, l13.n17, l14.n20, l15.n21, l16.n22,
         l17.n14, l18.n15, l19.n18, l20.n17, l21.n19, l22.n20, l23.n22, l24.n24, l25.n24, l26.n25, l27.n27, l28.n29, l29.n29, l30.n30, l31.n30/

     cg(g)       /g7*g26/
     cg1(cg) Candidate Generators /g7, g8, g9,g10/
     cg2(cg) Candidate Generators /g11, g12, g13,g14/
     cg3(cg) Candidate Generators /g15, g16, g17,g18/
     cg4(cg) Candidate Generators /g19, g20, g21,g22/
     cg5(cg) Candidate Generators /g23, g24, g25,g26/
     mapCG1(cg1,n) Generator-Bus Mapping / g7.n5, g8.n5,  g9.n11, g10.n11/
     mapCG2(cg2,n) Generator-Bus Mapping / g11.n5, g12.n5,  g13.n11, g14.n11/
     mapCG3(cg3,n) Generator-Bus Mapping / g15.n5, g16.n5,  g17.n11, g18.n11/
     mapCG4(cg4,n) Generator-Bus Mapping / g19.n5, g20.n5,  g21.n11, g22.n11/
     mapCG5(cg5,n) Generator-Bus Mapping / g23.n5, g24.n5,  g25.n11, g26.n11/

     cl(cl)      /l32*l106/
     cl1(cl) Candidate Lines /l32*l46/
     cl2(cl) Candidate Lines /l47*l61/
     cl3(cl) Candidate Lines /l62*l76/
     cl4(cl) Candidate Lines /l77*l91/
     cl5(cl) Candidate Lines /l92*l106/
     mapCSL1(cl1,n) Sending Bus Mapping /l32.n1, l33.n5, l34.n5, l35.n5,  l36.n6,  l37.n6, l38.n6,
                          l39.n9, l40.n9,  l41.n12, l42.n12, l43.n12,  l44.n15, l45.n25,  l46.n27/
     mapCRL1(cl1,n) Receiving Bus Mapping /l32.n2, l33.n6, l34.n7, l35.n7, l36.n8, l37.n10, l38.n28,
                         l39.n10, l40.n11, l41.n13,  l42.n15, l43.n16, l44.n23, l45.n26, l46.n28/
     mapCSL2(cl2,n) Sending Bus Mapping /l47.n1, l48.n5, l49.n5, l50.n5,  l51.n6,  l52.n6, l53.n6,
                          l54.n9, l55.n9,  l56.n12, l57.n12, l58.n12,  l59.n15, l60.n25,  l61.n27/
     mapCRL2(cl2,n) Receiving Bus Mapping /l47.n2, l48.n6, l49.n7, l50.n7, l51.n8, l52.n10, l53.n28,
                         l54.n10, l55.n11, l56.n13,  l57.n15, l58.n16, l59.n23, l60.n26, l61.n28/
     mapCSL3(cl3,n) Sending Bus Mapping /l62.n1, l63.n5, l64.n5, l65.n5,  l66.n6,  l67.n6, l68.n6,
                          l69.n9, l70.n9,  l71.n12, l72.n12, l73.n12,  l74.n15, l75.n25,  l76.n27/
     mapCRL3(cl3,n) Receiving Bus Mapping /l62.n2, l63.n6, l64.n7, l65.n7, l66.n8, l67.n10, l68.n28,
                         l69.n10, l70.n11, l71.n13,  l72.n15, l73.n16, l74.n23, l75.n26, l76.n28/
     mapCSL4(cl4,n) Sending Bus Mapping /l77.n1, l78.n5, l79.n5, l80.n5,  l81.n6,  l82.n6, l83.n6,
                          l84.n9, l85.n9,  l86.n12, l87.n12, l88.n12,  l89.n15, l90.n25,  l91.n27/
     mapCRL4(cl4,n) Receiving Bus Mapping /l77.n2, l78.n6, l79.n7, l80.n7, l81.n8, l82.n10, l83.n28,
                         l84.n10, l85.n11, l86.n13,  l87.n15, l88.n16, l89.n23, l90.n26, l91.n28/
     mapCSL5(cl5,n) Sending Bus Mapping /l92.n1, l93.n5, l94.n5, l95.n5,  l96.n6,  l97.n6, l98.n6,
                          l99.n9, l100.n9,  l101.n12, l102.n12, l103.n12,  l104.n15, l105.n25,  l106.n27/
     mapCRL5(cl5,n) Receiving Bus Mapping /l92.n2, l93.n6, l94.n7, l95.n7, l96.n8, l97.n10, l98.n28,
                         l99.n10, l100.n11, l101.n13,  l102.n15, l103.n16, l104.n23, l105.n26, l106.n28/
     t   /t1*t5/
     ref(n) reference bus  /n1/
     tmp1        /1*5/
     s           /s1*s12/;


$set inputdir "C:\Users\GabrielYin\Desktop\GAMS_Codes\Paper_GAMS"

Table CLDATA1(cl1, tmp1)      Candidate Branch Data

$include "%inputdir%\BranchData30Can1.txt";

Table CLDATA2(cl2, tmp1)      Candidate Branch Data

$include "%inputdir%\BranchData30Can2.txt";


Table CLDATA3(cl3, tmp1)      Candidate Branch Data

$include "%inputdir%\BranchData30Can3.txt";

Table CLDATA4(cl4, tmp1)      Candidate Branch Data

$include "%inputdir%\BranchData30Can4.txt";

Table CLDATA5(cl5, tmp1)      Candidate Branch Data

$include "%inputdir%\BranchData30Can5.txt";


Table ELDATA(el, tmp1)      Existing Branch Data

$include "%inputdir%\BranchData30Exi.txt";

display CLDATA1, ELDATA;

CLDATA2(cl2, '5') = CLDATA2(cl2, '5') * 1.05;

CLDATA3(cl3, '5') = CLDATA3(cl3, '5') * 1.05 * 1.05;

CLDATA4(cl4, '5') = CLDATA4(cl4, '5') * 1.05* 1.05* 1.05;

CLDATA5(cl5, '5') = CLDATA5(cl5, '5') * 1.05* 1.05* 1.05* 1.05;

Table CGDATA1(cg1, *)   Generator Data
         Pmax      IC       OC
g7       300       90       18
g8       300       140      18
g9       300       120      20
g10      300       110      20       ;

Table CGDATA2(cg2, *)   Generator Data
         Pmax      IC       OC
g11      300       90       18
g12      300       140      18
g13      300       120      20
g14      300       110      20       ;

Table CGDATA3(cg3, *)   Generator Data
         Pmax      IC       OC
g15      300       90       18
g16      300       140      18
g17      300       120      20
g18      300       110      20       ;

Table CGDATA4(cg4, *)   Generator Data
         Pmax      IC       OC
g19      300       90       18
g20      300       140      18
g21      300       120      20
g22      300       110      20       ;

Table CGDATA5(cg5, *)   Generator Data
         Pmax      IC       OC
g23      300       90       18
g24      300       140      18
g25      300       120      20
g26      300       110      20       ;

Table EGDATA(eg, *)  Existing Generator Data
         Pmax      IC       OC
g1       300       0        20
g2       300       0        22
g3       300       0        18
g4       300       0        20
g5       300       0        18
g6       300       0        20       ;

Parameter DDATA(d,s)  Load Data add One Scenario Set of D1;

DDATA('d1','s1') = 9.192;
DDATA('d1','s2') = 11.399;
DDATA('d1','s3') = 16.653;
DDATA('d1','s4') = 19.221;
DDATA('d1','s5') = 21.657;
DDATA('d1','s6') = 24.862;
DDATA('d1','s7') = 27.368;
DDATA('d1','s8') = 30.196;
DDATA('d1','s9') = 33.356;
DDATA('d1','s10') = 36.177;
DDATA('d1','s11') = 39.082;
DDATA('d1','s12') = 41.816;
DDATA('d2',s) = 28.77;   DDATA('d12',s) = 19.18;
DDATA('d3',s) = 33.56;   DDATA('d13',s) = 28.77;
DDATA('d4',s) = 23.97;   DDATA('d14',s) = 23.97;
DDATA('d5',s) = 28.77;   DDATA('d15',s) = 19.18;
DDATA('d6',s) = 23.97;   DDATA('d16',s) = 19.18;
DDATA('d7',s) = 38.35;   DDATA('d17',s) = 23.97;
DDATA('d8',s) = 23.97;   DDATA('d18',s) = 19.18;
DDATA('d9',s) = 14.38;   DDATA('d19',s) = 38.35;
DDATA('d10',s) = 19.18;  DDATA('d20',s) = 14.38;
DDATA('d11',s) = 14.38;  DDATA('d21',s) = 19.18;

display DDATA;

Parameter DDATAp(d)    Load Data       /
         d1        28.917
         d2        28.77
         d3        33.56
         d4        23.97
         d5        28.77
         d6        23.97
         d7        38.35
         d8        23.97
         d9        14.38
         d10       19.18
         d11       14.38
         d12       19.18
         d13       28.77
         d14       23.97
         d15       19.18
         d16       19.18
         d17       23.97
         d18       19.18
         d19       38.35
         d20       14.38
         d21       19.18
/;
Parameter prob(s)        Probability     /
         s1      0.001
         s2      0.001
         s3      0.005
         s4      0.027
         s5      0.083
         s6      0.160
         s7      0.229
         s8      0.218
         s9      0.153
         s10     0.084
         s11     0.032
         s12     0.006
/;

Scalar PC  Penalty Cost  /200/;

Scalar M       big M value     /10000000/

Set iter /1*50/;

Set cutset(iter) dynamic set;
cutset(iter) = no;

Set itera /1*20/;

Set rowset(itera) dynamic set;
rowset(itera) = no;

*****************************************************

Variables
         obj0     Objective Value;

Positive Variables
         xl1(cl1), xg1(cg1), xl2(cl2), xg2(cg2), xl3(cl3), xg3(cg3), xl4(cl4), xg4(cg4), xl5(cl5), xg5(cg5);

Equations
         objective0, xglim, xllim;

objective0..    obj0 =e= sum(cl1, CLDATA1(cl1, '5') * xl1(cl1)) + sum(cg1, CGDATA1(cg1, 'OC') * xg1(cg1))
                         + sum(cl2, CLDATA2(cl2, '5') * xl2(cl2)) + sum(cg2, CGDATA2(cg2, 'OC') * xg2(cg2))
                         + sum(cl3, CLDATA3(cl3, '5') * xl3(cl3)) + sum(cg3, CGDATA3(cg3, 'OC') * xg3(cg3))
                         + sum(cl4, CLDATA4(cl4, '5') * xl4(cl4)) + sum(cg4, CGDATA4(cg4, 'OC') * xg4(cg4))
                         + sum(cl5, CLDATA5(cl5, '5') * xl5(cl5)) + sum(cg5, CGDATA5(cg5, 'OC') * xg5(cg5)) ;

xglim..         sum(cg1, CGDATA1(cg1, 'IC') * xg1(cg1)) + sum(cg2, CGDATA2(cg2, 'IC') * xg2(cg2)) + sum(cg3, CGDATA3(cg3, 'IC') * xg3(cg3)) + sum(cg4, CGDATA4(cg4, 'IC') * xg4(cg4)) + sum(cg5, CGDATA5(cg5, 'IC') * xg5(cg5)) =l= 300;
xllim..         sum(cl1, CLDATA1(cl1, '5')* xl1(cl1)) + sum(cl2, CLDATA2(cl2, '5')* xl2(cl2)) + sum(cl3, CLDATA3(cl3, '5')* xl3(cl3)) + sum(cl4, CLDATA4(cl4, '5')* xl4(cl4)) + sum(cl5, CLDATA5(cl5, '5')* xl5(cl5))  =l= 200;

Model Master0 / objective0, xglim, xllim/  ;

Parameters
                 xl1m(cl1), xg1m(cg1), xl2m(cl2), xg2m(cg2), xl3m(cl3), xg3m(cg3),
                 xl5m(cl5), xg5m(cg5), xl4m(cl4), xg4m(cg4);

*********************** Subproblem *******************************

Positive Variables
                 eleq1d(el,s), eleq2d(el,s), ellim1d(el,s), ellim2d(el,s),
                 o1cleq11d(cl1,s), o1cleq12d(cl1,s), o1cleq21d(cl2,s), o1cleq22d(cl2,s), o1cleq31d(cl3,s),
                 o1cleq32d(cl3,s), o1cleq41d(cl4,s), o1cleq42d(cl4,s), o1cleq51d(cl5,s), o1cleq52d(cl5,s),
                 o1cllim11d(cl1,s), o1cllim12d(cl1,s), o1cllim21d(cl2,s), o1cllim22d(cl2,s),
                 o1cllim31d(cl3,s), o1cllim32d(cl3,s), o1cllim41d(cl4,s), o1cllim42d(cl4,s), o1cllim51d(cl5,s), o1cllim52d(cl5,s),
                 eglim1d(eg,s), eglim2d(eg,s), o1cglim11d(cg1,s), o1cglim12d(cg1,s), o1cglim21d(cg2,s), o1cglim22d(cg2,s), o1cglim31d(cg3,s), o1cglim32d(cg3,s),
                 o1cglim41d(cg4,s), o1cglim42d(cg4,s), o1cglim51d(cg5,s), o1cglim52d(cg5,s), o1zeta(n,s),

                 eleq1dM(el,s), eleq2dM(el,s), ellim1dM(el,s), ellim2dM(el,s), eglim1dM(eg,s), eglim2dM(eg,s),
                 o1cleq12dM(cl1,s), o1cleq22dM(cl2,s), o1cleq32dM(cl3,s), o1cleq42dM(cl4,s), o1cleq52dM(cl5,s),
                 o1cleq11dM(cl1,s), o1cleq21dM(cl2,s), o1cleq31dM(cl3,s), o1cleq41dM(cl4,s), o1cleq51dM(cl5,s),
                 o1cllim11dM(cl1,s), o1cllim21dM(cl2,s), o1cllim31dM(cl3,s), o1cllim41dM(cl4,s), o1cllim51dM(cl5,s),
                 o1cllim12dM(cl1,s), o1cllim22dM(cl2,s), o1cllim32dM(cl3,s), o1cllim42dM(cl4,s), o1cllim52dM(cl5,s),
                 o1cglim11dM(cg1,s), o1cglim21dM(cg2,s), o1cglim31dM(cg3,s), o1cglim41dM(cg4,s), o1cglim51dM(cg5,s),
                 o1cglim12dM(cg1,s), o1cglim22dM(cg2,s), o1cglim32dM(cg3,s), o1cglim42dM(cg4,s), o1cglim52dM(cg5,s);

Free Variable
                 o1pi(n,s), o1subdual, o1cllim23d(cl2,s), o1cllim33d(cl3,s), o1cllim43d(cl4,s), o1cllim53d(cl5,s);

Binary Variables
                 AEG(eg), AEL(el),
                 o1ACG1(cg1),  o1ACG2(cg2),  o1ACG3(cg3),  o1ACG4(cg4),  o1ACG5(cg5),
                 o1ACL1(cl1),  o1ACL2(cl2),  o1ACL3(cl3),  o1ACL4(cl4),  o1ACL5(cl5) ;

Equations
         o1subobj,
         uncer11, uncer12,
         o1peg, o1fel, o1pcg1, o1pcg2, o1pcg3, o1pcg4, o1pcg5, o1fcl1, o1fcl2, o1fcl3, o1fcl4, o1fcl5, o1thetan, o1rdual,
         bigMel11, bigMel12, bigMel13, bigMel14, bigMel21, bigMel22, bigMel23, bigMel24, bigMel31, bigMel32, bigMel33, bigMel34, bigMel41, bigMel42, bigMel43, bigMel44,
         bigMeg11, bigMeg12, bigMeg13, bigMeg14, bigMeg21, bigMeg22, bigMeg23, bigMeg24,

         o1bigMcl11, o1bigMcl12, o1bigMcl13, o1bigMcl14, o1bigMcl21, o1bigMcl22, o1bigMcl23, o1bigMcl24, o1bigMcl31, o1bigMcl41, o1bigMcl51,
         o1bigMcl61, o1bigMcl71, o1bigMcl81, o1bigMcl91, o1bigMcl01,
         o1bigMcl112, o1bigMcl122, o1bigMcl132, o1bigMcl142, o1bigMcl212, o1bigMcl222, o1bigMcl232, o1bigMcl242, o1bigMcl332, o1bigMcl432, o1bigMcl532,
         o1bigMcl632, o1bigMcl732, o1bigMcl832, o1bigMcl932, o1bigMcl032,
         o1bigMcg11, o1bigMcg12, o1bigMcg13, o1bigMcg14, o1bigMcg21, o1bigMcg22, o1bigMcg23, o1bigMcg24, o1bigMcg33, o1bigMcg43, o1bigMcg53,
         o1bigMcg63, o1bigMcg73, o1bigMcg83, o1bigMcg93, o1bigMcg03;

o1subobj..               o1subdual =e= -sum(s, prob(s) * (sum(n, sum(d$mapD(d,n), DDATA(d,s) * 1 * o1pi(n,s))) -
                         sum(el, M * eleq1dM(el,s)) -
                         sum(el, M * eleq2dM(el,s)) -
                         sum(el, ELDATA(el, '4') * ellim1dM(el,s)) -
                         sum(el, ELDATA(el, '4') * ellim2dM(el,s)) -
                         sum(cl1, M * o1cleq11dM(cl1,s)) - sum(cl1, M * o1cleq12dM(cl1,s)) -
                         sum(cl2, M * o1cleq21dM(cl2,s)) - sum(cl2, M * o1cleq22dM(cl2,s)) -
                         sum(cl3, M * o1cleq31dM(cl3,s)) - sum(cl3, M * o1cleq32dM(cl3,s)) -
                         sum(cl4, M * o1cleq41dM(cl4,s)) - sum(cl4, M * o1cleq42dM(cl4,s)) -
                         sum(cl5, M * o1cleq51dM(cl5,s)) - sum(cl5, M * o1cleq52dM(cl5,s)) -
                         sum(cl1, CLDATA1(cl1, '4') * o1cllim11dM(cl1,s)) - sum(cl1, CLDATA1(cl1, '4') * o1cllim12dM(cl1,s)) -
                         sum(cl2, CLDATA2(cl2, '4') * o1cllim21dM(cl2,s)) - sum(cl2, CLDATA2(cl2, '4') * o1cllim22dM(cl2,s)) -
                         sum(cl3, CLDATA3(cl3, '4') * o1cllim31dM(cl3,s)) - sum(cl3, CLDATA3(cl3, '4') * o1cllim32dM(cl3,s)) -
                         sum(cl4, CLDATA4(cl4, '4') * o1cllim41dM(cl4,s)) - sum(cl4, CLDATA4(cl4, '4') * o1cllim42dM(cl4,s)) -
                         sum(cl5, CLDATA5(cl5, '4') * o1cllim51dM(cl5,s)) - sum(cl5, CLDATA5(cl5, '4') * o1cllim52dM(cl5,s)) -
                         sum(eg, eglim1dM(eg,s) * EGDATA(eg, 'Pmax')) + sum(eg, eglim2dM(eg,s) * EGDATA(eg, 'Pmin')) -
                         sum(cg1, CGDATA1(cg1, 'Pmax') * o1cglim11dM(cg1,s)) + sum(cg1, CGDATA1(cg1, 'Pmin') * o1cglim12dM(cg1,s)) -
                         sum(cg2, CGDATA2(cg2, 'Pmax') * o1cglim21dM(cg2,s)) + sum(cg2, CGDATA2(cg2, 'Pmin') * o1cglim22dM(cg2,s)) -
                         sum(cg3, CGDATA3(cg3, 'Pmax') * o1cglim31dM(cg3,s)) + sum(cg3, CGDATA3(cg3, 'Pmin') * o1cglim32dM(cg3,s)) -
                         sum(cg4, CGDATA4(cg4, 'Pmax') * o1cglim41dM(cg4,s)) + sum(cg4, CGDATA4(cg4, 'Pmin') * o1cglim42dM(cg4,s)) -
                         sum(cg5, CGDATA5(cg5, 'Pmax') * o1cglim51dM(cg5,s)) + sum(cg5, CGDATA5(cg5, 'Pmin') * o1cglim52dM(cg5,s)) -
                         sum(n, sum(d$mapD(d,n), DDATA(d,s)) * o1zeta(n,s))) );

uncer11..                 sum(el, AEL(el)) + sum(cl1, o1ACL1(cl1)) =l= 1;
uncer12..                 sum(eg, AEG(eg)) + sum(cg1, o1ACG1(cg1)) =l= 1;

o1peg(eg,s)..                - eglim1d(eg,s) + eglim2d(eg,s) + sum(n$mapEG(eg,n), o1pi(n,s)) =l= EGDATA(eg, 'OC');

o1fel(el,s)..                eleq1d(el,s) - eleq2d(el,s) + ellim1d(el,s) - ellim2d(el,s) + sum(n$mapERL(el,n), o1pi(n,s)) - sum(n$mapESL(el,n), o1pi(n,s)) =e= 0;

o1pcg1(cg1,s)..              - o1cglim11d(cg1,s) + o1cglim12d(cg1,s) + sum(n$mapCG1(cg1,n), o1pi(n,s)) =l= CGDATA1(cg1, 'OC');
o1pcg2(cg2,s)..              - o1cglim21d(cg2,s) + o1cglim22d(cg2,s) + sum(n$mapCG2(cg2,n), o1pi(n,s)) =l= CGDATA2(cg2, 'OC');
o1pcg3(cg3,s)..              - o1cglim31d(cg3,s) + o1cglim32d(cg3,s) + sum(n$mapCG3(cg3,n), o1pi(n,s)) =l= CGDATA3(cg3, 'OC');
o1pcg4(cg4,s)..              - o1cglim41d(cg4,s) + o1cglim42d(cg4,s) + sum(n$mapCG4(cg4,n), o1pi(n,s)) =l= CGDATA4(cg4, 'OC');
o1pcg5(cg5,s)..              - o1cglim51d(cg5,s) + o1cglim52d(cg5,s) + sum(n$mapCG5(cg5,n), o1pi(n,s)) =l= CGDATA5(cg5, 'OC');

o1fcl1(cl1,s)..                o1cleq11d(cl1,s) - o1cleq12d(cl1,s) + o1cllim11d(cl1,s) - o1cllim12d(cl1,s) + sum(n$mapCRL1(cl1,n), o1pi(n,s)) - sum(n$mapCSL1(cl1,n), o1pi(n,s)) =e= 0;
o1fcl2(cl2,s)..                o1cleq21d(cl2,s) - o1cleq22d(cl2,s) + o1cllim21d(cl2,s) - o1cllim22d(cl2,s) + sum(n$mapCRL2(cl2,n), o1pi(n,s)) - sum(n$mapCSL2(cl2,n), o1pi(n,s)) =e= 0;
o1fcl3(cl3,s)..                o1cleq31d(cl3,s) - o1cleq32d(cl3,s) + o1cllim31d(cl3,s) - o1cllim32d(cl3,s) + sum(n$mapCRL3(cl3,n), o1pi(n,s)) - sum(n$mapCSL3(cl3,n), o1pi(n,s)) =e= 0;
o1fcl4(cl4,s)..                o1cleq41d(cl4,s) - o1cleq42d(cl4,s) + o1cllim41d(cl4,s) - o1cllim42d(cl4,s) + sum(n$mapCRL4(cl4,n), o1pi(n,s)) - sum(n$mapCSL4(cl4,n), o1pi(n,s)) =e= 0;
o1fcl5(cl5,s)..                o1cleq51d(cl5,s) - o1cleq52d(cl5,s) + o1cllim51d(cl5,s) - o1cllim52d(cl5,s) + sum(n$mapCRL5(cl5,n), o1pi(n,s)) - sum(n$mapCSL5(cl5,n), o1pi(n,s)) =e= 0;

o1thetan(n,s)..          sum(el$mapESL(el,n), eleq1d(el,s) / ELDATA(el, '1')) - sum(el$mapERL(el,n), eleq1d(el,s) / ELDATA(el, '1')) -
                         sum(el$mapESL(el,n), eleq2d(el,s) / ELDATA(el, '1')) + sum(el$mapERL(el,n), eleq2d(el,s) / ELDATA(el, '1')) +
                         sum(cl1$mapCSL1(cl1,n), o1cleq11d(cl1,s) / CLDATA1(cl1, '1')) - sum(cl1$mapCRL1(cl1,n), o1cleq11d(cl1,s) / CLDATA1(cl1, '1')) -
                         sum(cl1$mapCSL1(cl1,n), o1cleq12d(cl1,s) / CLDATA1(cl1, '1')) + sum(cl1$mapCRL1(cl1,n), o1cleq12d(cl1,s) / CLDATA1(cl1, '1')) +
                         sum(cl2$mapCSL2(cl2,n), o1cleq21d(cl2,s) / CLDATA2(cl2, '1')) - sum(cl2$mapCRL2(cl2,n), o1cleq21d(cl2,s) / CLDATA2(cl2, '1')) -
                         sum(cl2$mapCSL2(cl2,n), o1cleq22d(cl2,s) / CLDATA2(cl2, '1')) + sum(cl2$mapCRL2(cl2,n), o1cleq22d(cl2,s) / CLDATA2(cl2, '1')) +
                         sum(cl3$mapCSL3(cl3,n), o1cleq31d(cl3,s) / CLDATA3(cl3, '1')) - sum(cl3$mapCRL3(cl3,n), o1cleq31d(cl3,s) / CLDATA3(cl3, '1')) -
                         sum(cl3$mapCSL3(cl3,n), o1cleq32d(cl3,s) / CLDATA3(cl3, '1')) + sum(cl3$mapCRL3(cl3,n), o1cleq32d(cl3,s) / CLDATA3(cl3, '1')) +
                         sum(cl4$mapCSL4(cl4,n), o1cleq41d(cl4,s) / CLDATA4(cl4, '1')) - sum(cl4$mapCRL4(cl4,n), o1cleq41d(cl4,s) / CLDATA4(cl4, '1')) -
                         sum(cl4$mapCSL4(cl4,n), o1cleq42d(cl4,s) / CLDATA4(cl4, '1')) + sum(cl4$mapCRL4(cl4,n), o1cleq42d(cl4,s) / CLDATA4(cl4, '1')) +
                         sum(cl5$mapCSL5(cl5,n), o1cleq51d(cl5,s) / CLDATA5(cl5, '1')) - sum(cl5$mapCRL5(cl5,n), o1cleq51d(cl5,s) / CLDATA5(cl5, '1')) -
                         sum(cl5$mapCSL5(cl5,n), o1cleq52d(cl5,s) / CLDATA5(cl5, '1')) + sum(cl5$mapCRL5(cl5,n), o1cleq52d(cl5,s) / CLDATA5(cl5, '1')) =e= 0;

o1rdual(d,s)..             sum(n$mapD(d,n), o1pi(n,s)) - sum(n$mapD(d,n), o1zeta(n,s)) =l= PC;

bigMel11(el,s)..              eleq1dM(el,s) =l= eleq1d(el,s) + M * (1-AEL(el));
bigMel12(el,s)..              eleq1dM(el,s) =g= eleq1d(el,s) - M * (1-AEL(el));
bigMel13(el,s)..              eleq1dM(el,s) =l= M * AEL(el);
bigMel14(el,s)..              eleq1dM(el,s) =g= - M * AEL(el);
bigMel21(el,s)..              eleq2dM(el,s) =l= eleq2d(el,s) + M * (1-AEL(el));
bigMel22(el,s)..              eleq2dM(el,s) =g= eleq2d(el,s) - M * (1-AEL(el));
bigMel23(el,s)..              eleq2dM(el,s) =l= M * AEL(el);
bigMel24(el,s)..              eleq2dM(el,s) =g= - M * AEL(el);

bigMel31(el,s)..              ellim1dM(el,s) =l= ellim1d(el,s) + M * AEL(el);
bigMel32(el,s)..              ellim1dM(el,s) =g= ellim1d(el,s) - M * AEL(el);
bigMel33(el,s)..              ellim1dM(el,s) =l= M * (1-AEL(el));
bigMel34(el,s)..              ellim1dM(el,s) =g= - M * (1-AEL(el));
bigMel41(el,s)..              ellim2dM(el,s) =l= ellim2d(el,s) + M * AEL(el);
bigMel42(el,s)..              ellim2dM(el,s) =g= ellim2d(el,s) - M * AEL(el);
bigMel43(el,s)..              ellim2dM(el,s) =l= M * (1-AEL(el));
bigMel44(el,s)..              ellim2dM(el,s) =g= - M * (1-AEL(el));

bigMeg11(eg,s)..              eglim1dM(eg,s) =l= eglim1d(eg,s) + M * AEG(eg);
bigMeg12(eg,s)..              eglim1dM(eg,s) =g= eglim1d(eg,s) - M * AEG(eg);
bigMeg13(eg,s)..              eglim1dM(eg,s) =l= M * (1-AEG(eg));
bigMeg14(eg,s)..              eglim1dM(eg,s) =g= - M * (1-AEG(eg));
bigMeg21(eg,s)..              eglim2dM(eg,s) =l= eglim2d(eg,s) + M * AEG(eg);
bigMeg22(eg,s)..              eglim2dM(eg,s) =g= eglim2d(eg,s) - M * AEG(eg);
bigMeg23(eg,s)..              eglim2dM(eg,s) =l= M * (1-AEG(eg));
bigMeg24(eg,s)..              eglim2dM(eg,s) =g= - M * (1-AEG(eg));

o1bigMcl11(cl1,s)..              o1cleq11dM(cl1,s) =l= o1cleq11d(cl1,s) + M * xl1m(cl1) * (1-o1ACL1(cl1));
o1bigMcl12(cl1,s)..              o1cleq11dM(cl1,s) =g= o1cleq11d(cl1,s) - M * xl1m(cl1) * (1-O1ACL1(cl1));
o1bigMcl13(cl1,s)..              o1cleq11dM(cl1,s) =l= M * (1-xl1m(cl1) * (1-O1ACL1(cl1)));
o1bigMcl14(cl1,s)..              o1cleq11dM(cl1,s) =g= - M * (1-xl1m(cl1) * (1-O1ACL1(cl1)));
o1bigMcl21(cl1,s)..              o1cleq12dM(cl1,s) =l= o1cleq12d(cl1,s) + M * xl1m(cl1) * (1-O1ACL1(cl1));
o1bigMcl22(cl1,s)..              o1cleq12dM(cl1,s) =g= o1cleq12d(cl1,s) - M * xl1m(cl1) * (1-O1ACL1(cl1));
o1bigMcl23(cl1,s)..              o1cleq12dM(cl1,s) =l= M * (1-xl1m(cl1) * (1-O1ACL1(cl1)));
o1bigMcl24(cl1,s)..              o1cleq12dM(cl1,s) =g= - M * (1-xl1m(cl1) * (1-O1ACL1(cl1)));
o1bigMcl31(cl2,s)..              o1cleq21dM(cl2,s) =e= o1cleq21d(cl2,s);
o1bigMcl41(cl2,s)..              o1cleq22dM(cl2,s) =e= o1cleq22d(cl2,s);
o1bigMcl51(cl3,s)..              o1cleq31dM(cl3,s) =e= o1cleq31d(cl3,s);
o1bigMcl61(cl3,s)..              o1cleq32dM(cl3,s) =e= o1cleq32d(cl3,s);
o1bigMcl71(cl4,s)..              o1cleq41dM(cl4,s) =e= o1cleq41d(cl4,s);
o1bigMcl81(cl4,s)..              o1cleq42dM(cl4,s) =e= o1cleq42d(cl4,s);
o1bigMcl91(cl5,s)..              o1cleq51dM(cl5,s) =e= o1cleq51d(cl5,s);
o1bigMcl01(cl5,s)..              o1cleq52dM(cl5,s) =e= o1cleq52d(cl5,s);

o1bigMcl112(cl1,s)..              o1cllim11dM(cl1,s) =l= o1cllim11d(cl1,s) + M * (1-xl1m(cl1) * (1-O1ACL1(cl1)));
o1bigMcl122(cl1,s)..              o1cllim11dM(cl1,s) =g= o1cllim11d(cl1,s) - M * (1-xl1m(cl1) * (1-O1ACL1(cl1)));
o1bigMcl132(cl1,s)..              o1cllim11dM(cl1,s) =l= M * xl1m(cl1) * (1-O1ACL1(cl1));
o1bigMcl142(cl1,s)..              o1cllim11dM(cl1,s) =g= - M * xl1m(cl1) * (1-O1ACL1(cl1));
o1bigMcl212(cl1,s)..              o1cllim12dM(cl1,s) =l= o1cllim12d(cl1,s) + M * (1-xl1m(cl1) * (1-O1ACL1(cl1)));
o1bigMcl222(cl1,s)..              o1cllim12dM(cl1,s) =g= o1cllim12d(cl1,s) - M * (1-xl1m(cl1) * (1-O1ACL1(cl1)));
o1bigMcl232(cl1,s)..              o1cllim12dM(cl1,s) =l= M * xl1m(cl1) * (1-O1ACL1(cl1));
o1bigMcl242(cl1,s)..              o1cllim12dM(cl1,s) =g= - M * xl1m(cl1) * (1-O1ACL1(cl1));
o1bigMcl332(cl2,s)..              o1cllim21dM(cl2,s) =e= 0;
o1bigMcl432(cl2,s)..              o1cllim22dM(cl2,s) =e= 0;
o1bigMcl532(cl3,s)..              o1cllim31dM(cl3,s) =e= 0;
o1bigMcl632(cl3,s)..              o1cllim32dM(cl3,s) =e= 0;
o1bigMcl732(cl4,s)..              o1cllim41dM(cl4,s) =e= 0;
o1bigMcl832(cl4,s)..              o1cllim42dM(cl4,s) =e= 0;
o1bigMcl932(cl5,s)..              o1cllim51dM(cl5,s) =e= 0;
o1bigMcl032(cl5,s)..              o1cllim52dM(cl5,s) =e= 0;

o1bigMcg11(cg1,s)..              o1cglim11dM(cg1,s) =l= o1cglim11d(cg1,s) + M * (1-xg1m(cg1) * (1-O1ACG1(cg1)));
o1bigMcg12(cg1,s)..              o1cglim11dM(cg1,s) =g= o1cglim11d(cg1,s) - M * (1-xg1m(cg1) * (1-O1ACG1(cg1)));
o1bigMcg13(cg1,s)..              o1cglim11dM(cg1,s) =l= M * xg1m(cg1) * (1-O1ACG1(cg1));
o1bigMcg14(cg1,s)..              o1cglim11dM(cg1,s) =g= - M * xg1m(cg1) * (1-O1ACG1(cg1));
o1bigMcg21(cg1,s)..              o1cglim12dM(cg1,s) =l= o1cglim12d(cg1,s) + M * (1-xg1m(cg1) * (1-O1ACG1(cg1)));
o1bigMcg22(cg1,s)..              o1cglim12dM(cg1,s) =g= o1cglim12d(cg1,s) - M * (1-xg1m(cg1) * (1-O1ACG1(cg1)));
o1bigMcg23(cg1,s)..              o1cglim12dM(cg1,s) =l= M * xg1m(cg1) * (1-O1ACG1(cg1));
o1bigMcg24(cg1,s)..              o1cglim12dM(cg1,s) =g= - M * xg1m(cg1) * (1-O1ACG1(cg1));
o1bigMcg33(cg2,s)..              o1cglim21dM(cg2,s) =e= 0;
o1bigMcg43(cg2,s)..              o1cglim22dM(cg2,s) =e= 0;
o1bigMcg53(cg3,s)..              o1cglim31dM(cg3,s) =e= 0;
o1bigMcg63(cg3,s)..              o1cglim32dM(cg3,s) =e= 0;
o1bigMcg73(cg4,s)..              o1cglim41dM(cg4,s) =e= 0;
o1bigMcg83(cg4,s)..              o1cglim42dM(cg4,s) =e= 0;
o1bigMcg93(cg5,s)..              o1cglim51dM(cg5,s) =e= 0;
o1bigMcg03(cg5,s)..              o1cglim52dM(cg5,s) =e= 0;

Model o1dualsp /         o1subobj,
         uncer11, uncer12,
         o1peg, o1fel, o1pcg1, o1pcg2, o1pcg3, o1pcg4, o1pcg5, o1fcl1, o1fcl2, o1fcl3, o1fcl4, o1fcl5, o1thetan, o1rdual,
         bigMel11, bigMel12, bigMel13, bigMel14, bigMel21, bigMel22, bigMel23, bigMel24, bigMel31, bigMel32, bigMel33, bigMel34, bigMel41, bigMel42, bigMel43, bigMel44,
         bigMeg11, bigMeg12, bigMeg13, bigMeg14, bigMeg21, bigMeg22, bigMeg23, bigMeg24,

         o1bigMcl11, o1bigMcl12, o1bigMcl13, o1bigMcl14, o1bigMcl21, o1bigMcl22, o1bigMcl23, o1bigMcl24, o1bigMcl31, o1bigMcl41, o1bigMcl51,
         o1bigMcl61, o1bigMcl71, o1bigMcl81, o1bigMcl91, o1bigMcl01,
         o1bigMcl112, o1bigMcl122, o1bigMcl132, o1bigMcl142, o1bigMcl212, o1bigMcl222, o1bigMcl232, o1bigMcl242, o1bigMcl332, o1bigMcl432, o1bigMcl532,
         o1bigMcl632, o1bigMcl732, o1bigMcl832, o1bigMcl932, o1bigMcl032,
         o1bigMcg11, o1bigMcg12, o1bigMcg13, o1bigMcg14, o1bigMcg21, o1bigMcg22, o1bigMcg23, o1bigMcg24, o1bigMcg33, o1bigMcg43, o1bigMcg53,
         o1bigMcg63, o1bigMcg73, o1bigMcg83, o1bigMcg93, o1bigMcg03/;

********************************************************************************
************************* SUB O2 ****************************************
********************************************************************************

Positive Variables
                 o2cleq11d(cl1,s), o2cleq12d(cl1,s), o2cleq21d(cl2,s), o2cleq22d(cl2,s), o2cleq31d(cl3,s),
                 o2cleq32d(cl3,s), o2cleq41d(cl4,s), o2cleq42d(cl4,s), o2cleq51d(cl5,s), o2cleq52d(cl5,s),
                 o2cllim11d(cl1,s), o2cllim12d(cl1,s), o2cllim21d(cl2,s), o2cllim22d(cl2,s),
                 o2cllim31d(cl3,s), o2cllim32d(cl3,s), o2cllim41d(cl4,s), o2cllim42d(cl4,s), o2cllim51d(cl5,s), o2cllim52d(cl5,s),
                 o2cglim11d(cg1,s), o2cglim12d(cg1,s), o2cglim21d(cg2,s), o2cglim22d(cg2,s), o2cglim31d(cg3,s), o2cglim32d(cg3,s),
                 o2cglim41d(cg4,s), o2cglim42d(cg4,s), o2cglim51d(cg5,s), o2cglim52d(cg5,s), o2zeta(n,s),

                 o2cleq12dM(cl1,s), o2cleq22dM(cl2,s), o2cleq32dM(cl3,s), o2cleq42dM(cl4,s), o2cleq52dM(cl5,s),
                 o2cleq11dM(cl1,s), o2cleq21dM(cl2,s), o2cleq31dM(cl3,s), o2cleq41dM(cl4,s), o2cleq51dM(cl5,s),
                 o2cllim11dM(cl1,s), o2cllim21dM(cl2,s), o2cllim31dM(cl3,s), o2cllim41dM(cl4,s), o2cllim51dM(cl5,s),
                 o2cllim12dM(cl1,s), o2cllim22dM(cl2,s), o2cllim32dM(cl3,s), o2cllim42dM(cl4,s), o2cllim52dM(cl5,s),
                 o2cglim11dM(cg1,s), o2cglim21dM(cg2,s), o2cglim31dM(cg3,s), o2cglim41dM(cg4,s), o2cglim51dM(cg5,s),
                 o2cglim12dM(cg1,s), o2cglim22dM(cg2,s), o2cglim32dM(cg3,s), o2cglim42dM(cg4,s), o2cglim52dM(cg5,s);

Free Variable
                 o2pi(n,s), o2subdual, o2cllim23d(cl2,s), o2cllim33d(cl3,s), o2cllim43d(cl4,s), o2cllim53d(cl5,s);

Binary Variables
                 o2ACG1(cg1),  o2ACG2(cg2),  o2ACG3(cg3),  o2ACG4(cg4),  o2ACG5(cg5),
                 o2ACL1(cl1),  o2ACL2(cl2),  o2ACL3(cl3),  o2ACL4(cl4),  o2ACL5(cl5) ;

Equations
         o2subobj,
         uncer21, uncer22,
         o2peg, o2fel, o2pcg1, o2pcg2, o2pcg3, o2pcg4, o2pcg5, o2fcl1, o2fcl2, o2fcl3, o2fcl4, o2fcl5, o2thetan, o2rdual,

         o2bigMcl11, o2bigMcl12, o2bigMcl13, o2bigMcl14, o2bigMcl21, o2bigMcl22, o2bigMcl23, o2bigMcl24, o2bigMcl31, o2bigMcl32, o2bigMcl33, o2bigMcl34, o2bigMcl41, o2bigMcl42, o2bigMcl43, o2bigMcl44, o2bigMcl51,
         o2bigMcl61, o2bigMcl71, o2bigMcl81, o2bigMcl91, o2bigMcl01,
         o2bigMcl112, o2bigMcl122, o2bigMcl132, o2bigMcl142, o2bigMcl212, o2bigMcl222, o2bigMcl232, o2bigMcl242, o2bigMcl312, o2bigMcl322, o2bigMcl332, o2bigMcl342, o2bigMcl412, o2bigMcl422, o2bigMcl432, o2bigMcl442, o2bigMcl532,
         o2bigMcl632, o2bigMcl732, o2bigMcl832, o2bigMcl932, o2bigMcl032,
         o2bigMcg11, o2bigMcg12, o2bigMcg13, o2bigMcg14, o2bigMcg21, o2bigMcg22, o2bigMcg23, o2bigMcg24, o2bigMcg31, o2bigMcg32, o2bigMcg33, o2bigMcg34, o2bigMcg41, o2bigMcg42, o2bigMcg43, o2bigMcg44, o2bigMcg53,
         o2bigMcg63, o2bigMcg73, o2bigMcg83, o2bigMcg93, o2bigMcg03;

o2subobj..               o2subdual =e= -sum(s, prob(s) * (sum(n, sum(d$mapD(d,n), DDATA(d,s) * 1.2 * o2pi(n,s))) -
                         sum(el, M * eleq1dM(el,s)) -
                         sum(el, M * eleq2dM(el,s)) -
                         sum(el, ELDATA(el, '4') * ellim1dM(el,s)) -
                         sum(el, ELDATA(el, '4') * ellim2dM(el,s)) -
                         sum(cl1, M * o2cleq11dM(cl1,s)) - sum(cl1, M * o2cleq12dM(cl1,s)) -
                         sum(cl2, M * o2cleq21dM(cl2,s)) - sum(cl2, M * o2cleq22dM(cl2,s)) -
                         sum(cl3, M * o2cleq31dM(cl3,s)) - sum(cl3, M * o2cleq32dM(cl3,s)) -
                         sum(cl4, M * o2cleq41dM(cl4,s)) - sum(cl4, M * o2cleq42dM(cl4,s)) -
                         sum(cl5, M * o2cleq51dM(cl5,s)) - sum(cl5, M * o2cleq52dM(cl5,s)) -
                         sum(cl1, CLDATA1(cl1, '4') * o2cllim11dM(cl1,s)) - sum(cl1, CLDATA1(cl1, '4') * o2cllim12dM(cl1,s)) -
                         sum(cl2, CLDATA2(cl2, '4') * o2cllim21dM(cl2,s)) - sum(cl2, CLDATA2(cl2, '4') * o2cllim22dM(cl2,s)) -
                         sum(cl3, CLDATA3(cl3, '4') * o2cllim31dM(cl3,s)) - sum(cl3, CLDATA3(cl3, '4') * o2cllim32dM(cl3,s)) -
                         sum(cl4, CLDATA4(cl4, '4') * o2cllim41dM(cl4,s)) - sum(cl4, CLDATA4(cl4, '4') * o2cllim42dM(cl4,s)) -
                         sum(cl5, CLDATA5(cl5, '4') * o2cllim51dM(cl5,s)) - sum(cl5, CLDATA5(cl5, '4') * o2cllim52dM(cl5,s)) -
                         sum(eg, eglim1dM(eg,s) * EGDATA(eg, 'Pmax')) + sum(eg, eglim2dM(eg,s) * EGDATA(eg, 'Pmin')) -
                         sum(cg1, CGDATA1(cg1, 'Pmax') * o2cglim11dM(cg1,s)) + sum(cg1, CGDATA1(cg1, 'Pmin') * o2cglim12dM(cg1,s)) -
                         sum(cg2, CGDATA2(cg2, 'Pmax') * o2cglim21dM(cg2,s)) + sum(cg2, CGDATA2(cg2, 'Pmin') * o2cglim22dM(cg2,s)) -
                         sum(cg3, CGDATA3(cg3, 'Pmax') * o2cglim31dM(cg3,s)) + sum(cg3, CGDATA3(cg3, 'Pmin') * o2cglim32dM(cg3,s)) -
                         sum(cg4, CGDATA4(cg4, 'Pmax') * o2cglim41dM(cg4,s)) + sum(cg4, CGDATA4(cg4, 'Pmin') * o2cglim42dM(cg4,s)) -
                         sum(cg5, CGDATA5(cg5, 'Pmax') * o2cglim51dM(cg5,s)) + sum(cg5, CGDATA5(cg5, 'Pmin') * o2cglim52dM(cg5,s)) -
                         sum(n, sum(d$mapD(d,n), DDATA(d,s)) * 1.2 * o2zeta(n,s))) );

uncer21..                 sum(el, AEL(el)) + sum(cl1, o2ACL1(cl1)) + sum(cl2, o2ACL2(cl2)) =l= 1;
uncer22..                 sum(eg, AEG(eg)) + sum(cg1, o2ACG1(cg1)) + sum(cg2, o2ACG2(cg2)) =l= 1;

o2peg(eg,s)..                - eglim1d(eg,s) + eglim2d(eg,s) + sum(n$mapEG(eg,n), o2pi(n,s)) =l= EGDATA(eg, 'OC');

o2fel(el,s)..                eleq1d(el,s) - eleq2d(el,s) + ellim1d(el,s) - ellim2d(el,s) + sum(n$mapERL(el,n), o2pi(n,s)) - sum(n$mapESL(el,n), o2pi(n,s)) =e= 0;

o2pcg1(cg1,s)..              - o2cglim11d(cg1,s) + o2cglim12d(cg1,s) + sum(n$mapCG1(cg1,n), o2pi(n,s)) =l= CGDATA1(cg1, 'OC');
o2pcg2(cg2,s)..              - o2cglim21d(cg2,s) + o2cglim22d(cg2,s) + sum(n$mapCG2(cg2,n), o2pi(n,s)) =l= CGDATA2(cg2, 'OC');
o2pcg3(cg3,s)..              - o2cglim31d(cg3,s) + o2cglim32d(cg3,s) + sum(n$mapCG3(cg3,n), o2pi(n,s)) =l= CGDATA3(cg3, 'OC');
o2pcg4(cg4,s)..              - o2cglim41d(cg4,s) + o2cglim42d(cg4,s) + sum(n$mapCG4(cg4,n), o2pi(n,s)) =l= CGDATA4(cg4, 'OC');
o2pcg5(cg5,s)..              - o2cglim51d(cg5,s) + o2cglim52d(cg5,s) + sum(n$mapCG5(cg5,n), o2pi(n,s)) =l= CGDATA5(cg5, 'OC');

o2fcl1(cl1,s)..                o2cleq11d(cl1,s) - o2cleq12d(cl1,s) + o2cllim11d(cl1,s) - o2cllim12d(cl1,s) + sum(n$mapCRL1(cl1,n), o2pi(n,s)) - sum(n$mapCSL1(cl1,n), o2pi(n,s)) =e= 0;
o2fcl2(cl2,s)..                o2cleq21d(cl2,s) - o2cleq22d(cl2,s) + o2cllim21d(cl2,s) - o2cllim22d(cl2,s) + sum(n$mapCRL2(cl2,n), o2pi(n,s)) - sum(n$mapCSL2(cl2,n), o2pi(n,s)) =e= 0;
o2fcl3(cl3,s)..                o2cleq31d(cl3,s) - o2cleq32d(cl3,s) + o2cllim31d(cl3,s) - o2cllim32d(cl3,s) + sum(n$mapCRL3(cl3,n), o2pi(n,s)) - sum(n$mapCSL3(cl3,n), o2pi(n,s)) =e= 0;
o2fcl4(cl4,s)..                o2cleq41d(cl4,s) - o2cleq42d(cl4,s) + o2cllim41d(cl4,s) - o2cllim42d(cl4,s) + sum(n$mapCRL4(cl4,n), o2pi(n,s)) - sum(n$mapCSL4(cl4,n), o2pi(n,s)) =e= 0;
o2fcl5(cl5,s)..                o2cleq51d(cl5,s) - o2cleq52d(cl5,s) + o2cllim51d(cl5,s) - o2cllim52d(cl5,s) + sum(n$mapCRL5(cl5,n), o2pi(n,s)) - sum(n$mapCSL5(cl5,n), o2pi(n,s)) =e= 0;

o2thetan(n,s)..          sum(el$mapESL(el,n), eleq1d(el,s) / ELDATA(el, '1')) - sum(el$mapERL(el,n), eleq1d(el,s) / ELDATA(el, '1')) -
                         sum(el$mapESL(el,n), eleq2d(el,s) / ELDATA(el, '1')) + sum(el$mapERL(el,n), eleq2d(el,s) / ELDATA(el, '1')) +
                         sum(cl1$mapCSL1(cl1,n), o2cleq11d(cl1,s) / CLDATA1(cl1, '1')) - sum(cl1$mapCRL1(cl1,n), o2cleq11d(cl1,s) / CLDATA1(cl1, '1')) -
                         sum(cl1$mapCSL1(cl1,n), o2cleq12d(cl1,s) / CLDATA1(cl1, '1')) + sum(cl1$mapCRL1(cl1,n), o2cleq12d(cl1,s) / CLDATA1(cl1, '1')) +
                         sum(cl2$mapCSL2(cl2,n), o2cleq21d(cl2,s) / CLDATA2(cl2, '1')) - sum(cl2$mapCRL2(cl2,n), o2cleq21d(cl2,s) / CLDATA2(cl2, '1')) -
                         sum(cl2$mapCSL2(cl2,n), o2cleq22d(cl2,s) / CLDATA2(cl2, '1')) + sum(cl2$mapCRL2(cl2,n), o2cleq22d(cl2,s) / CLDATA2(cl2, '1')) +
                         sum(cl3$mapCSL3(cl3,n), o2cleq31d(cl3,s) / CLDATA3(cl3, '1')) - sum(cl3$mapCRL3(cl3,n), o2cleq31d(cl3,s) / CLDATA3(cl3, '1')) -
                         sum(cl3$mapCSL3(cl3,n), o2cleq32d(cl3,s) / CLDATA3(cl3, '1')) + sum(cl3$mapCRL3(cl3,n), o2cleq32d(cl3,s) / CLDATA3(cl3, '1')) +
                         sum(cl4$mapCSL4(cl4,n), o2cleq41d(cl4,s) / CLDATA4(cl4, '1')) - sum(cl4$mapCRL4(cl4,n), o2cleq41d(cl4,s) / CLDATA4(cl4, '1')) -
                         sum(cl4$mapCSL4(cl4,n), o2cleq42d(cl4,s) / CLDATA4(cl4, '1')) + sum(cl4$mapCRL4(cl4,n), o2cleq42d(cl4,s) / CLDATA4(cl4, '1')) +
                         sum(cl5$mapCSL5(cl5,n), o2cleq51d(cl5,s) / CLDATA5(cl5, '1')) - sum(cl5$mapCRL5(cl5,n), o2cleq51d(cl5,s) / CLDATA5(cl5, '1')) -
                         sum(cl5$mapCSL5(cl5,n), o2cleq52d(cl5,s) / CLDATA5(cl5, '1')) + sum(cl5$mapCRL5(cl5,n), o2cleq52d(cl5,s) / CLDATA5(cl5, '1')) =e= 0;

o2rdual(d,s)..             sum(n$mapD(d,n), o2pi(n,s)) - sum(n$mapD(d,n), o2zeta(n,s)) =l= PC;

o2bigMcl11(cl1,s)..              o2cleq11dM(cl1,s) =l= o2cleq11d(cl1,s) + M * xl1m(cl1) * (1-o2ACL1(cl1));
o2bigMcl12(cl1,s)..              o2cleq11dM(cl1,s) =g= o2cleq11d(cl1,s) - M * xl1m(cl1) * (1-O2ACL1(cl1));
o2bigMcl13(cl1,s)..              o2cleq11dM(cl1,s) =l= M * (1-xl1m(cl1) * (1-O2ACL1(cl1)));
o2bigMcl14(cl1,s)..              o2cleq11dM(cl1,s) =g= - M * (1-xl1m(cl1) * (1-O2ACL1(cl1)));
o2bigMcl21(cl1,s)..              o2cleq12dM(cl1,s) =l= o2cleq12d(cl1,s) + M * xl1m(cl1) * (1-O2ACL1(cl1));
o2bigMcl22(cl1,s)..              o2cleq12dM(cl1,s) =g= o2cleq12d(cl1,s) - M * xl1m(cl1) * (1-O2ACL1(cl1));
o2bigMcl23(cl1,s)..              o2cleq12dM(cl1,s) =l= M * (1-xl1m(cl1) * (1-O2ACL1(cl1)));
o2bigMcl24(cl1,s)..              o2cleq12dM(cl1,s) =g= - M * (1-xl1m(cl1) * (1-O2ACL1(cl1)));
o2bigMcl31(cl2,s)..              o2cleq21dM(cl2,s) =l= o2cleq21d(cl2,s) + M * xl2m(cl2) * (1-o2ACL2(cl2));
o2bigMcl32(cl2,s)..              o2cleq21dM(cl2,s) =g= o2cleq21d(cl2,s) - M * xl2m(cl2) * (1-O2ACL2(cl2));
o2bigMcl33(cl2,s)..              o2cleq21dM(cl2,s) =l= M * (1-xl2m(cl2) * (1-O2ACL2(cl2)));
o2bigMcl34(cl2,s)..              o2cleq21dM(cl2,s) =g= - M * (1-xl2m(cl2) * (1-O2ACL2(cl2)));
o2bigMcl41(cl2,s)..              o2cleq22dM(cl2,s) =l= o2cleq22d(cl2,s) + M * xl2m(cl2) * (1-O2ACL2(cl2));
o2bigMcl42(cl2,s)..              o2cleq22dM(cl2,s) =g= o2cleq22d(cl2,s) - M * xl2m(cl2) * (1-O2ACL2(cl2));
o2bigMcl43(cl2,s)..              o2cleq22dM(cl2,s) =l= M * (1-xl2m(cl2) * (1-O2ACL2(cl2)));
o2bigMcl44(cl2,s)..              o2cleq22dM(cl2,s) =g= - M * (1-xl2m(cl2) * (1-O2ACL2(cl2)));

o2bigMcl51(cl3,s)..              o2cleq31dM(cl3,s) =e= o2cleq31d(cl3,s);
o2bigMcl61(cl3,s)..              o2cleq32dM(cl3,s) =e= o2cleq32d(cl3,s);
o2bigMcl71(cl4,s)..              o2cleq41dM(cl4,s) =e= o2cleq41d(cl4,s);
o2bigMcl81(cl4,s)..              o2cleq42dM(cl4,s) =e= o2cleq42d(cl4,s);
o2bigMcl91(cl5,s)..              o2cleq51dM(cl5,s) =e= o2cleq51d(cl5,s);
o2bigMcl01(cl5,s)..              o2cleq52dM(cl5,s) =e= o2cleq52d(cl5,s);

o2bigMcl112(cl1,s)..              o2cllim11dM(cl1,s) =l= o2cllim11d(cl1,s) + M * (1-xl1m(cl1) * (1-O2ACL1(cl1)));
o2bigMcl122(cl1,s)..              o2cllim11dM(cl1,s) =g= o2cllim11d(cl1,s) - M * (1-xl1m(cl1) * (1-O2ACL1(cl1)));
o2bigMcl132(cl1,s)..              o2cllim11dM(cl1,s) =l= M * xl1m(cl1) * (1-O2ACL1(cl1));
o2bigMcl142(cl1,s)..              o2cllim11dM(cl1,s) =g= - M * xl1m(cl1) * (1-O2ACL1(cl1));
o2bigMcl212(cl1,s)..              o2cllim12dM(cl1,s) =l= o2cllim12d(cl1,s) + M * (1-xl1m(cl1) * (1-O2ACL1(cl1)));
o2bigMcl222(cl1,s)..              o2cllim12dM(cl1,s) =g= o2cllim12d(cl1,s) - M * (1-xl1m(cl1) * (1-O2ACL1(cl1)));
o2bigMcl232(cl1,s)..              o2cllim12dM(cl1,s) =l= M * xl1m(cl1) * (1-O2ACL1(cl1));
o2bigMcl242(cl1,s)..              o2cllim12dM(cl1,s) =g= - M * xl1m(cl1) * (1-O2ACL1(cl1));
o2bigMcl312(cl2,s)..              o2cllim21dM(cl2,s) =l= o2cllim21d(cl2,s) + M * (1-xl2m(cl2) * (1-O2ACL2(cl2)));
o2bigMcl322(cl2,s)..              o2cllim21dM(cl2,s) =g= o2cllim21d(cl2,s) - M * (1-xl2m(cl2) * (1-O2ACL2(cl2)));
o2bigMcl332(cl2,s)..              o2cllim21dM(cl2,s) =l= M * xl2m(cl2) * (1-O2ACL2(cl2));
o2bigMcl342(cl2,s)..              o2cllim21dM(cl2,s) =g= - M * xl2m(cl2) * (1-O2ACL2(cl2));
o2bigMcl412(cl2,s)..              o2cllim22dM(cl2,s) =l= o2cllim22d(cl2,s) + M * (1-xl2m(cl2) * (1-O2ACL2(cl2)));
o2bigMcl422(cl2,s)..              o2cllim22dM(cl2,s) =g= o2cllim22d(cl2,s) - M * (1-xl2m(cl2) * (1-O2ACL2(cl2)));
o2bigMcl432(cl2,s)..              o2cllim22dM(cl2,s) =l= M * xl2m(cl2) * (1-O2ACL2(cl2));
o2bigMcl442(cl2,s)..              o2cllim22dM(cl2,s) =g= - M * xl2m(cl2) * (1-O2ACL2(cl2));

o2bigMcl532(cl3,s)..              o2cllim31dM(cl3,s) =e= 0;
o2bigMcl632(cl3,s)..              o2cllim32dM(cl3,s) =e= 0;
o2bigMcl732(cl4,s)..              o2cllim41dM(cl4,s) =e= 0;
o2bigMcl832(cl4,s)..              o2cllim42dM(cl4,s) =e= 0;
o2bigMcl932(cl5,s)..              o2cllim51dM(cl5,s) =e= 0;
o2bigMcl032(cl5,s)..              o2cllim52dM(cl5,s) =e= 0;

o2bigMcg11(cg1,s)..              o2cglim11dM(cg1,s) =l= o2cglim11d(cg1,s) + M * (1-xg1m(cg1) * (1-O2ACG1(cg1)));
o2bigMcg12(cg1,s)..              o2cglim11dM(cg1,s) =g= o2cglim11d(cg1,s) - M * (1-xg1m(cg1) * (1-O2ACG1(cg1)));
o2bigMcg13(cg1,s)..              o2cglim11dM(cg1,s) =l= M * xg1m(cg1) * (1-O2ACG1(cg1));
o2bigMcg14(cg1,s)..              o2cglim11dM(cg1,s) =g= - M * xg1m(cg1) * (1-O2ACG1(cg1));
o2bigMcg21(cg1,s)..              o2cglim12dM(cg1,s) =l= o2cglim12d(cg1,s) + M * (1-xg1m(cg1) * (1-O2ACG1(cg1)));
o2bigMcg22(cg1,s)..              o2cglim12dM(cg1,s) =g= o2cglim12d(cg1,s) - M * (1-xg1m(cg1) * (1-O2ACG1(cg1)));
o2bigMcg23(cg1,s)..              o2cglim12dM(cg1,s) =l= M * xg1m(cg1) * (1-O2ACG1(cg1));
o2bigMcg24(cg1,s)..              o2cglim12dM(cg1,s) =g= - M * xg1m(cg1) * (1-O2ACG1(cg1));
o2bigMcg31(cg2,s)..              o2cglim21dM(cg2,s) =l= o2cglim21d(cg2,s) + M * (1-xg2m(cg2) * (1-O2ACG2(cg2)));
o2bigMcg32(cg2,s)..              o2cglim21dM(cg2,s) =g= o2cglim21d(cg2,s) - M * (1-xg2m(cg2) * (1-O2ACG2(cg2)));
o2bigMcg33(cg2,s)..              o2cglim21dM(cg2,s) =l= M * xg2m(cg2) * (1-O2ACG2(cg2));
o2bigMcg34(cg2,s)..              o2cglim21dM(cg2,s) =g= - M * xg2m(cg2) * (1-O2ACG2(cg2));
o2bigMcg41(cg2,s)..              o2cglim22dM(cg2,s) =l= o2cglim22d(cg2,s) + M * (1-xg2m(cg2) * (1-O2ACG2(cg2)));
o2bigMcg42(cg2,s)..              o2cglim22dM(cg2,s) =g= o2cglim22d(cg2,s) - M * (1-xg2m(cg2) * (1-O2ACG2(cg2)));
o2bigMcg43(cg2,s)..              o2cglim22dM(cg2,s) =l= M * xg2m(cg2) * (1-O2ACG2(cg2));
o2bigMcg44(cg2,s)..              o2cglim22dM(cg2,s) =g= - M * xg2m(cg2) * (1-O2ACG2(cg2));

o2bigMcg53(cg3,s)..              o2cglim31dM(cg3,s) =e= 0;
o2bigMcg63(cg3,s)..              o2cglim32dM(cg3,s) =e= 0;
o2bigMcg73(cg4,s)..              o2cglim41dM(cg4,s) =e= 0;
o2bigMcg83(cg4,s)..              o2cglim42dM(cg4,s) =e= 0;
o2bigMcg93(cg5,s)..              o2cglim51dM(cg5,s) =e= 0;
o2bigMcg03(cg5,s)..              o2cglim52dM(cg5,s) =e= 0;

Model o2dualsp /
         bigMel11, bigMel12, bigMel13, bigMel14, bigMel21, bigMel22, bigMel23, bigMel24, bigMel31, bigMel32, bigMel33, bigMel34, bigMel41, bigMel42, bigMel43, bigMel44,
         bigMeg11, bigMeg12, bigMeg13, bigMeg14, bigMeg21, bigMeg22, bigMeg23, bigMeg24,
         o2subobj,
         uncer21, uncer22,
         o2peg, o2fel, o2pcg1, o2pcg2, o2pcg3, o2pcg4, o2pcg5, o2fcl1, o2fcl2, o2fcl3, o2fcl4, o2fcl5, o2thetan, o2rdual,

         o2bigMcl11, o2bigMcl12, o2bigMcl13, o2bigMcl14, o2bigMcl21, o2bigMcl22, o2bigMcl23, o2bigMcl24, o2bigMcl31, o2bigMcl32, o2bigMcl33, o2bigMcl34, o2bigMcl41, o2bigMcl42, o2bigMcl43, o2bigMcl44, o2bigMcl51,
         o2bigMcl61, o2bigMcl71, o2bigMcl81, o2bigMcl91, o2bigMcl01,
         o2bigMcl112, o2bigMcl122, o2bigMcl132, o2bigMcl142, o2bigMcl212, o2bigMcl222, o2bigMcl232, o2bigMcl242, o2bigMcl312, o2bigMcl322, o2bigMcl332, o2bigMcl342, o2bigMcl412, o2bigMcl422, o2bigMcl432, o2bigMcl442, o2bigMcl532,
         o2bigMcl632, o2bigMcl732, o2bigMcl832, o2bigMcl932, o2bigMcl032,
         o2bigMcg11, o2bigMcg12, o2bigMcg13, o2bigMcg14, o2bigMcg21, o2bigMcg22, o2bigMcg23, o2bigMcg24, o2bigMcg31, o2bigMcg32, o2bigMcg33, o2bigMcg34, o2bigMcg41, o2bigMcg42, o2bigMcg43, o2bigMcg44, o2bigMcg53,
         o2bigMcg63, o2bigMcg73, o2bigMcg83, o2bigMcg93, o2bigMcg03/;

********************************************************************************
************************* SUB O3 ****************************************
********************************************************************************

Positive Variables
                 o3cleq11d(cl1,s), o3cleq12d(cl1,s), o3cleq21d(cl2,s), o3cleq22d(cl2,s), o3cleq31d(cl3,s),
                 o3cleq32d(cl3,s), o3cleq41d(cl4,s), o3cleq42d(cl4,s), o3cleq51d(cl5,s), o3cleq52d(cl5,s),
                 o3cllim11d(cl1,s), o3cllim12d(cl1,s), o3cllim21d(cl2,s), o3cllim22d(cl2,s),
                 o3cllim31d(cl3,s), o3cllim32d(cl3,s), o3cllim41d(cl4,s), o3cllim42d(cl4,s), o3cllim51d(cl5,s), o3cllim52d(cl5,s),
                 o3cglim11d(cg1,s), o3cglim12d(cg1,s), o3cglim21d(cg2,s), o3cglim22d(cg2,s), o3cglim31d(cg3,s), o3cglim32d(cg3,s),
                 o3cglim41d(cg4,s), o3cglim42d(cg4,s), o3cglim51d(cg5,s), o3cglim52d(cg5,s), o3zeta(n,s),

                 o3cleq12dM(cl1,s), o3cleq22dM(cl2,s), o3cleq32dM(cl3,s), o3cleq42dM(cl4,s), o3cleq52dM(cl5,s),
                 o3cleq11dM(cl1,s), o3cleq21dM(cl2,s), o3cleq31dM(cl3,s), o3cleq41dM(cl4,s), o3cleq51dM(cl5,s),
                 o3cllim11dM(cl1,s), o3cllim21dM(cl2,s), o3cllim31dM(cl3,s), o3cllim41dM(cl4,s), o3cllim51dM(cl5,s),
                 o3cllim12dM(cl1,s), o3cllim22dM(cl2,s), o3cllim32dM(cl3,s), o3cllim42dM(cl4,s), o3cllim52dM(cl5,s),
                 o3cglim11dM(cg1,s), o3cglim21dM(cg2,s), o3cglim31dM(cg3,s), o3cglim41dM(cg4,s), o3cglim51dM(cg5,s),
                 o3cglim12dM(cg1,s), o3cglim22dM(cg2,s), o3cglim32dM(cg3,s), o3cglim42dM(cg4,s), o3cglim52dM(cg5,s);

Free Variable
                 o3pi(n,s), o3subdual, o3cllim23d(cl2,s), o3cllim33d(cl3,s), o3cllim43d(cl4,s), o3cllim53d(cl5,s);

Binary Variables
                 o3ACG1(cg1),  o3ACG2(cg2),  o3ACG3(cg3),  o3ACG4(cg4),  o3ACG5(cg5),
                 o3ACL1(cl1),  o3ACL2(cl2),  o3ACL3(cl3),  o3ACL4(cl4),  o3ACL5(cl5) ;

Equations
         o3subobj,
         uncer31, uncer32,
         o3peg, o3fel, o3pcg1, o3pcg2, o3pcg3, o3pcg4, o3pcg5, o3fcl1, o3fcl2, o3fcl3, o3fcl4, o3fcl5, o3thetan, o3rdual,

         o3bigMcl11, o3bigMcl12, o3bigMcl13, o3bigMcl14, o3bigMcl21, o3bigMcl22, o3bigMcl23, o3bigMcl24, o3bigMcl31, o3bigMcl32, o3bigMcl33, o3bigMcl34, o3bigMcl41, o3bigMcl42, o3bigMcl43, o3bigMcl44, o3bigMcl51, o3bigMcl52, o3bigMcl53, o3bigMcl54,
         o3bigMcl61, o3bigMcl62, o3bigMcl63, o3bigMcl64, o3bigMcl71, o3bigMcl81, o3bigMcl91, o3bigMcl01,
         o3bigMcl112, o3bigMcl122, o3bigMcl132, o3bigMcl142, o3bigMcl212, o3bigMcl222, o3bigMcl232, o3bigMcl242, o3bigMcl312, o3bigMcl322, o3bigMcl332, o3bigMcl342, o3bigMcl412, o3bigMcl422, o3bigMcl432, o3bigMcl442, o3bigMcl512, o3bigMcl522, o3bigMcl532, o3bigMcl542,
         o3bigMcl612, o3bigMcl622, o3bigMcl632, o3bigMcl642, o3bigMcl732, o3bigMcl832, o3bigMcl932, o3bigMcl032,
         o3bigMcg11, o3bigMcg12, o3bigMcg13, o3bigMcg14, o3bigMcg21, o3bigMcg22, o3bigMcg23, o3bigMcg24, o3bigMcg31, o3bigMcg32, o3bigMcg33, o3bigMcg34, o3bigMcg41, o3bigMcg42, o3bigMcg43, o3bigMcg44, o3bigMcg51, o3bigMcg52, o3bigMcg53, o3bigMcg54,
         o3bigMcg61, o3bigMcg62, o3bigMcg63, o3bigMcg64, o3bigMcg73, o3bigMcg83, o3bigMcg93, o3bigMcg03;

o3subobj..               o3subdual =e= -sum(s, prob(s) * (sum(n, sum(d$mapD(d,n), DDATA(d,s) * 1.2 * 1.2 * o3pi(n,s))) -
                         sum(el, M * eleq1dM(el,s)) -
                         sum(el, M * eleq2dM(el,s)) -
                         sum(el, ELDATA(el, '4') * ellim1dM(el,s)) -
                         sum(el, ELDATA(el, '4') * ellim2dM(el,s)) -
                         sum(cl1, M * o3cleq11dM(cl1,s)) - sum(cl1, M * o3cleq12dM(cl1,s)) -
                         sum(cl2, M * o3cleq21dM(cl2,s)) - sum(cl2, M * o3cleq22dM(cl2,s)) -
                         sum(cl3, M * o3cleq31dM(cl3,s)) - sum(cl3, M * o3cleq32dM(cl3,s)) -
                         sum(cl4, M * o3cleq41dM(cl4,s)) - sum(cl4, M * o3cleq42dM(cl4,s)) -
                         sum(cl5, M * o3cleq51dM(cl5,s)) - sum(cl5, M * o3cleq52dM(cl5,s)) -
                         sum(cl1, CLDATA1(cl1, '4') * o3cllim11dM(cl1,s)) - sum(cl1, CLDATA1(cl1, '4') * o3cllim12dM(cl1,s)) -
                         sum(cl2, CLDATA2(cl2, '4') * o3cllim21dM(cl2,s)) - sum(cl2, CLDATA2(cl2, '4') * o3cllim22dM(cl2,s)) -
                         sum(cl3, CLDATA3(cl3, '4') * o3cllim31dM(cl3,s)) - sum(cl3, CLDATA3(cl3, '4') * o3cllim32dM(cl3,s)) -
                         sum(cl4, CLDATA4(cl4, '4') * o3cllim41dM(cl4,s)) - sum(cl4, CLDATA4(cl4, '4') * o3cllim42dM(cl4,s)) -
                         sum(cl5, CLDATA5(cl5, '4') * o3cllim51dM(cl5,s)) - sum(cl5, CLDATA5(cl5, '4') * o3cllim52dM(cl5,s)) -
                         sum(eg, eglim1dM(eg,s) * EGDATA(eg, 'Pmax')) + sum(eg, eglim2dM(eg,s) * EGDATA(eg, 'Pmin')) -
                         sum(cg1, CGDATA1(cg1, 'Pmax') * o3cglim11dM(cg1,s)) + sum(cg1, CGDATA1(cg1, 'Pmin') * o3cglim12dM(cg1,s)) -
                         sum(cg2, CGDATA2(cg2, 'Pmax') * o3cglim21dM(cg2,s)) + sum(cg2, CGDATA2(cg2, 'Pmin') * o3cglim22dM(cg2,s)) -
                         sum(cg3, CGDATA3(cg3, 'Pmax') * o3cglim31dM(cg3,s)) + sum(cg3, CGDATA3(cg3, 'Pmin') * o3cglim32dM(cg3,s)) -
                         sum(cg4, CGDATA4(cg4, 'Pmax') * o3cglim41dM(cg4,s)) + sum(cg4, CGDATA4(cg4, 'Pmin') * o3cglim42dM(cg4,s)) -
                         sum(cg5, CGDATA5(cg5, 'Pmax') * o3cglim51dM(cg5,s)) + sum(cg5, CGDATA5(cg5, 'Pmin') * o3cglim52dM(cg5,s)) -
                         sum(n, sum(d$mapD(d,n), DDATA(d,s)) * 1.2 * 1.2 * o3zeta(n,s))) );

uncer31..                 sum(el, AEL(el)) + sum(cl1, o3ACL1(cl1)) + sum(cl2, o3ACL2(cl2)) + sum(cl3, o3ACL3(cl3)) =l= 1;
uncer32..                 sum(eg, AEG(eg)) + sum(cg1, o3ACG1(cg1)) + sum(cg2, o3ACG2(cg2)) + sum(cg3, o3ACG3(cg3)) =l= 1;

o3peg(eg,s)..                - eglim1d(eg,s) + eglim2d(eg,s) + sum(n$mapEG(eg,n), o3pi(n,s)) =l= EGDATA(eg, 'OC');

o3fel(el,s)..                eleq1d(el,s) - eleq2d(el,s) + ellim1d(el,s) - ellim2d(el,s) + sum(n$mapERL(el,n), o3pi(n,s)) - sum(n$mapESL(el,n), o3pi(n,s)) =e= 0;

o3pcg1(cg1,s)..              - o3cglim11d(cg1,s) + o3cglim12d(cg1,s) + sum(n$mapCG1(cg1,n), o3pi(n,s)) =l= CGDATA1(cg1, 'OC');
o3pcg2(cg2,s)..              - o3cglim21d(cg2,s) + o3cglim22d(cg2,s) + sum(n$mapCG2(cg2,n), o3pi(n,s)) =l= CGDATA2(cg2, 'OC');
o3pcg3(cg3,s)..              - o3cglim31d(cg3,s) + o3cglim32d(cg3,s) + sum(n$mapCG3(cg3,n), o3pi(n,s)) =l= CGDATA3(cg3, 'OC');
o3pcg4(cg4,s)..              - o3cglim41d(cg4,s) + o3cglim42d(cg4,s) + sum(n$mapCG4(cg4,n), o3pi(n,s)) =l= CGDATA4(cg4, 'OC');
o3pcg5(cg5,s)..              - o3cglim51d(cg5,s) + o3cglim52d(cg5,s) + sum(n$mapCG5(cg5,n), o3pi(n,s)) =l= CGDATA5(cg5, 'OC');

o3fcl1(cl1,s)..                o3cleq11d(cl1,s) - o3cleq12d(cl1,s) + o3cllim11d(cl1,s) - o3cllim12d(cl1,s) + sum(n$mapCRL1(cl1,n), o3pi(n,s)) - sum(n$mapCSL1(cl1,n), o3pi(n,s)) =e= 0;
o3fcl2(cl2,s)..                o3cleq21d(cl2,s) - o3cleq22d(cl2,s) + o3cllim21d(cl2,s) - o3cllim22d(cl2,s) + sum(n$mapCRL2(cl2,n), o3pi(n,s)) - sum(n$mapCSL2(cl2,n), o3pi(n,s)) =e= 0;
o3fcl3(cl3,s)..                o3cleq31d(cl3,s) - o3cleq32d(cl3,s) + o3cllim31d(cl3,s) - o3cllim32d(cl3,s) + sum(n$mapCRL3(cl3,n), o3pi(n,s)) - sum(n$mapCSL3(cl3,n), o3pi(n,s)) =e= 0;
o3fcl4(cl4,s)..                o3cleq41d(cl4,s) - o3cleq42d(cl4,s) + o3cllim41d(cl4,s) - o3cllim42d(cl4,s) + sum(n$mapCRL4(cl4,n), o3pi(n,s)) - sum(n$mapCSL4(cl4,n), o3pi(n,s)) =e= 0;
o3fcl5(cl5,s)..                o3cleq51d(cl5,s) - o3cleq52d(cl5,s) + o3cllim51d(cl5,s) - o3cllim52d(cl5,s) + sum(n$mapCRL5(cl5,n), o3pi(n,s)) - sum(n$mapCSL5(cl5,n), o3pi(n,s)) =e= 0;

o3thetan(n,s)..          sum(el$mapESL(el,n), eleq1d(el,s) / ELDATA(el, '1')) - sum(el$mapERL(el,n), eleq1d(el,s) / ELDATA(el, '1')) -
                         sum(el$mapESL(el,n), eleq2d(el,s) / ELDATA(el, '1')) + sum(el$mapERL(el,n), eleq2d(el,s) / ELDATA(el, '1')) +
                         sum(cl1$mapCSL1(cl1,n), o3cleq11d(cl1,s) / CLDATA1(cl1, '1')) - sum(cl1$mapCRL1(cl1,n), o3cleq11d(cl1,s) / CLDATA1(cl1, '1')) -
                         sum(cl1$mapCSL1(cl1,n), o3cleq12d(cl1,s) / CLDATA1(cl1, '1')) + sum(cl1$mapCRL1(cl1,n), o3cleq12d(cl1,s) / CLDATA1(cl1, '1')) +
                         sum(cl2$mapCSL2(cl2,n), o3cleq21d(cl2,s) / CLDATA2(cl2, '1')) - sum(cl2$mapCRL2(cl2,n), o3cleq21d(cl2,s) / CLDATA2(cl2, '1')) -
                         sum(cl2$mapCSL2(cl2,n), o3cleq22d(cl2,s) / CLDATA2(cl2, '1')) + sum(cl2$mapCRL2(cl2,n), o3cleq22d(cl2,s) / CLDATA2(cl2, '1')) +
                         sum(cl3$mapCSL3(cl3,n), o3cleq31d(cl3,s) / CLDATA3(cl3, '1')) - sum(cl3$mapCRL3(cl3,n), o3cleq31d(cl3,s) / CLDATA3(cl3, '1')) -
                         sum(cl3$mapCSL3(cl3,n), o3cleq32d(cl3,s) / CLDATA3(cl3, '1')) + sum(cl3$mapCRL3(cl3,n), o3cleq32d(cl3,s) / CLDATA3(cl3, '1')) +
                         sum(cl4$mapCSL4(cl4,n), o3cleq41d(cl4,s) / CLDATA4(cl4, '1')) - sum(cl4$mapCRL4(cl4,n), o3cleq41d(cl4,s) / CLDATA4(cl4, '1')) -
                         sum(cl4$mapCSL4(cl4,n), o3cleq42d(cl4,s) / CLDATA4(cl4, '1')) + sum(cl4$mapCRL4(cl4,n), o3cleq42d(cl4,s) / CLDATA4(cl4, '1')) +
                         sum(cl5$mapCSL5(cl5,n), o3cleq51d(cl5,s) / CLDATA5(cl5, '1')) - sum(cl5$mapCRL5(cl5,n), o3cleq51d(cl5,s) / CLDATA5(cl5, '1')) -
                         sum(cl5$mapCSL5(cl5,n), o3cleq52d(cl5,s) / CLDATA5(cl5, '1')) + sum(cl5$mapCRL5(cl5,n), o3cleq52d(cl5,s) / CLDATA5(cl5, '1')) =e= 0;

o3rdual(d,s)..             sum(n$mapD(d,n), o3pi(n,s)) - sum(n$mapD(d,n), o3zeta(n,s)) =l= PC;

o3bigMcl11(cl1,s)..              o3cleq11dM(cl1,s) =l= o3cleq11d(cl1,s) + M * xl1m(cl1) * (1-o3ACL1(cl1));
o3bigMcl12(cl1,s)..              o3cleq11dM(cl1,s) =g= o3cleq11d(cl1,s) - M * xl1m(cl1) * (1-O3ACL1(cl1));
o3bigMcl13(cl1,s)..              o3cleq11dM(cl1,s) =l= M * (1-xl1m(cl1) * (1-O3ACL1(cl1)));
o3bigMcl14(cl1,s)..              o3cleq11dM(cl1,s) =g= - M * (1-xl1m(cl1) * (1-O3ACL1(cl1)));
o3bigMcl21(cl1,s)..              o3cleq12dM(cl1,s) =l= o3cleq12d(cl1,s) + M * xl1m(cl1) * (1-O3ACL1(cl1));
o3bigMcl22(cl1,s)..              o3cleq12dM(cl1,s) =g= o3cleq12d(cl1,s) - M * xl1m(cl1) * (1-O3ACL1(cl1));
o3bigMcl23(cl1,s)..              o3cleq12dM(cl1,s) =l= M * (1-xl1m(cl1) * (1-O3ACL1(cl1)));
o3bigMcl24(cl1,s)..              o3cleq12dM(cl1,s) =g= - M * (1-xl1m(cl1) * (1-O3ACL1(cl1)));
o3bigMcl31(cl2,s)..              o3cleq21dM(cl2,s) =l= o3cleq21d(cl2,s) + M * xl2m(cl2) * (1-o3ACL2(cl2));
o3bigMcl32(cl2,s)..              o3cleq21dM(cl2,s) =g= o3cleq21d(cl2,s) - M * xl2m(cl2) * (1-O3ACL2(cl2));
o3bigMcl33(cl2,s)..              o3cleq21dM(cl2,s) =l= M * (1-xl2m(cl2) * (1-O3ACL2(cl2)));
o3bigMcl34(cl2,s)..              o3cleq21dM(cl2,s) =g= - M * (1-xl2m(cl2) * (1-O3ACL2(cl2)));
o3bigMcl41(cl2,s)..              o3cleq22dM(cl2,s) =l= o3cleq22d(cl2,s) + M * xl2m(cl2) * (1-O3ACL2(cl2));
o3bigMcl42(cl2,s)..              o3cleq22dM(cl2,s) =g= o3cleq22d(cl2,s) - M * xl2m(cl2) * (1-O3ACL2(cl2));
o3bigMcl43(cl2,s)..              o3cleq22dM(cl2,s) =l= M * (1-xl2m(cl2) * (1-O3ACL2(cl2)));
o3bigMcl44(cl2,s)..              o3cleq22dM(cl2,s) =g= - M * (1-xl2m(cl2) * (1-O3ACL2(cl2)));
o3bigMcl51(cl3,s)..              o3cleq31dM(cl3,s) =l= o3cleq31d(cl3,s) + M * xl3m(cl3) * (1-o3ACL3(cl3));
o3bigMcl52(cl3,s)..              o3cleq31dM(cl3,s) =g= o3cleq31d(cl3,s) - M * xl3m(cl3) * (1-O3ACL3(cl3));
o3bigMcl53(cl3,s)..              o3cleq31dM(cl3,s) =l= M * (1-xl3m(cl3) * (1-O3ACL3(cl3)));
o3bigMcl54(cl3,s)..              o3cleq31dM(cl3,s) =g= - M * (1-xl3m(cl3) * (1-O3ACL3(cl3)));
o3bigMcl61(cl3,s)..              o3cleq32dM(cl3,s) =l= o3cleq32d(cl3,s) + M * xl3m(cl3) * (1-O3ACL3(cl3));
o3bigMcl62(cl3,s)..              o3cleq32dM(cl3,s) =g= o3cleq32d(cl3,s) - M * xl3m(cl3) * (1-O3ACL3(cl3));
o3bigMcl63(cl3,s)..              o3cleq32dM(cl3,s) =l= M * (1-xl3m(cl3) * (1-O3ACL3(cl3)));
o3bigMcl64(cl3,s)..              o3cleq32dM(cl3,s) =g= - M * (1-xl3m(cl3) * (1-O3ACL3(cl3)));

o3bigMcl71(cl4,s)..              o3cleq41dM(cl4,s) =e= o3cleq41d(cl4,s);
o3bigMcl81(cl4,s)..              o3cleq42dM(cl4,s) =e= o3cleq42d(cl4,s);
o3bigMcl91(cl5,s)..              o3cleq51dM(cl5,s) =e= o3cleq51d(cl5,s);
o3bigMcl01(cl5,s)..              o3cleq52dM(cl5,s) =e= o3cleq52d(cl5,s);

o3bigMcl112(cl1,s)..              o3cllim11dM(cl1,s) =l= o3cllim11d(cl1,s) + M * (1-xl1m(cl1) * (1-O3ACL1(cl1)));
o3bigMcl122(cl1,s)..              o3cllim11dM(cl1,s) =g= o3cllim11d(cl1,s) - M * (1-xl1m(cl1) * (1-O3ACL1(cl1)));
o3bigMcl132(cl1,s)..              o3cllim11dM(cl1,s) =l= M * xl1m(cl1) * (1-O3ACL1(cl1));
o3bigMcl142(cl1,s)..              o3cllim11dM(cl1,s) =g= - M * xl1m(cl1) * (1-O3ACL1(cl1));
o3bigMcl212(cl1,s)..              o3cllim12dM(cl1,s) =l= o3cllim12d(cl1,s) + M * (1-xl1m(cl1) * (1-O3ACL1(cl1)));
o3bigMcl222(cl1,s)..              o3cllim12dM(cl1,s) =g= o3cllim12d(cl1,s) - M * (1-xl1m(cl1) * (1-O3ACL1(cl1)));
o3bigMcl232(cl1,s)..              o3cllim12dM(cl1,s) =l= M * xl1m(cl1) * (1-O3ACL1(cl1));
o3bigMcl242(cl1,s)..              o3cllim12dM(cl1,s) =g= - M * xl1m(cl1) * (1-O3ACL1(cl1));
o3bigMcl312(cl2,s)..              o3cllim21dM(cl2,s) =l= o3cllim21d(cl2,s) + M * (1-xl2m(cl2) * (1-O3ACL2(cl2)));
o3bigMcl322(cl2,s)..              o3cllim21dM(cl2,s) =g= o3cllim21d(cl2,s) - M * (1-xl2m(cl2) * (1-O3ACL2(cl2)));
o3bigMcl332(cl2,s)..              o3cllim21dM(cl2,s) =l= M * xl2m(cl2) * (1-O3ACL2(cl2));
o3bigMcl342(cl2,s)..              o3cllim21dM(cl2,s) =g= - M * xl2m(cl2) * (1-O3ACL2(cl2));
o3bigMcl412(cl2,s)..              o3cllim22dM(cl2,s) =l= o3cllim22d(cl2,s) + M * (1-xl2m(cl2) * (1-O3ACL2(cl2)));
o3bigMcl422(cl2,s)..              o3cllim22dM(cl2,s) =g= o3cllim22d(cl2,s) - M * (1-xl2m(cl2) * (1-O3ACL2(cl2)));
o3bigMcl432(cl2,s)..              o3cllim22dM(cl2,s) =l= M * xl2m(cl2) * (1-O3ACL2(cl2));
o3bigMcl442(cl2,s)..              o3cllim22dM(cl2,s) =g= - M * xl2m(cl2) * (1-O3ACL2(cl2));
o3bigMcl512(cl3,s)..              o3cllim31dM(cl3,s) =l= o3cllim31d(cl3,s) + M * (1-xl3m(cl3) * (1-O3ACL3(cl3)));
o3bigMcl522(cl3,s)..              o3cllim31dM(cl3,s) =g= o3cllim31d(cl3,s) - M * (1-xl3m(cl3) * (1-O3ACL3(cl3)));
o3bigMcl532(cl3,s)..              o3cllim31dM(cl3,s) =l= M * xl3m(cl3) * (1-O3ACL3(cl3));
o3bigMcl542(cl3,s)..              o3cllim31dM(cl3,s) =g= - M * xl3m(cl3) * (1-O3ACL3(cl3));
o3bigMcl612(cl3,s)..              o3cllim32dM(cl3,s) =l= o3cllim32d(cl3,s) + M * (1-xl3m(cl3) * (1-O3ACL3(cl3)));
o3bigMcl622(cl3,s)..              o3cllim32dM(cl3,s) =g= o3cllim32d(cl3,s) - M * (1-xl3m(cl3) * (1-O3ACL3(cl3)));
o3bigMcl632(cl3,s)..              o3cllim32dM(cl3,s) =l= M * xl3m(cl3) * (1-O3ACL3(cl3));
o3bigMcl642(cl3,s)..              o3cllim32dM(cl3,s) =g= - M * xl3m(cl3) * (1-O3ACL3(cl3));

o3bigMcl732(cl4,s)..              o3cllim41dM(cl4,s) =e= 0;
o3bigMcl832(cl4,s)..              o3cllim42dM(cl4,s) =e= 0;
o3bigMcl932(cl5,s)..              o3cllim51dM(cl5,s) =e= 0;
o3bigMcl032(cl5,s)..              o3cllim52dM(cl5,s) =e= 0;

o3bigMcg11(cg1,s)..              o3cglim11dM(cg1,s) =l= o3cglim11d(cg1,s) + M * (1-xg1m(cg1) * (1-O3ACG1(cg1)));
o3bigMcg12(cg1,s)..              o3cglim11dM(cg1,s) =g= o3cglim11d(cg1,s) - M * (1-xg1m(cg1) * (1-O3ACG1(cg1)));
o3bigMcg13(cg1,s)..              o3cglim11dM(cg1,s) =l= M * xg1m(cg1) * (1-O3ACG1(cg1));
o3bigMcg14(cg1,s)..              o3cglim11dM(cg1,s) =g= - M * xg1m(cg1) * (1-O3ACG1(cg1));
o3bigMcg21(cg1,s)..              o3cglim12dM(cg1,s) =l= o3cglim12d(cg1,s) + M * (1-xg1m(cg1) * (1-O3ACG1(cg1)));
o3bigMcg22(cg1,s)..              o3cglim12dM(cg1,s) =g= o3cglim12d(cg1,s) - M * (1-xg1m(cg1) * (1-O3ACG1(cg1)));
o3bigMcg23(cg1,s)..              o3cglim12dM(cg1,s) =l= M * xg1m(cg1) * (1-O3ACG1(cg1));
o3bigMcg24(cg1,s)..              o3cglim12dM(cg1,s) =g= - M * xg1m(cg1) * (1-O3ACG1(cg1));
o3bigMcg31(cg2,s)..              o3cglim21dM(cg2,s) =l= o3cglim21d(cg2,s) + M * (1-xg2m(cg2) * (1-O3ACG2(cg2)));
o3bigMcg32(cg2,s)..              o3cglim21dM(cg2,s) =g= o3cglim21d(cg2,s) - M * (1-xg2m(cg2) * (1-O3ACG2(cg2)));
o3bigMcg33(cg2,s)..              o3cglim21dM(cg2,s) =l= M * xg2m(cg2) * (1-O3ACG2(cg2));
o3bigMcg34(cg2,s)..              o3cglim21dM(cg2,s) =g= - M * xg2m(cg2) * (1-O3ACG2(cg2));
o3bigMcg41(cg2,s)..              o3cglim22dM(cg2,s) =l= o3cglim22d(cg2,s) + M * (1-xg2m(cg2) * (1-O3ACG2(cg2)));
o3bigMcg42(cg2,s)..              o3cglim22dM(cg2,s) =g= o3cglim22d(cg2,s) - M * (1-xg2m(cg2) * (1-O3ACG2(cg2)));
o3bigMcg43(cg2,s)..              o3cglim22dM(cg2,s) =l= M * xg2m(cg2) * (1-O3ACG2(cg2));
o3bigMcg44(cg2,s)..              o3cglim22dM(cg2,s) =g= - M * xg2m(cg2) * (1-O3ACG2(cg2));
o3bigMcg51(cg3,s)..              o3cglim31dM(cg3,s) =l= o3cglim31d(cg3,s) + M * (1-xg3m(cg3) * (1-O3ACG3(cg3)));
o3bigMcg52(cg3,s)..              o3cglim31dM(cg3,s) =g= o3cglim31d(cg3,s) - M * (1-xg3m(cg3) * (1-O3ACG3(cg3)));
o3bigMcg53(cg3,s)..              o3cglim31dM(cg3,s) =l= M * xg3m(cg3) * (1-O3ACG3(cg3));
o3bigMcg54(cg3,s)..              o3cglim31dM(cg3,s) =g= - M * xg3m(cg3) * (1-O3ACG3(cg3));
o3bigMcg61(cg3,s)..              o3cglim32dM(cg3,s) =l= o3cglim32d(cg3,s) + M * (1-xg3m(cg3) * (1-O3ACG3(cg3)));
o3bigMcg62(cg3,s)..              o3cglim32dM(cg3,s) =g= o3cglim32d(cg3,s) - M * (1-xg3m(cg3) * (1-O3ACG3(cg3)));
o3bigMcg63(cg3,s)..              o3cglim32dM(cg3,s) =l= M * xg3m(cg3) * (1-O3ACG3(cg3));
o3bigMcg64(cg3,s)..              o3cglim32dM(cg3,s) =g= - M * xg3m(cg3) * (1-O3ACG3(cg3));

o3bigMcg73(cg4,s)..              o3cglim41dM(cg4,s) =e= 0;
o3bigMcg83(cg4,s)..              o3cglim42dM(cg4,s) =e= 0;
o3bigMcg93(cg5,s)..              o3cglim51dM(cg5,s) =e= 0;
o3bigMcg03(cg5,s)..              o3cglim52dM(cg5,s) =e= 0;

Model o3dualsp /
         o3subobj,
         uncer31, uncer32,
         o3peg, o3fel, o3pcg1, o3pcg2, o3pcg3, o3pcg4, o3pcg5, o3fcl1, o3fcl2, o3fcl3, o3fcl4, o3fcl5, o3thetan, o3rdual,

         o3bigMcl11, o3bigMcl12, o3bigMcl13, o3bigMcl14, o3bigMcl21, o3bigMcl22, o3bigMcl23, o3bigMcl24, o3bigMcl31, o3bigMcl32, o3bigMcl33, o3bigMcl34, o3bigMcl41, o3bigMcl42, o3bigMcl43, o3bigMcl44, o3bigMcl51, o3bigMcl52, o3bigMcl53, o3bigMcl54,
         o3bigMcl61, o3bigMcl62, o3bigMcl63, o3bigMcl64, o3bigMcl71, o3bigMcl81, o3bigMcl91, o3bigMcl01,
         o3bigMcl112, o3bigMcl122, o3bigMcl132, o3bigMcl142, o3bigMcl212, o3bigMcl222, o3bigMcl232, o3bigMcl242, o3bigMcl312, o3bigMcl322, o3bigMcl332, o3bigMcl342, o3bigMcl412, o3bigMcl422, o3bigMcl432, o3bigMcl442, o3bigMcl512, o3bigMcl522, o3bigMcl532, o3bigMcl542,
         o3bigMcl612, o3bigMcl622, o3bigMcl632, o3bigMcl642, o3bigMcl732, o3bigMcl832, o3bigMcl932, o3bigMcl032,
         o3bigMcg11, o3bigMcg12, o3bigMcg13, o3bigMcg14, o3bigMcg21, o3bigMcg22, o3bigMcg23, o3bigMcg24, o3bigMcg31, o3bigMcg32, o3bigMcg33, o3bigMcg34, o3bigMcg41, o3bigMcg42, o3bigMcg43, o3bigMcg44, o3bigMcg51, o3bigMcg52, o3bigMcg53, o3bigMcg54,
         o3bigMcg61, o3bigMcg62, o3bigMcg63, o3bigMcg64, o3bigMcg73, o3bigMcg83, o3bigMcg93, o3bigMcg03,
         bigMel11, bigMel12, bigMel13, bigMel14, bigMel21, bigMel22, bigMel23, bigMel24, bigMel31, bigMel32, bigMel33, bigMel34, bigMel41, bigMel42, bigMel43, bigMel44,
         bigMeg11, bigMeg12, bigMeg13, bigMeg14, bigMeg21, bigMeg22, bigMeg23, bigMeg24/;

********************************************************************************
************************* SUB O4 ****************************************
********************************************************************************

Positive Variables
                 o4cleq11d(cl1,s), o4cleq12d(cl1,s), o4cleq21d(cl2,s), o4cleq22d(cl2,s), o4cleq31d(cl3,s),
                 o4cleq32d(cl3,s), o4cleq41d(cl4,s), o4cleq42d(cl4,s), o4cleq51d(cl5,s), o4cleq52d(cl5,s),
                 o4cllim11d(cl1,s), o4cllim12d(cl1,s), o4cllim21d(cl2,s), o4cllim22d(cl2,s),
                 o4cllim31d(cl3,s), o4cllim32d(cl3,s), o4cllim41d(cl4,s), o4cllim42d(cl4,s), o4cllim51d(cl5,s), o4cllim52d(cl5,s),
                 o4cglim11d(cg1,s), o4cglim12d(cg1,s), o4cglim21d(cg2,s), o4cglim22d(cg2,s), o4cglim31d(cg3,s), o4cglim32d(cg3,s),
                 o4cglim41d(cg4,s), o4cglim42d(cg4,s), o4cglim51d(cg5,s), o4cglim52d(cg5,s), o4zeta(n,s),

                 o4cleq12dM(cl1,s), o4cleq22dM(cl2,s), o4cleq32dM(cl3,s), o4cleq42dM(cl4,s), o4cleq52dM(cl5,s),
                 o4cleq11dM(cl1,s), o4cleq21dM(cl2,s), o4cleq31dM(cl3,s), o4cleq41dM(cl4,s), o4cleq51dM(cl5,s),
                 o4cllim11dM(cl1,s), o4cllim21dM(cl2,s), o4cllim31dM(cl3,s), o4cllim41dM(cl4,s), o4cllim51dM(cl5,s),
                 o4cllim12dM(cl1,s), o4cllim22dM(cl2,s), o4cllim32dM(cl3,s), o4cllim42dM(cl4,s), o4cllim52dM(cl5,s),
                 o4cglim11dM(cg1,s), o4cglim21dM(cg2,s), o4cglim31dM(cg3,s), o4cglim41dM(cg4,s), o4cglim51dM(cg5,s),
                 o4cglim12dM(cg1,s), o4cglim22dM(cg2,s), o4cglim32dM(cg3,s), o4cglim42dM(cg4,s), o4cglim52dM(cg5,s);

Free Variable
                 o4pi(n,s), o4subdual, o4cllim23d(cl2,s), o4cllim33d(cl3,s), o4cllim43d(cl4,s), o4cllim53d(cl5,s);

Binary Variables
                 o4ACG1(cg1),  o4ACG2(cg2),  o4ACG3(cg3),  o4ACG4(cg4),  o4ACG5(cg5),
                 o4ACL1(cl1),  o4ACL2(cl2),  o4ACL3(cl3),  o4ACL4(cl4),  o4ACL5(cl5) ;

Equations
         o4subobj,
         uncer41, uncer42,
         o4peg, o4fel, o4pcg1, o4pcg2, o4pcg3, o4pcg4, o4pcg5, o4fcl1, o4fcl2, o4fcl3, o4fcl4, o4fcl5, o4thetan, o4rdual,

         o4bigMcl11, o4bigMcl12, o4bigMcl13, o4bigMcl14, o4bigMcl21, o4bigMcl22, o4bigMcl23, o4bigMcl24, o4bigMcl31, o4bigMcl32, o4bigMcl33, o4bigMcl34, o4bigMcl41, o4bigMcl42, o4bigMcl43, o4bigMcl44, o4bigMcl51, o4bigMcl52, o4bigMcl53, o4bigMcl54,
         o4bigMcl61, o4bigMcl62, o4bigMcl63, o4bigMcl64, o4bigMcl71, o4bigMcl72, o4bigMcl73, o4bigMcl74, o4bigMcl81, o4bigMcl82, o4bigMcl83, o4bigMcl84, o4bigMcl91, o4bigMcl01,
         o4bigMcl112, o4bigMcl122, o4bigMcl132, o4bigMcl142, o4bigMcl212, o4bigMcl222, o4bigMcl232, o4bigMcl242, o4bigMcl312, o4bigMcl322, o4bigMcl332, o4bigMcl342, o4bigMcl412, o4bigMcl422, o4bigMcl432, o4bigMcl442, o4bigMcl512, o4bigMcl522, o4bigMcl532, o4bigMcl542,
         o4bigMcl612, o4bigMcl622, o4bigMcl632, o4bigMcl642, o4bigMcl712, o4bigMcl722, o4bigMcl732, o4bigMcl742, o4bigMcl812, o4bigMcl822, o4bigMcl832, o4bigMcl842, o4bigMcl932, o4bigMcl032,
         o4bigMcg11, o4bigMcg12, o4bigMcg13, o4bigMcg14, o4bigMcg21, o4bigMcg22, o4bigMcg23, o4bigMcg24, o4bigMcg31, o4bigMcg32, o4bigMcg33, o4bigMcg34, o4bigMcg41, o4bigMcg42, o4bigMcg43, o4bigMcg44, o4bigMcg51, o4bigMcg52, o4bigMcg53, o4bigMcg54,
         o4bigMcg61, o4bigMcg62, o4bigMcg63, o4bigMcg64, o4bigMcg71, o4bigMcg72, o4bigMcg73, o4bigMcg74, o4bigMcg81, o4bigMcg82, o4bigMcg83, o4bigMcg84, o4bigMcg93, o4bigMcg03;

o4subobj..               o4subdual =e= -sum(s, prob(s) * (sum(n, sum(d$mapD(d,n), DDATA(d,s) * 1.2 * 1.2 * 1.2 * o4pi(n,s))) -
                         sum(el, M * eleq1dM(el,s)) -
                         sum(el, M * eleq2dM(el,s)) -
                         sum(el, ELDATA(el, '4') * ellim1dM(el,s)) -
                         sum(el, ELDATA(el, '4') * ellim2dM(el,s)) -
                         sum(cl1, M * o4cleq11dM(cl1,s)) - sum(cl1, M * o4cleq12dM(cl1,s)) -
                         sum(cl2, M * o4cleq21dM(cl2,s)) - sum(cl2, M * o4cleq22dM(cl2,s)) -
                         sum(cl3, M * o4cleq31dM(cl3,s)) - sum(cl3, M * o4cleq32dM(cl3,s)) -
                         sum(cl4, M * o4cleq41dM(cl4,s)) - sum(cl4, M * o4cleq42dM(cl4,s)) -
                         sum(cl5, M * o4cleq51dM(cl5,s)) - sum(cl5, M * o4cleq52dM(cl5,s)) -
                         sum(cl1, CLDATA1(cl1, '4') * o4cllim11dM(cl1,s)) - sum(cl1, CLDATA1(cl1, '4') * o4cllim12dM(cl1,s)) -
                         sum(cl2, CLDATA2(cl2, '4') * o4cllim21dM(cl2,s)) - sum(cl2, CLDATA2(cl2, '4') * o4cllim22dM(cl2,s)) -
                         sum(cl3, CLDATA3(cl3, '4') * o4cllim31dM(cl3,s)) - sum(cl3, CLDATA3(cl3, '4') * o4cllim32dM(cl3,s)) -
                         sum(cl4, CLDATA4(cl4, '4') * o4cllim41dM(cl4,s)) - sum(cl4, CLDATA4(cl4, '4') * o4cllim42dM(cl4,s)) -
                         sum(cl5, CLDATA5(cl5, '4') * o4cllim51dM(cl5,s)) - sum(cl5, CLDATA5(cl5, '4') * o4cllim52dM(cl5,s)) -
                         sum(eg, eglim1dM(eg,s) * EGDATA(eg, 'Pmax')) + sum(eg, eglim2dM(eg,s) * EGDATA(eg, 'Pmin')) -
                         sum(cg1, CGDATA1(cg1, 'Pmax') * o4cglim11dM(cg1,s)) + sum(cg1, CGDATA1(cg1, 'Pmin') * o4cglim12dM(cg1,s)) -
                         sum(cg2, CGDATA2(cg2, 'Pmax') * o4cglim21dM(cg2,s)) + sum(cg2, CGDATA2(cg2, 'Pmin') * o4cglim22dM(cg2,s)) -
                         sum(cg3, CGDATA3(cg3, 'Pmax') * o4cglim31dM(cg3,s)) + sum(cg3, CGDATA3(cg3, 'Pmin') * o4cglim32dM(cg3,s)) -
                         sum(cg4, CGDATA4(cg4, 'Pmax') * o4cglim41dM(cg4,s)) + sum(cg4, CGDATA4(cg4, 'Pmin') * o4cglim42dM(cg4,s)) -
                         sum(cg5, CGDATA5(cg5, 'Pmax') * o4cglim51dM(cg5,s)) + sum(cg5, CGDATA5(cg5, 'Pmin') * o4cglim52dM(cg5,s)) -
                         sum(n, sum(d$mapD(d,n), DDATA(d,s)) * 1.2 * 1.2 * 1.2 * o4zeta(n,s))) );

uncer41..                 sum(el, AEL(el)) + sum(cl1, o4ACL1(cl1)) + sum(cl2, o4ACL2(cl2)) + sum(cl3, o4ACL3(cl3)) + sum(cl4, o4ACL4(cl4)) =l= 1;
uncer42..                 sum(eg, AEG(eg)) + sum(cg1, o4ACG1(cg1)) + sum(cg2, o4ACG2(cg2)) + sum(cg3, o4ACG3(cg3)) + sum(cg4, o4ACG4(cg4)) =l= 1;

o4peg(eg,s)..                - eglim1d(eg,s) + eglim2d(eg,s) + sum(n$mapEG(eg,n), o4pi(n,s)) =l= EGDATA(eg, 'OC');

o4fel(el,s)..                eleq1d(el,s) - eleq2d(el,s) + ellim1d(el,s) - ellim2d(el,s) + sum(n$mapERL(el,n), o4pi(n,s)) - sum(n$mapESL(el,n), o4pi(n,s)) =e= 0;

o4pcg1(cg1,s)..              - o4cglim11d(cg1,s) + o4cglim12d(cg1,s) + sum(n$mapCG1(cg1,n), o4pi(n,s)) =l= CGDATA1(cg1, 'OC');
o4pcg2(cg2,s)..              - o4cglim21d(cg2,s) + o4cglim22d(cg2,s) + sum(n$mapCG2(cg2,n), o4pi(n,s)) =l= CGDATA2(cg2, 'OC');
o4pcg3(cg3,s)..              - o4cglim31d(cg3,s) + o4cglim32d(cg3,s) + sum(n$mapCG3(cg3,n), o4pi(n,s)) =l= CGDATA3(cg3, 'OC');
o4pcg4(cg4,s)..              - o4cglim41d(cg4,s) + o4cglim42d(cg4,s) + sum(n$mapCG4(cg4,n), o4pi(n,s)) =l= CGDATA4(cg4, 'OC');
o4pcg5(cg5,s)..              - o4cglim51d(cg5,s) + o4cglim52d(cg5,s) + sum(n$mapCG5(cg5,n), o4pi(n,s)) =l= CGDATA5(cg5, 'OC');

o4fcl1(cl1,s)..                o4cleq11d(cl1,s) - o4cleq12d(cl1,s) + o4cllim11d(cl1,s) - o4cllim12d(cl1,s) + sum(n$mapCRL1(cl1,n), o4pi(n,s)) - sum(n$mapCSL1(cl1,n), o4pi(n,s)) =e= 0;
o4fcl2(cl2,s)..                o4cleq21d(cl2,s) - o4cleq22d(cl2,s) + o4cllim21d(cl2,s) - o4cllim22d(cl2,s) + sum(n$mapCRL2(cl2,n), o4pi(n,s)) - sum(n$mapCSL2(cl2,n), o4pi(n,s)) =e= 0;
o4fcl3(cl3,s)..                o4cleq31d(cl3,s) - o4cleq32d(cl3,s) + o4cllim31d(cl3,s) - o4cllim32d(cl3,s) + sum(n$mapCRL3(cl3,n), o4pi(n,s)) - sum(n$mapCSL3(cl3,n), o4pi(n,s)) =e= 0;
o4fcl4(cl4,s)..                o4cleq41d(cl4,s) - o4cleq42d(cl4,s) + o4cllim41d(cl4,s) - o4cllim42d(cl4,s) + sum(n$mapCRL4(cl4,n), o4pi(n,s)) - sum(n$mapCSL4(cl4,n), o4pi(n,s)) =e= 0;
o4fcl5(cl5,s)..                o4cleq51d(cl5,s) - o4cleq52d(cl5,s) + o4cllim51d(cl5,s) - o4cllim52d(cl5,s) + sum(n$mapCRL5(cl5,n), o4pi(n,s)) - sum(n$mapCSL5(cl5,n), o4pi(n,s)) =e= 0;

o4thetan(n,s)..          sum(el$mapESL(el,n), eleq1d(el,s) / ELDATA(el, '1')) - sum(el$mapERL(el,n), eleq1d(el,s) / ELDATA(el, '1')) -
                         sum(el$mapESL(el,n), eleq2d(el,s) / ELDATA(el, '1')) + sum(el$mapERL(el,n), eleq2d(el,s) / ELDATA(el, '1')) +
                         sum(cl1$mapCSL1(cl1,n), o4cleq11d(cl1,s) / CLDATA1(cl1, '1')) - sum(cl1$mapCRL1(cl1,n), o4cleq11d(cl1,s) / CLDATA1(cl1, '1')) -
                         sum(cl1$mapCSL1(cl1,n), o4cleq12d(cl1,s) / CLDATA1(cl1, '1')) + sum(cl1$mapCRL1(cl1,n), o4cleq12d(cl1,s) / CLDATA1(cl1, '1')) +
                         sum(cl2$mapCSL2(cl2,n), o4cleq21d(cl2,s) / CLDATA2(cl2, '1')) - sum(cl2$mapCRL2(cl2,n), o4cleq21d(cl2,s) / CLDATA2(cl2, '1')) -
                         sum(cl2$mapCSL2(cl2,n), o4cleq22d(cl2,s) / CLDATA2(cl2, '1')) + sum(cl2$mapCRL2(cl2,n), o4cleq22d(cl2,s) / CLDATA2(cl2, '1')) +
                         sum(cl3$mapCSL3(cl3,n), o4cleq31d(cl3,s) / CLDATA3(cl3, '1')) - sum(cl3$mapCRL3(cl3,n), o4cleq31d(cl3,s) / CLDATA3(cl3, '1')) -
                         sum(cl3$mapCSL3(cl3,n), o4cleq32d(cl3,s) / CLDATA3(cl3, '1')) + sum(cl3$mapCRL3(cl3,n), o4cleq32d(cl3,s) / CLDATA3(cl3, '1')) +
                         sum(cl4$mapCSL4(cl4,n), o4cleq41d(cl4,s) / CLDATA4(cl4, '1')) - sum(cl4$mapCRL4(cl4,n), o4cleq41d(cl4,s) / CLDATA4(cl4, '1')) -
                         sum(cl4$mapCSL4(cl4,n), o4cleq42d(cl4,s) / CLDATA4(cl4, '1')) + sum(cl4$mapCRL4(cl4,n), o4cleq42d(cl4,s) / CLDATA4(cl4, '1')) +
                         sum(cl5$mapCSL5(cl5,n), o4cleq51d(cl5,s) / CLDATA5(cl5, '1')) - sum(cl5$mapCRL5(cl5,n), o4cleq51d(cl5,s) / CLDATA5(cl5, '1')) -
                         sum(cl5$mapCSL5(cl5,n), o4cleq52d(cl5,s) / CLDATA5(cl5, '1')) + sum(cl5$mapCRL5(cl5,n), o4cleq52d(cl5,s) / CLDATA5(cl5, '1')) =e= 0;

o4rdual(d,s)..             sum(n$mapD(d,n), o4pi(n,s)) - sum(n$mapD(d,n), o4zeta(n,s)) =l= PC;

o4bigMcl11(cl1,s)..              o4cleq11dM(cl1,s) =l= o4cleq11d(cl1,s) + M * xl1m(cl1) * (1-o4ACL1(cl1));
o4bigMcl12(cl1,s)..              o4cleq11dM(cl1,s) =g= o4cleq11d(cl1,s) - M * xl1m(cl1) * (1-O4ACL1(cl1));
o4bigMcl13(cl1,s)..              o4cleq11dM(cl1,s) =l= M * (1-xl1m(cl1) * (1-O4ACL1(cl1)));
o4bigMcl14(cl1,s)..              o4cleq11dM(cl1,s) =g= - M * (1-xl1m(cl1) * (1-O4ACL1(cl1)));
o4bigMcl21(cl1,s)..              o4cleq12dM(cl1,s) =l= o4cleq12d(cl1,s) + M * xl1m(cl1) * (1-O4ACL1(cl1));
o4bigMcl22(cl1,s)..              o4cleq12dM(cl1,s) =g= o4cleq12d(cl1,s) - M * xl1m(cl1) * (1-O4ACL1(cl1));
o4bigMcl23(cl1,s)..              o4cleq12dM(cl1,s) =l= M * (1-xl1m(cl1) * (1-O4ACL1(cl1)));
o4bigMcl24(cl1,s)..              o4cleq12dM(cl1,s) =g= - M * (1-xl1m(cl1) * (1-O4ACL1(cl1)));
o4bigMcl31(cl2,s)..              o4cleq21dM(cl2,s) =l= o4cleq21d(cl2,s) + M * xl2m(cl2) * (1-o4ACL2(cl2));
o4bigMcl32(cl2,s)..              o4cleq21dM(cl2,s) =g= o4cleq21d(cl2,s) - M * xl2m(cl2) * (1-O4ACL2(cl2));
o4bigMcl33(cl2,s)..              o4cleq21dM(cl2,s) =l= M * (1-xl2m(cl2) * (1-O4ACL2(cl2)));
o4bigMcl34(cl2,s)..              o4cleq21dM(cl2,s) =g= - M * (1-xl2m(cl2) * (1-O4ACL2(cl2)));
o4bigMcl41(cl2,s)..              o4cleq22dM(cl2,s) =l= o4cleq22d(cl2,s) + M * xl2m(cl2) * (1-O4ACL2(cl2));
o4bigMcl42(cl2,s)..              o4cleq22dM(cl2,s) =g= o4cleq22d(cl2,s) - M * xl2m(cl2) * (1-O4ACL2(cl2));
o4bigMcl43(cl2,s)..              o4cleq22dM(cl2,s) =l= M * (1-xl2m(cl2) * (1-O4ACL2(cl2)));
o4bigMcl44(cl2,s)..              o4cleq22dM(cl2,s) =g= - M * (1-xl2m(cl2) * (1-O4ACL2(cl2)));
o4bigMcl51(cl3,s)..              o4cleq31dM(cl3,s) =l= o4cleq31d(cl3,s) + M * xl3m(cl3) * (1-o4ACL3(cl3));
o4bigMcl52(cl3,s)..              o4cleq31dM(cl3,s) =g= o4cleq31d(cl3,s) - M * xl3m(cl3) * (1-O4ACL3(cl3));
o4bigMcl53(cl3,s)..              o4cleq31dM(cl3,s) =l= M * (1-xl3m(cl3) * (1-O4ACL3(cl3)));
o4bigMcl54(cl3,s)..              o4cleq31dM(cl3,s) =g= - M * (1-xl3m(cl3) * (1-O4ACL3(cl3)));
o4bigMcl61(cl3,s)..              o4cleq32dM(cl3,s) =l= o4cleq32d(cl3,s) + M * xl3m(cl3) * (1-O4ACL3(cl3));
o4bigMcl62(cl3,s)..              o4cleq32dM(cl3,s) =g= o4cleq32d(cl3,s) - M * xl3m(cl3) * (1-O4ACL3(cl3));
o4bigMcl63(cl3,s)..              o4cleq32dM(cl3,s) =l= M * (1-xl3m(cl3) * (1-O4ACL3(cl3)));
o4bigMcl64(cl3,s)..              o4cleq32dM(cl3,s) =g= - M * (1-xl3m(cl3) * (1-O4ACL3(cl3)));
o4bigMcl71(cl4,s)..              o4cleq41dM(cl4,s) =l= o4cleq41d(cl4,s) + M * xl4m(cl4) * (1-o4ACL4(cl4));
o4bigMcl72(cl4,s)..              o4cleq41dM(cl4,s) =g= o4cleq41d(cl4,s) - M * xl4m(cl4) * (1-O4ACL4(cl4));
o4bigMcl73(cl4,s)..              o4cleq41dM(cl4,s) =l= M * (1-xl4m(cl4) * (1-O4ACL4(cl4)));
o4bigMcl74(cl4,s)..              o4cleq41dM(cl4,s) =g= - M * (1-xl4m(cl4) * (1-O4ACL4(cl4)));
o4bigMcl81(cl4,s)..              o4cleq42dM(cl4,s) =l= o4cleq42d(cl4,s) + M * xl4m(cl4) * (1-O4ACL4(cl4));
o4bigMcl82(cl4,s)..              o4cleq42dM(cl4,s) =g= o4cleq42d(cl4,s) - M * xl4m(cl4) * (1-O4ACL4(cl4));
o4bigMcl83(cl4,s)..              o4cleq42dM(cl4,s) =l= M * (1-xl4m(cl4) * (1-O4ACL4(cl4)));
o4bigMcl84(cl4,s)..              o4cleq42dM(cl4,s) =g= - M * (1-xl4m(cl4) * (1-O4ACL4(cl4)));

o4bigMcl91(cl5,s)..              o4cleq51dM(cl5,s) =e= o4cleq51d(cl5,s);
o4bigMcl01(cl5,s)..              o4cleq52dM(cl5,s) =e= o4cleq52d(cl5,s);

o4bigMcl112(cl1,s)..              o4cllim11dM(cl1,s) =l= o4cllim11d(cl1,s) + M * (1-xl1m(cl1) * (1-O4ACL1(cl1)));
o4bigMcl122(cl1,s)..              o4cllim11dM(cl1,s) =g= o4cllim11d(cl1,s) - M * (1-xl1m(cl1) * (1-O4ACL1(cl1)));
o4bigMcl132(cl1,s)..              o4cllim11dM(cl1,s) =l= M * xl1m(cl1) * (1-O4ACL1(cl1));
o4bigMcl142(cl1,s)..              o4cllim11dM(cl1,s) =g= - M * xl1m(cl1) * (1-O4ACL1(cl1));
o4bigMcl212(cl1,s)..              o4cllim12dM(cl1,s) =l= o4cllim12d(cl1,s) + M * (1-xl1m(cl1) * (1-O4ACL1(cl1)));
o4bigMcl222(cl1,s)..              o4cllim12dM(cl1,s) =g= o4cllim12d(cl1,s) - M * (1-xl1m(cl1) * (1-O4ACL1(cl1)));
o4bigMcl232(cl1,s)..              o4cllim12dM(cl1,s) =l= M * xl1m(cl1) * (1-O4ACL1(cl1));
o4bigMcl242(cl1,s)..              o4cllim12dM(cl1,s) =g= - M * xl1m(cl1) * (1-O4ACL1(cl1));
o4bigMcl312(cl2,s)..              o4cllim21dM(cl2,s) =l= o4cllim21d(cl2,s) + M * (1-xl2m(cl2) * (1-O4ACL2(cl2)));
o4bigMcl322(cl2,s)..              o4cllim21dM(cl2,s) =g= o4cllim21d(cl2,s) - M * (1-xl2m(cl2) * (1-O4ACL2(cl2)));
o4bigMcl332(cl2,s)..              o4cllim21dM(cl2,s) =l= M * xl2m(cl2) * (1-O4ACL2(cl2));
o4bigMcl342(cl2,s)..              o4cllim21dM(cl2,s) =g= - M * xl2m(cl2) * (1-O4ACL2(cl2));
o4bigMcl412(cl2,s)..              o4cllim22dM(cl2,s) =l= o4cllim22d(cl2,s) + M * (1-xl2m(cl2) * (1-O4ACL2(cl2)));
o4bigMcl422(cl2,s)..              o4cllim22dM(cl2,s) =g= o4cllim22d(cl2,s) - M * (1-xl2m(cl2) * (1-O4ACL2(cl2)));
o4bigMcl432(cl2,s)..              o4cllim22dM(cl2,s) =l= M * xl2m(cl2) * (1-O4ACL2(cl2));
o4bigMcl442(cl2,s)..              o4cllim22dM(cl2,s) =g= - M * xl2m(cl2) * (1-O4ACL2(cl2));
o4bigMcl512(cl3,s)..              o4cllim31dM(cl3,s) =l= o4cllim31d(cl3,s) + M * (1-xl3m(cl3) * (1-O4ACL3(cl3)));
o4bigMcl522(cl3,s)..              o4cllim31dM(cl3,s) =g= o4cllim31d(cl3,s) - M * (1-xl3m(cl3) * (1-O4ACL3(cl3)));
o4bigMcl532(cl3,s)..              o4cllim31dM(cl3,s) =l= M * xl3m(cl3) * (1-O4ACL3(cl3));
o4bigMcl542(cl3,s)..              o4cllim31dM(cl3,s) =g= - M * xl3m(cl3) * (1-O4ACL3(cl3));
o4bigMcl612(cl3,s)..              o4cllim32dM(cl3,s) =l= o4cllim32d(cl3,s) + M * (1-xl3m(cl3) * (1-O4ACL3(cl3)));
o4bigMcl622(cl3,s)..              o4cllim32dM(cl3,s) =g= o4cllim32d(cl3,s) - M * (1-xl3m(cl3) * (1-O4ACL3(cl3)));
o4bigMcl632(cl3,s)..              o4cllim32dM(cl3,s) =l= M * xl3m(cl3) * (1-O4ACL3(cl3));
o4bigMcl642(cl3,s)..              o4cllim32dM(cl3,s) =g= - M * xl3m(cl3) * (1-O4ACL3(cl3));
o4bigMcl712(cl4,s)..              o4cllim41dM(cl4,s) =l= o4cllim41d(cl4,s) + M * (1-xl4m(cl4) * (1-O4ACL4(cl4)));
o4bigMcl722(cl4,s)..              o4cllim41dM(cl4,s) =g= o4cllim41d(cl4,s) - M * (1-xl4m(cl4) * (1-O4ACL4(cl4)));
o4bigMcl732(cl4,s)..              o4cllim41dM(cl4,s) =l= M * xl4m(cl4) * (1-O4ACL4(cl4));
o4bigMcl742(cl4,s)..              o4cllim41dM(cl4,s) =g= - M * xl4m(cl4) * (1-O4ACL4(cl4));
o4bigMcl812(cl4,s)..              o4cllim42dM(cl4,s) =l= o4cllim42d(cl4,s) + M * (1-xl4m(cl4) * (1-O4ACL4(cl4)));
o4bigMcl822(cl4,s)..              o4cllim42dM(cl4,s) =g= o4cllim42d(cl4,s) - M * (1-xl4m(cl4) * (1-O4ACL4(cl4)));
o4bigMcl832(cl4,s)..              o4cllim42dM(cl4,s) =l= M * xl4m(cl4) * (1-O4ACL4(cl4));
o4bigMcl842(cl4,s)..              o4cllim42dM(cl4,s) =g= - M * xl4m(cl4) * (1-O4ACL4(cl4));

o4bigMcl932(cl5,s)..              o4cllim51dM(cl5,s) =e= 0;
o4bigMcl032(cl5,s)..              o4cllim52dM(cl5,s) =e= 0;

o4bigMcg11(cg1,s)..              o4cglim11dM(cg1,s) =l= o4cglim11d(cg1,s) + M * (1-xg1m(cg1) * (1-O4ACG1(cg1)));
o4bigMcg12(cg1,s)..              o4cglim11dM(cg1,s) =g= o4cglim11d(cg1,s) - M * (1-xg1m(cg1) * (1-O4ACG1(cg1)));
o4bigMcg13(cg1,s)..              o4cglim11dM(cg1,s) =l= M * xg1m(cg1) * (1-O4ACG1(cg1));
o4bigMcg14(cg1,s)..              o4cglim11dM(cg1,s) =g= - M * xg1m(cg1) * (1-O4ACG1(cg1));
o4bigMcg21(cg1,s)..              o4cglim12dM(cg1,s) =l= o4cglim12d(cg1,s) + M * (1-xg1m(cg1) * (1-O4ACG1(cg1)));
o4bigMcg22(cg1,s)..              o4cglim12dM(cg1,s) =g= o4cglim12d(cg1,s) - M * (1-xg1m(cg1) * (1-O4ACG1(cg1)));
o4bigMcg23(cg1,s)..              o4cglim12dM(cg1,s) =l= M * xg1m(cg1) * (1-O4ACG1(cg1));
o4bigMcg24(cg1,s)..              o4cglim12dM(cg1,s) =g= - M * xg1m(cg1) * (1-O4ACG1(cg1));
o4bigMcg31(cg2,s)..              o4cglim21dM(cg2,s) =l= o4cglim21d(cg2,s) + M * (1-xg2m(cg2) * (1-O4ACG2(cg2)));
o4bigMcg32(cg2,s)..              o4cglim21dM(cg2,s) =g= o4cglim21d(cg2,s) - M * (1-xg2m(cg2) * (1-O4ACG2(cg2)));
o4bigMcg33(cg2,s)..              o4cglim21dM(cg2,s) =l= M * xg2m(cg2) * (1-O4ACG2(cg2));
o4bigMcg34(cg2,s)..              o4cglim21dM(cg2,s) =g= - M * xg2m(cg2) * (1-O4ACG2(cg2));
o4bigMcg41(cg2,s)..              o4cglim22dM(cg2,s) =l= o4cglim22d(cg2,s) + M * (1-xg2m(cg2) * (1-O4ACG2(cg2)));
o4bigMcg42(cg2,s)..              o4cglim22dM(cg2,s) =g= o4cglim22d(cg2,s) - M * (1-xg2m(cg2) * (1-O4ACG2(cg2)));
o4bigMcg43(cg2,s)..              o4cglim22dM(cg2,s) =l= M * xg2m(cg2) * (1-O4ACG2(cg2));
o4bigMcg44(cg2,s)..              o4cglim22dM(cg2,s) =g= - M * xg2m(cg2) * (1-O4ACG2(cg2));
o4bigMcg51(cg3,s)..              o4cglim31dM(cg3,s) =l= o4cglim31d(cg3,s) + M * (1-xg3m(cg3) * (1-O4ACG3(cg3)));
o4bigMcg52(cg3,s)..              o4cglim31dM(cg3,s) =g= o4cglim31d(cg3,s) - M * (1-xg3m(cg3) * (1-O4ACG3(cg3)));
o4bigMcg53(cg3,s)..              o4cglim31dM(cg3,s) =l= M * xg3m(cg3) * (1-O4ACG3(cg3));
o4bigMcg54(cg3,s)..              o4cglim31dM(cg3,s) =g= - M * xg3m(cg3) * (1-O4ACG3(cg3));
o4bigMcg61(cg3,s)..              o4cglim32dM(cg3,s) =l= o4cglim32d(cg3,s) + M * (1-xg3m(cg3) * (1-O4ACG3(cg3)));
o4bigMcg62(cg3,s)..              o4cglim32dM(cg3,s) =g= o4cglim32d(cg3,s) - M * (1-xg3m(cg3) * (1-O4ACG3(cg3)));
o4bigMcg63(cg3,s)..              o4cglim32dM(cg3,s) =l= M * xg3m(cg3) * (1-O4ACG3(cg3));
o4bigMcg64(cg3,s)..              o4cglim32dM(cg3,s) =g= - M * xg3m(cg3) * (1-O4ACG3(cg3));
o4bigMcg71(cg4,s)..              o4cglim41dM(cg4,s) =l= o4cglim41d(cg4,s) + M * (1-xg4m(cg4) * (1-O4ACG4(cg4)));
o4bigMcg72(cg4,s)..              o4cglim41dM(cg4,s) =g= o4cglim41d(cg4,s) - M * (1-xg4m(cg4) * (1-O4ACG4(cg4)));
o4bigMcg73(cg4,s)..              o4cglim41dM(cg4,s) =l= M * xg4m(cg4) * (1-O4ACG4(cg4));
o4bigMcg74(cg4,s)..              o4cglim41dM(cg4,s) =g= - M * xg4m(cg4) * (1-O4ACG4(cg4));
o4bigMcg81(cg4,s)..              o4cglim42dM(cg4,s) =l= o4cglim42d(cg4,s) + M * (1-xg4m(cg4) * (1-O4ACG4(cg4)));
o4bigMcg82(cg4,s)..              o4cglim42dM(cg4,s) =g= o4cglim42d(cg4,s) - M * (1-xg4m(cg4) * (1-O4ACG4(cg4)));
o4bigMcg83(cg4,s)..              o4cglim42dM(cg4,s) =l= M * xg4m(cg4) * (1-O4ACG4(cg4));
o4bigMcg84(cg4,s)..              o4cglim42dM(cg4,s) =g= - M * xg4m(cg4) * (1-O4ACG4(cg4));

o4bigMcg93(cg5,s)..              o4cglim51dM(cg5,s) =e= 0;
o4bigMcg03(cg5,s)..              o4cglim52dM(cg5,s) =e= 0;

Model o4dualsp /
         o4subobj,
         uncer41, uncer42,
         o4peg, o4fel, o4pcg1, o4pcg2, o4pcg3, o4pcg4, o4pcg5, o4fcl1, o4fcl2, o4fcl3, o4fcl4, o4fcl5, o4thetan, o4rdual,

         o4bigMcl11, o4bigMcl12, o4bigMcl13, o4bigMcl14, o4bigMcl21, o4bigMcl22, o4bigMcl23, o4bigMcl24, o4bigMcl31, o4bigMcl32, o4bigMcl33, o4bigMcl34, o4bigMcl41, o4bigMcl42, o4bigMcl43, o4bigMcl44, o4bigMcl51, o4bigMcl52, o4bigMcl53, o4bigMcl54,
         o4bigMcl61, o4bigMcl62, o4bigMcl63, o4bigMcl64, o4bigMcl71, o4bigMcl72, o4bigMcl73, o4bigMcl74, o4bigMcl81, o4bigMcl82, o4bigMcl83, o4bigMcl84, o4bigMcl91, o4bigMcl01,
         o4bigMcl112, o4bigMcl122, o4bigMcl132, o4bigMcl142, o4bigMcl212, o4bigMcl222, o4bigMcl232, o4bigMcl242, o4bigMcl312, o4bigMcl322, o4bigMcl332, o4bigMcl342, o4bigMcl412, o4bigMcl422, o4bigMcl432, o4bigMcl442, o4bigMcl512, o4bigMcl522, o4bigMcl532, o4bigMcl542,
         o4bigMcl612, o4bigMcl622, o4bigMcl632, o4bigMcl642, o4bigMcl712, o4bigMcl722, o4bigMcl732, o4bigMcl742, o4bigMcl812, o4bigMcl822, o4bigMcl832, o4bigMcl842, o4bigMcl932, o4bigMcl032,
         o4bigMcg11, o4bigMcg12, o4bigMcg13, o4bigMcg14, o4bigMcg21, o4bigMcg22, o4bigMcg23, o4bigMcg24, o4bigMcg31, o4bigMcg32, o4bigMcg33, o4bigMcg34, o4bigMcg41, o4bigMcg42, o4bigMcg43, o4bigMcg44, o4bigMcg51, o4bigMcg52, o4bigMcg53, o4bigMcg54,
         o4bigMcg61, o4bigMcg62, o4bigMcg63, o4bigMcg64, o4bigMcg71, o4bigMcg72, o4bigMcg73, o4bigMcg74, o4bigMcg81, o4bigMcg82, o4bigMcg83, o4bigMcg84, o4bigMcg93, o4bigMcg03,
         bigMel11, bigMel12, bigMel13, bigMel14, bigMel21, bigMel22, bigMel23, bigMel24, bigMel31, bigMel32, bigMel33, bigMel34, bigMel41, bigMel42, bigMel43, bigMel44,
         bigMeg11, bigMeg12, bigMeg13, bigMeg14, bigMeg21, bigMeg22, bigMeg23, bigMeg24/;

********************************************************************************
************************* SUB O5 ****************************************
********************************************************************************

Positive Variables
                 o5cleq11d(cl1,s), o5cleq12d(cl1,s), o5cleq21d(cl2,s), o5cleq22d(cl2,s), o5cleq31d(cl3,s),
                 o5cleq32d(cl3,s), o5cleq41d(cl4,s), o5cleq42d(cl4,s), o5cleq51d(cl5,s), o5cleq52d(cl5,s),
                 o5cllim11d(cl1,s), o5cllim12d(cl1,s), o5cllim21d(cl2,s), o5cllim22d(cl2,s),
                 o5cllim31d(cl3,s), o5cllim32d(cl3,s), o5cllim41d(cl4,s), o5cllim42d(cl4,s), o5cllim51d(cl5,s), o5cllim52d(cl5,s),
                 o5cglim11d(cg1,s), o5cglim12d(cg1,s), o5cglim21d(cg2,s), o5cglim22d(cg2,s), o5cglim31d(cg3,s), o5cglim32d(cg3,s),
                 o5cglim41d(cg4,s), o5cglim42d(cg4,s), o5cglim51d(cg5,s), o5cglim52d(cg5,s), o5zeta(n,s),

                 o5cleq12dM(cl1,s), o5cleq22dM(cl2,s), o5cleq32dM(cl3,s), o5cleq42dM(cl4,s), o5cleq52dM(cl5,s),
                 o5cleq11dM(cl1,s), o5cleq21dM(cl2,s), o5cleq31dM(cl3,s), o5cleq41dM(cl4,s), o5cleq51dM(cl5,s),
                 o5cllim11dM(cl1,s), o5cllim21dM(cl2,s), o5cllim31dM(cl3,s), o5cllim41dM(cl4,s), o5cllim51dM(cl5,s),
                 o5cllim12dM(cl1,s), o5cllim22dM(cl2,s), o5cllim32dM(cl3,s), o5cllim42dM(cl4,s), o5cllim52dM(cl5,s),
                 o5cglim11dM(cg1,s), o5cglim21dM(cg2,s), o5cglim31dM(cg3,s), o5cglim41dM(cg4,s), o5cglim51dM(cg5,s),
                 o5cglim12dM(cg1,s), o5cglim22dM(cg2,s), o5cglim32dM(cg3,s), o5cglim42dM(cg4,s), o5cglim52dM(cg5,s);

Free Variable
                 o5pi(n,s), o5subdual, o5cllim23d(cl2,s), o5cllim33d(cl3,s), o5cllim43d(cl4,s), o5cllim53d(cl5,s);

Binary Variables
                 o5ACG1(cg1),  o5ACG2(cg2),  o5ACG3(cg3),  o5ACG4(cg4),  o5ACG5(cg5),
                 o5ACL1(cl1),  o5ACL2(cl2),  o5ACL3(cl3),  o5ACL4(cl4),  o5ACL5(cl5) ;

Equations
         o5subobj,
         uncer51, uncer52,
         o5peg, o5fel, o5pcg1, o5pcg2, o5pcg3, o5pcg4, o5pcg5, o5fcl1, o5fcl2, o5fcl3, o5fcl4, o5fcl5, o5thetan, o5rdual,

         o5bigMcl11, o5bigMcl12, o5bigMcl13, o5bigMcl14, o5bigMcl21, o5bigMcl22, o5bigMcl23, o5bigMcl24, o5bigMcl31, o5bigMcl32, o5bigMcl33, o5bigMcl34, o5bigMcl41, o5bigMcl42, o5bigMcl43, o5bigMcl44, o5bigMcl51, o5bigMcl52, o5bigMcl53, o5bigMcl54,
         o5bigMcl61, o5bigMcl62, o5bigMcl63, o5bigMcl64, o5bigMcl71, o5bigMcl72, o5bigMcl73, o5bigMcl74, o5bigMcl81, o5bigMcl82, o5bigMcl83, o5bigMcl84, o5bigMcl91, o5bigMcl92, o5bigMcl93, o5bigMcl94, o5bigMcl01, o5bigMcl02, o5bigMcl03, o5bigMcl04,
         o5bigMcl112, o5bigMcl122, o5bigMcl132, o5bigMcl142, o5bigMcl212, o5bigMcl222, o5bigMcl232, o5bigMcl242, o5bigMcl312, o5bigMcl322, o5bigMcl332, o5bigMcl342, o5bigMcl412, o5bigMcl422, o5bigMcl432, o5bigMcl442, o5bigMcl512, o5bigMcl522, o5bigMcl532, o5bigMcl542,
         o5bigMcl612, o5bigMcl622, o5bigMcl632, o5bigMcl642, o5bigMcl712, o5bigMcl722, o5bigMcl732, o5bigMcl742, o5bigMcl812, o5bigMcl822, o5bigMcl832, o5bigMcl842, o5bigMcl912, o5bigMcl922, o5bigMcl932, o5bigMcl942, o5bigMcl012, o5bigMcl022, o5bigMcl032, o5bigMcl042,
         o5bigMcg11, o5bigMcg12, o5bigMcg13, o5bigMcg14, o5bigMcg21, o5bigMcg22, o5bigMcg23, o5bigMcg24, o5bigMcg31, o5bigMcg32, o5bigMcg33, o5bigMcg34, o5bigMcg41, o5bigMcg42, o5bigMcg43, o5bigMcg44, o5bigMcg51, o5bigMcg52, o5bigMcg53, o5bigMcg54,
         o5bigMcg61, o5bigMcg62, o5bigMcg63, o5bigMcg64, o5bigMcg71, o5bigMcg72, o5bigMcg73, o5bigMcg74, o5bigMcg81, o5bigMcg82, o5bigMcg83, o5bigMcg84, o5bigMcg91, o5bigMcg92, o5bigMcg93, o5bigMcg94, o5bigMcg01, o5bigMcg02, o5bigMcg03, o5bigMcg04;

o5subobj..               o5subdual =e= -sum(s, prob(s) * (sum(n, sum(d$mapD(d,n), DDATA(d,s) * 1.2 * 1.2 * 1.2 * 1.2 * o5pi(n,s))) -
                         sum(el, M * eleq1dM(el,s)) -
                         sum(el, M * eleq2dM(el,s)) -
                         sum(el, ELDATA(el, '4') * ellim1dM(el,s)) -
                         sum(el, ELDATA(el, '4') * ellim2dM(el,s)) -
                         sum(cl1, M * o5cleq11dM(cl1,s)) - sum(cl1, M * o5cleq12dM(cl1,s)) -
                         sum(cl2, M * o5cleq21dM(cl2,s)) - sum(cl2, M * o5cleq22dM(cl2,s)) -
                         sum(cl3, M * o5cleq31dM(cl3,s)) - sum(cl3, M * o5cleq32dM(cl3,s)) -
                         sum(cl4, M * o5cleq41dM(cl4,s)) - sum(cl4, M * o5cleq42dM(cl4,s)) -
                         sum(cl5, M * o5cleq51dM(cl5,s)) - sum(cl5, M * o5cleq52dM(cl5,s)) -
                         sum(cl1, CLDATA1(cl1, '4') * o5cllim11dM(cl1,s)) - sum(cl1, CLDATA1(cl1, '4') * o5cllim12dM(cl1,s)) -
                         sum(cl2, CLDATA2(cl2, '4') * o5cllim21dM(cl2,s)) - sum(cl2, CLDATA2(cl2, '4') * o5cllim22dM(cl2,s)) -
                         sum(cl3, CLDATA3(cl3, '4') * o5cllim31dM(cl3,s)) - sum(cl3, CLDATA3(cl3, '4') * o5cllim32dM(cl3,s)) -
                         sum(cl4, CLDATA4(cl4, '4') * o5cllim41dM(cl4,s)) - sum(cl4, CLDATA4(cl4, '4') * o5cllim42dM(cl4,s)) -
                         sum(cl5, CLDATA5(cl5, '4') * o5cllim51dM(cl5,s)) - sum(cl5, CLDATA5(cl5, '4') * o5cllim52dM(cl5,s)) -
                         sum(eg, eglim1dM(eg,s) * EGDATA(eg, 'Pmax')) + sum(eg, eglim2dM(eg,s) * EGDATA(eg, 'Pmin')) -
                         sum(cg1, CGDATA1(cg1, 'Pmax') * o5cglim11dM(cg1,s)) + sum(cg1, CGDATA1(cg1, 'Pmin') * o5cglim12dM(cg1,s)) -
                         sum(cg2, CGDATA2(cg2, 'Pmax') * o5cglim21dM(cg2,s)) + sum(cg2, CGDATA2(cg2, 'Pmin') * o5cglim22dM(cg2,s)) -
                         sum(cg3, CGDATA3(cg3, 'Pmax') * o5cglim31dM(cg3,s)) + sum(cg3, CGDATA3(cg3, 'Pmin') * o5cglim32dM(cg3,s)) -
                         sum(cg4, CGDATA4(cg4, 'Pmax') * o5cglim41dM(cg4,s)) + sum(cg4, CGDATA4(cg4, 'Pmin') * o5cglim42dM(cg4,s)) -
                         sum(cg5, CGDATA5(cg5, 'Pmax') * o5cglim51dM(cg5,s)) + sum(cg5, CGDATA5(cg5, 'Pmin') * o5cglim52dM(cg5,s)) -
                         sum(n, sum(d$mapD(d,n), DDATA(d,s)) * 1.2 * 1.2 * 1.2 * 1.2 * o5zeta(n,s))) );

uncer51..                 sum(el, AEL(el)) + sum(cl1, o5ACL1(cl1)) + sum(cl2, o5ACL2(cl2)) + sum(cl3, o5ACL3(cl3)) + sum(cl4, o5ACL4(cl4)) + sum(cl5, o5ACL5(cl5)) =l= 1;
uncer52..                 sum(eg, AEG(eg)) + sum(cg1, o5ACG1(cg1)) + sum(cg2, o5ACG2(cg2)) + sum(cg3, o5ACG3(cg3)) + sum(cg4, o5ACG4(cg4)) + sum(cg5, o5ACG5(cg5)) =l= 1;

o5peg(eg,s)..                - eglim1d(eg,s) + eglim2d(eg,s) + sum(n$mapEG(eg,n), o5pi(n,s)) =l= EGDATA(eg, 'OC');

o5fel(el,s)..                eleq1d(el,s) - eleq2d(el,s) + ellim1d(el,s) - ellim2d(el,s) + sum(n$mapERL(el,n), o5pi(n,s)) - sum(n$mapESL(el,n), o5pi(n,s)) =e= 0;

o5pcg1(cg1,s)..              - o5cglim11d(cg1,s) + o5cglim12d(cg1,s) + sum(n$mapCG1(cg1,n), o5pi(n,s)) =l= CGDATA1(cg1, 'OC');
o5pcg2(cg2,s)..              - o5cglim21d(cg2,s) + o5cglim22d(cg2,s) + sum(n$mapCG2(cg2,n), o5pi(n,s)) =l= CGDATA2(cg2, 'OC');
o5pcg3(cg3,s)..              - o5cglim31d(cg3,s) + o5cglim32d(cg3,s) + sum(n$mapCG3(cg3,n), o5pi(n,s)) =l= CGDATA3(cg3, 'OC');
o5pcg4(cg4,s)..              - o5cglim41d(cg4,s) + o5cglim42d(cg4,s) + sum(n$mapCG4(cg4,n), o5pi(n,s)) =l= CGDATA4(cg4, 'OC');
o5pcg5(cg5,s)..              - o5cglim51d(cg5,s) + o5cglim52d(cg5,s) + sum(n$mapCG5(cg5,n), o5pi(n,s)) =l= CGDATA5(cg5, 'OC');

o5fcl1(cl1,s)..                o5cleq11d(cl1,s) - o5cleq12d(cl1,s) + o5cllim11d(cl1,s) - o5cllim12d(cl1,s) + sum(n$mapCRL1(cl1,n), o5pi(n,s)) - sum(n$mapCSL1(cl1,n), o5pi(n,s)) =e= 0;
o5fcl2(cl2,s)..                o5cleq21d(cl2,s) - o5cleq22d(cl2,s) + o5cllim21d(cl2,s) - o5cllim22d(cl2,s) + sum(n$mapCRL2(cl2,n), o5pi(n,s)) - sum(n$mapCSL2(cl2,n), o5pi(n,s)) =e= 0;
o5fcl3(cl3,s)..                o5cleq31d(cl3,s) - o5cleq32d(cl3,s) + o5cllim31d(cl3,s) - o5cllim32d(cl3,s) + sum(n$mapCRL3(cl3,n), o5pi(n,s)) - sum(n$mapCSL3(cl3,n), o5pi(n,s)) =e= 0;
o5fcl4(cl4,s)..                o5cleq41d(cl4,s) - o5cleq42d(cl4,s) + o5cllim41d(cl4,s) - o5cllim42d(cl4,s) + sum(n$mapCRL4(cl4,n), o5pi(n,s)) - sum(n$mapCSL4(cl4,n), o5pi(n,s)) =e= 0;
o5fcl5(cl5,s)..                o5cleq51d(cl5,s) - o5cleq52d(cl5,s) + o5cllim51d(cl5,s) - o5cllim52d(cl5,s) + sum(n$mapCRL5(cl5,n), o5pi(n,s)) - sum(n$mapCSL5(cl5,n), o5pi(n,s)) =e= 0;

o5thetan(n,s)..          sum(el$mapESL(el,n), eleq1d(el,s) / ELDATA(el, '1')) - sum(el$mapERL(el,n), eleq1d(el,s) / ELDATA(el, '1')) -
                         sum(el$mapESL(el,n), eleq2d(el,s) / ELDATA(el, '1')) + sum(el$mapERL(el,n), eleq2d(el,s) / ELDATA(el, '1')) +
                         sum(cl1$mapCSL1(cl1,n), o5cleq11d(cl1,s) / CLDATA1(cl1, '1')) - sum(cl1$mapCRL1(cl1,n), o5cleq11d(cl1,s) / CLDATA1(cl1, '1')) -
                         sum(cl1$mapCSL1(cl1,n), o5cleq12d(cl1,s) / CLDATA1(cl1, '1')) + sum(cl1$mapCRL1(cl1,n), o5cleq12d(cl1,s) / CLDATA1(cl1, '1')) +
                         sum(cl2$mapCSL2(cl2,n), o5cleq21d(cl2,s) / CLDATA2(cl2, '1')) - sum(cl2$mapCRL2(cl2,n), o5cleq21d(cl2,s) / CLDATA2(cl2, '1')) -
                         sum(cl2$mapCSL2(cl2,n), o5cleq22d(cl2,s) / CLDATA2(cl2, '1')) + sum(cl2$mapCRL2(cl2,n), o5cleq22d(cl2,s) / CLDATA2(cl2, '1')) +
                         sum(cl3$mapCSL3(cl3,n), o5cleq31d(cl3,s) / CLDATA3(cl3, '1')) - sum(cl3$mapCRL3(cl3,n), o5cleq31d(cl3,s) / CLDATA3(cl3, '1')) -
                         sum(cl3$mapCSL3(cl3,n), o5cleq32d(cl3,s) / CLDATA3(cl3, '1')) + sum(cl3$mapCRL3(cl3,n), o5cleq32d(cl3,s) / CLDATA3(cl3, '1')) +
                         sum(cl4$mapCSL4(cl4,n), o5cleq41d(cl4,s) / CLDATA4(cl4, '1')) - sum(cl4$mapCRL4(cl4,n), o5cleq41d(cl4,s) / CLDATA4(cl4, '1')) -
                         sum(cl4$mapCSL4(cl4,n), o5cleq42d(cl4,s) / CLDATA4(cl4, '1')) + sum(cl4$mapCRL4(cl4,n), o5cleq42d(cl4,s) / CLDATA4(cl4, '1')) +
                         sum(cl5$mapCSL5(cl5,n), o5cleq51d(cl5,s) / CLDATA5(cl5, '1')) - sum(cl5$mapCRL5(cl5,n), o5cleq51d(cl5,s) / CLDATA5(cl5, '1')) -
                         sum(cl5$mapCSL5(cl5,n), o5cleq52d(cl5,s) / CLDATA5(cl5, '1')) + sum(cl5$mapCRL5(cl5,n), o5cleq52d(cl5,s) / CLDATA5(cl5, '1')) =e= 0;

o5rdual(d,s)..             sum(n$mapD(d,n), o5pi(n,s)) - sum(n$mapD(d,n), o5zeta(n,s)) =l= PC;

o5bigMcl11(cl1,s)..              o5cleq11dM(cl1,s) =l= o5cleq11d(cl1,s) + M * xl1m(cl1) * (1-o5ACL1(cl1));
o5bigMcl12(cl1,s)..              o5cleq11dM(cl1,s) =g= o5cleq11d(cl1,s) - M * xl1m(cl1) * (1-O5ACL1(cl1));
o5bigMcl13(cl1,s)..              o5cleq11dM(cl1,s) =l= M * (1-xl1m(cl1) * (1-O5ACL1(cl1)));
o5bigMcl14(cl1,s)..              o5cleq11dM(cl1,s) =g= - M * (1-xl1m(cl1) * (1-O5ACL1(cl1)));
o5bigMcl21(cl1,s)..              o5cleq12dM(cl1,s) =l= o5cleq12d(cl1,s) + M * xl1m(cl1) * (1-O5ACL1(cl1));
o5bigMcl22(cl1,s)..              o5cleq12dM(cl1,s) =g= o5cleq12d(cl1,s) - M * xl1m(cl1) * (1-O5ACL1(cl1));
o5bigMcl23(cl1,s)..              o5cleq12dM(cl1,s) =l= M * (1-xl1m(cl1) * (1-O5ACL1(cl1)));
o5bigMcl24(cl1,s)..              o5cleq12dM(cl1,s) =g= - M * (1-xl1m(cl1) * (1-O5ACL1(cl1)));
o5bigMcl31(cl2,s)..              o5cleq21dM(cl2,s) =l= o5cleq21d(cl2,s) + M * xl2m(cl2) * (1-o5ACL2(cl2));
o5bigMcl32(cl2,s)..              o5cleq21dM(cl2,s) =g= o5cleq21d(cl2,s) - M * xl2m(cl2) * (1-O5ACL2(cl2));
o5bigMcl33(cl2,s)..              o5cleq21dM(cl2,s) =l= M * (1-xl2m(cl2) * (1-O5ACL2(cl2)));
o5bigMcl34(cl2,s)..              o5cleq21dM(cl2,s) =g= - M * (1-xl2m(cl2) * (1-O5ACL2(cl2)));
o5bigMcl41(cl2,s)..              o5cleq22dM(cl2,s) =l= o5cleq22d(cl2,s) + M * xl2m(cl2) * (1-O5ACL2(cl2));
o5bigMcl42(cl2,s)..              o5cleq22dM(cl2,s) =g= o5cleq22d(cl2,s) - M * xl2m(cl2) * (1-O5ACL2(cl2));
o5bigMcl43(cl2,s)..              o5cleq22dM(cl2,s) =l= M * (1-xl2m(cl2) * (1-O5ACL2(cl2)));
o5bigMcl44(cl2,s)..              o5cleq22dM(cl2,s) =g= - M * (1-xl2m(cl2) * (1-O5ACL2(cl2)));
o5bigMcl51(cl3,s)..              o5cleq31dM(cl3,s) =l= o5cleq31d(cl3,s) + M * xl3m(cl3) * (1-o5ACL3(cl3));
o5bigMcl52(cl3,s)..              o5cleq31dM(cl3,s) =g= o5cleq31d(cl3,s) - M * xl3m(cl3) * (1-O5ACL3(cl3));
o5bigMcl53(cl3,s)..              o5cleq31dM(cl3,s) =l= M * (1-xl3m(cl3) * (1-O5ACL3(cl3)));
o5bigMcl54(cl3,s)..              o5cleq31dM(cl3,s) =g= - M * (1-xl3m(cl3) * (1-O5ACL3(cl3)));
o5bigMcl61(cl3,s)..              o5cleq32dM(cl3,s) =l= o5cleq32d(cl3,s) + M * xl3m(cl3) * (1-O5ACL3(cl3));
o5bigMcl62(cl3,s)..              o5cleq32dM(cl3,s) =g= o5cleq32d(cl3,s) - M * xl3m(cl3) * (1-O5ACL3(cl3));
o5bigMcl63(cl3,s)..              o5cleq32dM(cl3,s) =l= M * (1-xl3m(cl3) * (1-O5ACL3(cl3)));
o5bigMcl64(cl3,s)..              o5cleq32dM(cl3,s) =g= - M * (1-xl3m(cl3) * (1-O5ACL3(cl3)));
o5bigMcl71(cl4,s)..              o5cleq41dM(cl4,s) =l= o5cleq41d(cl4,s) + M * xl4m(cl4) * (1-o5ACL4(cl4));
o5bigMcl72(cl4,s)..              o5cleq41dM(cl4,s) =g= o5cleq41d(cl4,s) - M * xl4m(cl4) * (1-O5ACL4(cl4));
o5bigMcl73(cl4,s)..              o5cleq41dM(cl4,s) =l= M * (1-xl4m(cl4) * (1-O5ACL4(cl4)));
o5bigMcl74(cl4,s)..              o5cleq41dM(cl4,s) =g= - M * (1-xl4m(cl4) * (1-O5ACL4(cl4)));
o5bigMcl81(cl4,s)..              o5cleq42dM(cl4,s) =l= o5cleq42d(cl4,s) + M * xl4m(cl4) * (1-O5ACL4(cl4));
o5bigMcl82(cl4,s)..              o5cleq42dM(cl4,s) =g= o5cleq42d(cl4,s) - M * xl4m(cl4) * (1-O5ACL4(cl4));
o5bigMcl83(cl4,s)..              o5cleq42dM(cl4,s) =l= M * (1-xl4m(cl4) * (1-O5ACL4(cl4)));
o5bigMcl84(cl4,s)..              o5cleq42dM(cl4,s) =g= - M * (1-xl4m(cl4) * (1-O5ACL4(cl4)));
o5bigMcl91(cl5,s)..              o5cleq51dM(cl5,s) =l= o5cleq51d(cl5,s) + M * xl5m(cl5) * (1-o5ACL5(cl5));
o5bigMcl92(cl5,s)..              o5cleq51dM(cl5,s) =g= o5cleq51d(cl5,s) - M * xl5m(cl5) * (1-O5ACL5(cl5));
o5bigMcl93(cl5,s)..              o5cleq51dM(cl5,s) =l= M * (1-xl5m(cl5) * (1-O5ACL5(cl5)));
o5bigMcl94(cl5,s)..              o5cleq51dM(cl5,s) =g= - M * (1-xl5m(cl5) * (1-O5ACL5(cl5)));
o5bigMcl01(cl5,s)..              o5cleq52dM(cl5,s) =l= o5cleq52d(cl5,s) + M * xl5m(cl5) * (1-O5ACL5(cl5));
o5bigMcl02(cl5,s)..              o5cleq52dM(cl5,s) =g= o5cleq52d(cl5,s) - M * xl5m(cl5) * (1-O5ACL5(cl5));
o5bigMcl03(cl5,s)..              o5cleq52dM(cl5,s) =l= M * (1-xl5m(cl5) * (1-O5ACL5(cl5)));
o5bigMcl04(cl5,s)..              o5cleq52dM(cl5,s) =g= - M * (1-xl5m(cl5) * (1-O5ACL5(cl5)));

o5bigMcl112(cl1,s)..              o5cllim11dM(cl1,s) =l= o5cllim11d(cl1,s) + M * (1-xl1m(cl1) * (1-O5ACL1(cl1)));
o5bigMcl122(cl1,s)..              o5cllim11dM(cl1,s) =g= o5cllim11d(cl1,s) - M * (1-xl1m(cl1) * (1-O5ACL1(cl1)));
o5bigMcl132(cl1,s)..              o5cllim11dM(cl1,s) =l= M * xl1m(cl1) * (1-O5ACL1(cl1));
o5bigMcl142(cl1,s)..              o5cllim11dM(cl1,s) =g= - M * xl1m(cl1) * (1-O5ACL1(cl1));
o5bigMcl212(cl1,s)..              o5cllim12dM(cl1,s) =l= o5cllim12d(cl1,s) + M * (1-xl1m(cl1) * (1-O5ACL1(cl1)));
o5bigMcl222(cl1,s)..              o5cllim12dM(cl1,s) =g= o5cllim12d(cl1,s) - M * (1-xl1m(cl1) * (1-O5ACL1(cl1)));
o5bigMcl232(cl1,s)..              o5cllim12dM(cl1,s) =l= M * xl1m(cl1) * (1-O5ACL1(cl1));
o5bigMcl242(cl1,s)..              o5cllim12dM(cl1,s) =g= - M * xl1m(cl1) * (1-O5ACL1(cl1));
o5bigMcl312(cl2,s)..              o5cllim21dM(cl2,s) =l= o5cllim21d(cl2,s) + M * (1-xl2m(cl2) * (1-O5ACL2(cl2)));
o5bigMcl322(cl2,s)..              o5cllim21dM(cl2,s) =g= o5cllim21d(cl2,s) - M * (1-xl2m(cl2) * (1-O5ACL2(cl2)));
o5bigMcl332(cl2,s)..              o5cllim21dM(cl2,s) =l= M * xl2m(cl2) * (1-O5ACL2(cl2));
o5bigMcl342(cl2,s)..              o5cllim21dM(cl2,s) =g= - M * xl2m(cl2) * (1-O5ACL2(cl2));
o5bigMcl412(cl2,s)..              o5cllim22dM(cl2,s) =l= o5cllim22d(cl2,s) + M * (1-xl2m(cl2) * (1-O5ACL2(cl2)));
o5bigMcl422(cl2,s)..              o5cllim22dM(cl2,s) =g= o5cllim22d(cl2,s) - M * (1-xl2m(cl2) * (1-O5ACL2(cl2)));
o5bigMcl432(cl2,s)..              o5cllim22dM(cl2,s) =l= M * xl2m(cl2) * (1-O5ACL2(cl2));
o5bigMcl442(cl2,s)..              o5cllim22dM(cl2,s) =g= - M * xl2m(cl2) * (1-O5ACL2(cl2));
o5bigMcl512(cl3,s)..              o5cllim31dM(cl3,s) =l= o5cllim31d(cl3,s) + M * (1-xl3m(cl3) * (1-O5ACL3(cl3)));
o5bigMcl522(cl3,s)..              o5cllim31dM(cl3,s) =g= o5cllim31d(cl3,s) - M * (1-xl3m(cl3) * (1-O5ACL3(cl3)));
o5bigMcl532(cl3,s)..              o5cllim31dM(cl3,s) =l= M * xl3m(cl3) * (1-O5ACL3(cl3));
o5bigMcl542(cl3,s)..              o5cllim31dM(cl3,s) =g= - M * xl3m(cl3) * (1-O5ACL3(cl3));
o5bigMcl612(cl3,s)..              o5cllim32dM(cl3,s) =l= o5cllim32d(cl3,s) + M * (1-xl3m(cl3) * (1-O5ACL3(cl3)));
o5bigMcl622(cl3,s)..              o5cllim32dM(cl3,s) =g= o5cllim32d(cl3,s) - M * (1-xl3m(cl3) * (1-O5ACL3(cl3)));
o5bigMcl632(cl3,s)..              o5cllim32dM(cl3,s) =l= M * xl3m(cl3) * (1-O5ACL3(cl3));
o5bigMcl642(cl3,s)..              o5cllim32dM(cl3,s) =g= - M * xl3m(cl3) * (1-O5ACL3(cl3));
o5bigMcl712(cl4,s)..              o5cllim41dM(cl4,s) =l= o5cllim41d(cl4,s) + M * (1-xl4m(cl4) * (1-O5ACL4(cl4)));
o5bigMcl722(cl4,s)..              o5cllim41dM(cl4,s) =g= o5cllim41d(cl4,s) - M * (1-xl4m(cl4) * (1-O5ACL4(cl4)));
o5bigMcl732(cl4,s)..              o5cllim41dM(cl4,s) =l= M * xl4m(cl4) * (1-O5ACL4(cl4));
o5bigMcl742(cl4,s)..              o5cllim41dM(cl4,s) =g= - M * xl4m(cl4) * (1-O5ACL4(cl4));
o5bigMcl812(cl4,s)..              o5cllim42dM(cl4,s) =l= o5cllim42d(cl4,s) + M * (1-xl4m(cl4) * (1-O5ACL4(cl4)));
o5bigMcl822(cl4,s)..              o5cllim42dM(cl4,s) =g= o5cllim42d(cl4,s) - M * (1-xl4m(cl4) * (1-O5ACL4(cl4)));
o5bigMcl832(cl4,s)..              o5cllim42dM(cl4,s) =l= M * xl4m(cl4) * (1-O5ACL4(cl4));
o5bigMcl842(cl4,s)..              o5cllim42dM(cl4,s) =g= - M * xl4m(cl4) * (1-O5ACL4(cl4));
o5bigMcl912(cl5,s)..              o5cllim51dM(cl5,s) =l= o5cllim51d(cl5,s) + M * (1-xl5m(cl5) * (1-O5ACL5(cl5)));
o5bigMcl922(cl5,s)..              o5cllim51dM(cl5,s) =g= o5cllim51d(cl5,s) - M * (1-xl5m(cl5) * (1-O5ACL5(cl5)));
o5bigMcl932(cl5,s)..              o5cllim51dM(cl5,s) =l= M * xl5m(cl5) * (1-O5ACL5(cl5));
o5bigMcl942(cl5,s)..              o5cllim51dM(cl5,s) =g= - M * xl5m(cl5) * (1-O5ACL5(cl5));
o5bigMcl012(cl5,s)..              o5cllim52dM(cl5,s) =l= o5cllim52d(cl5,s) + M * (1-xl5m(cl5) * (1-O5ACL5(cl5)));
o5bigMcl022(cl5,s)..              o5cllim52dM(cl5,s) =g= o5cllim52d(cl5,s) - M * (1-xl5m(cl5) * (1-O5ACL5(cl5)));
o5bigMcl032(cl5,s)..              o5cllim52dM(cl5,s) =l= M * xl5m(cl5) * (1-O5ACL5(cl5));
o5bigMcl042(cl5,s)..              o5cllim52dM(cl5,s) =g= - M * xl5m(cl5) * (1-O5ACL5(cl5));

o5bigMcg11(cg1,s)..              o5cglim11dM(cg1,s) =l= o5cglim11d(cg1,s) + M * (1-xg1m(cg1) * (1-O5ACG1(cg1)));
o5bigMcg12(cg1,s)..              o5cglim11dM(cg1,s) =g= o5cglim11d(cg1,s) - M * (1-xg1m(cg1) * (1-O5ACG1(cg1)));
o5bigMcg13(cg1,s)..              o5cglim11dM(cg1,s) =l= M * xg1m(cg1) * (1-O5ACG1(cg1));
o5bigMcg14(cg1,s)..              o5cglim11dM(cg1,s) =g= - M * xg1m(cg1) * (1-O5ACG1(cg1));
o5bigMcg21(cg1,s)..              o5cglim12dM(cg1,s) =l= o5cglim12d(cg1,s) + M * (1-xg1m(cg1) * (1-O5ACG1(cg1)));
o5bigMcg22(cg1,s)..              o5cglim12dM(cg1,s) =g= o5cglim12d(cg1,s) - M * (1-xg1m(cg1) * (1-O5ACG1(cg1)));
o5bigMcg23(cg1,s)..              o5cglim12dM(cg1,s) =l= M * xg1m(cg1) * (1-O5ACG1(cg1));
o5bigMcg24(cg1,s)..              o5cglim12dM(cg1,s) =g= - M * xg1m(cg1) * (1-O5ACG1(cg1));
o5bigMcg31(cg2,s)..              o5cglim21dM(cg2,s) =l= o5cglim21d(cg2,s) + M * (1-xg2m(cg2) * (1-O5ACG2(cg2)));
o5bigMcg32(cg2,s)..              o5cglim21dM(cg2,s) =g= o5cglim21d(cg2,s) - M * (1-xg2m(cg2) * (1-O5ACG2(cg2)));
o5bigMcg33(cg2,s)..              o5cglim21dM(cg2,s) =l= M * xg2m(cg2) * (1-O5ACG2(cg2));
o5bigMcg34(cg2,s)..              o5cglim21dM(cg2,s) =g= - M * xg2m(cg2) * (1-O5ACG2(cg2));
o5bigMcg41(cg2,s)..              o5cglim22dM(cg2,s) =l= o5cglim22d(cg2,s) + M * (1-xg2m(cg2) * (1-O5ACG2(cg2)));
o5bigMcg42(cg2,s)..              o5cglim22dM(cg2,s) =g= o5cglim22d(cg2,s) - M * (1-xg2m(cg2) * (1-O5ACG2(cg2)));
o5bigMcg43(cg2,s)..              o5cglim22dM(cg2,s) =l= M * xg2m(cg2) * (1-O5ACG2(cg2));
o5bigMcg44(cg2,s)..              o5cglim22dM(cg2,s) =g= - M * xg2m(cg2) * (1-O5ACG2(cg2));
o5bigMcg51(cg3,s)..              o5cglim31dM(cg3,s) =l= o5cglim31d(cg3,s) + M * (1-xg3m(cg3) * (1-O5ACG3(cg3)));
o5bigMcg52(cg3,s)..              o5cglim31dM(cg3,s) =g= o5cglim31d(cg3,s) - M * (1-xg3m(cg3) * (1-O5ACG3(cg3)));
o5bigMcg53(cg3,s)..              o5cglim31dM(cg3,s) =l= M * xg3m(cg3) * (1-O5ACG3(cg3));
o5bigMcg54(cg3,s)..              o5cglim31dM(cg3,s) =g= - M * xg3m(cg3) * (1-O5ACG3(cg3));
o5bigMcg61(cg3,s)..              o5cglim32dM(cg3,s) =l= o5cglim32d(cg3,s) + M * (1-xg3m(cg3) * (1-O5ACG3(cg3)));
o5bigMcg62(cg3,s)..              o5cglim32dM(cg3,s) =g= o5cglim32d(cg3,s) - M * (1-xg3m(cg3) * (1-O5ACG3(cg3)));
o5bigMcg63(cg3,s)..              o5cglim32dM(cg3,s) =l= M * xg3m(cg3) * (1-O5ACG3(cg3));
o5bigMcg64(cg3,s)..              o5cglim32dM(cg3,s) =g= - M * xg3m(cg3) * (1-O5ACG3(cg3));
o5bigMcg71(cg4,s)..              o5cglim41dM(cg4,s) =l= o5cglim41d(cg4,s) + M * (1-xg4m(cg4) * (1-O5ACG4(cg4)));
o5bigMcg72(cg4,s)..              o5cglim41dM(cg4,s) =g= o5cglim41d(cg4,s) - M * (1-xg4m(cg4) * (1-O5ACG4(cg4)));
o5bigMcg73(cg4,s)..              o5cglim41dM(cg4,s) =l= M * xg4m(cg4) * (1-O5ACG4(cg4));
o5bigMcg74(cg4,s)..              o5cglim41dM(cg4,s) =g= - M * xg4m(cg4) * (1-O5ACG4(cg4));
o5bigMcg81(cg4,s)..              o5cglim42dM(cg4,s) =l= o5cglim42d(cg4,s) + M * (1-xg4m(cg4) * (1-O5ACG4(cg4)));
o5bigMcg82(cg4,s)..              o5cglim42dM(cg4,s) =g= o5cglim42d(cg4,s) - M * (1-xg4m(cg4) * (1-O5ACG4(cg4)));
o5bigMcg83(cg4,s)..              o5cglim42dM(cg4,s) =l= M * xg4m(cg4) * (1-O5ACG4(cg4));
o5bigMcg84(cg4,s)..              o5cglim42dM(cg4,s) =g= - M * xg4m(cg4) * (1-O5ACG4(cg4));
o5bigMcg91(cg5,s)..              o5cglim51dM(cg5,s) =l= o5cglim51d(cg5,s) + M * (1-xg5m(cg5) * (1-O5ACG5(cg5)));
o5bigMcg92(cg5,s)..              o5cglim51dM(cg5,s) =g= o5cglim51d(cg5,s) - M * (1-xg5m(cg5) * (1-O5ACG5(cg5)));
o5bigMcg93(cg5,s)..              o5cglim51dM(cg5,s) =l= M * xg5m(cg5) * (1-O5ACG5(cg5));
o5bigMcg94(cg5,s)..              o5cglim51dM(cg5,s) =g= - M * xg5m(cg5) * (1-O5ACG5(cg5));
o5bigMcg01(cg5,s)..              o5cglim52dM(cg5,s) =l= o5cglim52d(cg5,s) + M * (1-xg5m(cg5) * (1-O5ACG5(cg5)));
o5bigMcg02(cg5,s)..              o5cglim52dM(cg5,s) =g= o5cglim52d(cg5,s) - M * (1-xg5m(cg5) * (1-O5ACG5(cg5)));
o5bigMcg03(cg5,s)..              o5cglim52dM(cg5,s) =l= M * xg5m(cg5) * (1-O5ACG5(cg5));
o5bigMcg04(cg5,s)..              o5cglim52dM(cg5,s) =g= - M * xg5m(cg5) * (1-O5ACG5(cg5));

Model o5dualsp /
         o5subobj,
         uncer51, uncer52,
         o5peg, o5fel, o5pcg1, o5pcg2, o5pcg3, o5pcg4, o5pcg5, o5fcl1, o5fcl2, o5fcl3, o5fcl4, o5fcl5, o5thetan, o5rdual,

         o5bigMcl11, o5bigMcl12, o5bigMcl13, o5bigMcl14, o5bigMcl21, o5bigMcl22, o5bigMcl23, o5bigMcl24, o5bigMcl31, o5bigMcl32, o5bigMcl33, o5bigMcl34, o5bigMcl41, o5bigMcl42, o5bigMcl43, o5bigMcl44, o5bigMcl51, o5bigMcl52, o5bigMcl53, o5bigMcl54,
         o5bigMcl61, o5bigMcl62, o5bigMcl63, o5bigMcl64, o5bigMcl71, o5bigMcl72, o5bigMcl73, o5bigMcl74, o5bigMcl81, o5bigMcl82, o5bigMcl83, o5bigMcl84, o5bigMcl91, o5bigMcl92, o5bigMcl93, o5bigMcl94, o5bigMcl01, o5bigMcl02, o5bigMcl03, o5bigMcl04,
         o5bigMcl112, o5bigMcl122, o5bigMcl132, o5bigMcl142, o5bigMcl212, o5bigMcl222, o5bigMcl232, o5bigMcl242, o5bigMcl312, o5bigMcl322, o5bigMcl332, o5bigMcl342, o5bigMcl412, o5bigMcl422, o5bigMcl432, o5bigMcl442, o5bigMcl512, o5bigMcl522, o5bigMcl532, o5bigMcl542,
         o5bigMcl612, o5bigMcl622, o5bigMcl632, o5bigMcl642, o5bigMcl712, o5bigMcl722, o5bigMcl732, o5bigMcl742, o5bigMcl812, o5bigMcl822, o5bigMcl832, o5bigMcl842, o5bigMcl912, o5bigMcl922, o5bigMcl932, o5bigMcl942, o5bigMcl012, o5bigMcl022, o5bigMcl032, o5bigMcl042,
         o5bigMcg11, o5bigMcg12, o5bigMcg13, o5bigMcg14, o5bigMcg21, o5bigMcg22, o5bigMcg23, o5bigMcg24, o5bigMcg31, o5bigMcg32, o5bigMcg33, o5bigMcg34, o5bigMcg41, o5bigMcg42, o5bigMcg43, o5bigMcg44, o5bigMcg51, o5bigMcg52, o5bigMcg53, o5bigMcg54,
         o5bigMcg61, o5bigMcg62, o5bigMcg63, o5bigMcg64, o5bigMcg71, o5bigMcg72, o5bigMcg73, o5bigMcg74, o5bigMcg81, o5bigMcg82, o5bigMcg83, o5bigMcg84, o5bigMcg91, o5bigMcg92, o5bigMcg93, o5bigMcg94, o5bigMcg01, o5bigMcg02, o5bigMcg03, o5bigMcg04,
         bigMel11, bigMel12, bigMel13, bigMel14, bigMel21, bigMel22, bigMel23, bigMel24, bigMel31, bigMel32, bigMel33, bigMel34, bigMel41, bigMel42, bigMel43, bigMel44,
         bigMeg11, bigMeg12, bigMeg13, bigMeg14, bigMeg21, bigMeg22, bigMeg23, bigMeg24/;

******************* Revisited Master Problem **********************

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

remasobjj..              remasobj =e=  sum(cl1, CLDATA1(cl1, '5') * xl1m(cl1)) + sum(cg1, CGDATA1(cg1, 'OC') * xg1m(cg1))
                         + sum(cl2, CLDATA2(cl2, '5') * xl2m(cl2)) + sum(cg2, CGDATA2(cg2, 'OC') * xg2m(cg2))
                         + sum(cl3, CLDATA3(cl3, '5') * xl3m(cl3)) + sum(cg3, CGDATA3(cg3, 'OC') * xg3m(cg3))
                         + sum(cl4, CLDATA4(cl4, '5') * xl4m(cl4)) + sum(cg4, CGDATA4(cg4, 'OC') * xg4m(cg4))
                         + sum(cl5, CLDATA5(cl5, '5') * xl5m(cl5)) + sum(cg5, CGDATA5(cg5, 'OC') * xg5m(cg5))  + eta;

Lower(rowset)..          eta =e= sum(t, sum(eg, epm(eg, t, rowset) * EGDATA(eg, 'OC'))
                                  + sum(cg1, cp1m(cg1, t, rowset) * CGDATA1(cg1, 'OC')) + sum(cg2, cp2m(cg2, t, rowset) * CGDATA2(cg2, 'OC'))
                                  + sum(cg3, cp3m(cg3, t, rowset) * CGDATA3(cg3, 'OC')) + sum(cg4, cp4m(cg4, t, rowset) * CGDATA4(cg4, 'OC')) + sum(cg5, cp5m(cg5, t, rowset) * CGDATA5(cg5, 'OC'))
                                  + sum(d, rm(d, t, rowset) * PC)) ;

loadbalance(n, t, rowset)..         sum(cg1$mapCG1(cg1,n), cp1m(cg1, t, rowset)) + sum(cg2$mapCG2(cg2,n), cp2m(cg2, t, rowset)) + sum(cg3$mapCG3(cg3,n), cp3m(cg3, t, rowset)) + sum(cg4$mapCG4(cg4,n), cp4m(cg4, t, rowset)) + sum(cg5$mapCG5(cg5,n), cp5m(cg5, t, rowset)) +
                            sum(eg$mapEG(eg,n), epm(eg, t, rowset)) -
                            sum(cl1$mapCSL1(cl1,n), cf1m(cl1, t, rowset)) + sum(cl1$mapCRL1(cl1,n), cf1m(cl1, t, rowset)) -
                            sum(cl2$mapCSL2(cl2,n), cf2m(cl2, t, rowset)) + sum(cl2$mapCRL2(cl2,n), cf2m(cl2, t, rowset)) -
                            sum(cl3$mapCSL3(cl3,n), cf3m(cl3, t, rowset)) + sum(cl3$mapCRL3(cl3,n), cf3m(cl3, t, rowset)) -
                            sum(cl4$mapCSL4(cl4,n), cf4m(cl4, t, rowset)) + sum(cl4$mapCRL4(cl4,n), cf4m(cl4, t, rowset)) -
                            sum(cl5$mapCSL5(cl5,n), cf5m(cl5, t, rowset)) + sum(cl5$mapCRL5(cl5,n), cf5m(cl5, t, rowset)) -
                            sum(el$mapESL(el,n), efm(el, t, rowset)) + sum(el$mapERL(el,n), efm(el, t, rowset)) + sum(d$mapD(d,n), rm(d, t, rowset))
                            =e= sum(d$mapD(d,n), DDATAp(d) * (1.2 ** (ord(t)-1)) );

eleq1(el, t, rowset)..              efm(el, t, rowset) =g= (sum(n$mapESL(el,n), thetam(n, t, rowset)) -
                                    sum(n$mapERL(el,n), thetam(n, t, rowset))) / ELDATA(el, '1') - M * AELm(el, t, rowset);
eleq2(el, t, rowset)..              efm(el, t, rowset) =l= (sum(n$mapESL(el,n), thetam(n, t, rowset)) -
                                    sum(n$mapERL(el,n), thetam(n, t, rowset))) / ELDATA(el, '1') + M * AELm(el, t, rowset);
ellim1(el, t, rowset)..             efm(el, t, rowset) =g= - (1-AELm(el, t, rowset)) * ELDATA(el, '4');
ellim2(el, t, rowset)..             efm(el, t, rowset) =l= (1-AELm(el, t, rowset)) * ELDATA(el, '4');

cleq11(cl1, t, rowset)..             cf1m(cl1, t, rowset) =g= (sum(n$mapCSL1(cl1,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL1(cl1,n), thetam(n, t, rowset))) / CLDATA1(cl1, '1') - M * (1-exlm1(cl1,t, rowset));
cleq12(cl1, t, rowset)..             cf1m(cl1, t, rowset) =l= (sum(n$mapCSL1(cl1,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL1(cl1,n), thetam(n, t, rowset))) / CLDATA1(cl1, '1') + M * (1-exlm1(cl1,t, rowset));
cleq21(cl2, t, rowset)..             cf2m(cl2, t, rowset) =g= (sum(n$mapCSL2(cl2,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL2(cl2,n), thetam(n, t, rowset))) / CLDATA2(cl2, '1') - M * (1-exlm2(cl2,t, rowset));
cleq22(cl2, t, rowset)..             cf2m(cl2, t, rowset) =l= (sum(n$mapCSL2(cl2,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL2(cl2,n), thetam(n, t, rowset))) / CLDATA2(cl2, '1') + M * (1-exlm2(cl2,t, rowset));
cleq31(cl3, t, rowset)..             cf3m(cl3, t, rowset) =g= (sum(n$mapCSL3(cl3,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL3(cl3,n), thetam(n, t, rowset))) / CLDATA3(cl3, '1') - M * (1-exlm3(cl3,t, rowset));
cleq32(cl3, t, rowset)..             cf3m(cl3, t, rowset) =l= (sum(n$mapCSL3(cl3,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL3(cl3,n), thetam(n, t, rowset))) / CLDATA3(cl3, '1') + M * (1-exlm3(cl3,t, rowset));
cleq41(cl4, t, rowset)..             cf4m(cl4, t, rowset) =g= (sum(n$mapCSL4(cl4,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL4(cl4,n), thetam(n, t, rowset))) / CLDATA4(cl4, '1') - M * (1-exlm4(cl4,t, rowset));
cleq42(cl4, t, rowset)..             cf4m(cl4, t, rowset) =l= (sum(n$mapCSL4(cl4,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL4(cl4,n), thetam(n, t, rowset))) / CLDATA4(cl4, '1') + M * (1-exlm4(cl4,t, rowset));
cleq51(cl5, t, rowset)..             cf5m(cl5, t, rowset) =g= (sum(n$mapCSL5(cl5,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL5(cl5,n), thetam(n, t, rowset))) / CLDATA5(cl5, '1') - M * (1-exlm5(cl5,t, rowset));
cleq52(cl5, t, rowset)..             cf5m(cl5, t, rowset) =l= (sum(n$mapCSL5(cl5,n), thetam(n, t, rowset)) -
                                    sum(n$mapCRL5(cl5,n), thetam(n, t, rowset))) / CLDATA5(cl5, '1') + M * (1-exlm5(cl5,t, rowset));

cllim11(cl1, t, rowset)..             cf1m(cl1, t, rowset) =g= - CLDATA1(cl1, '4') * exlm1(cl1,t, rowset);
cllim12(cl1, t, rowset)..             cf1m(cl1, t, rowset) =l= CLDATA1(cl1, '4') * exlm1(cl1,t, rowset);

cllim21(cl2, t, rowset)..             cf2m(cl2, t, rowset) =g= - CLDATA2(cl2, '4') * exlm2(cl2,t, rowset);
cllim22(cl2, t, rowset)..             cf2m(cl2, t, rowset) =l= CLDATA2(cl2, '4') * exlm2(cl2,t, rowset);

cllim31(cl3, t, rowset)..             cf3m(cl3, t, rowset) =g= - CLDATA3(cl3, '4') * exlm3(cl3,t, rowset);
cllim32(cl3, t, rowset)..             cf3m(cl3, t, rowset) =l= CLDATA3(cl3, '4') * exlm3(cl3,t, rowset);

cllim41(cl4, t, rowset)..             cf4m(cl4, t, rowset) =g= - CLDATA4(cl4, '4') * exlm4(cl4,t, rowset);
cllim42(cl4, t, rowset)..             cf4m(cl4, t, rowset) =l= CLDATA4(cl4, '4') * exlm4(cl4,t, rowset);

cllim51(cl5, t, rowset)..             cf5m(cl5, t, rowset) =g= - CLDATA5(cl5, '4') * exlm5(cl5,t, rowset);
cllim52(cl5, t, rowset)..             cf5m(cl5, t, rowset) =l= CLDATA5(cl5, '4') * exlm5(cl5,t, rowset);

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

lslimm(n, t, rowset)..              sum(d$mapD(d,n), rm(d, t, rowset)) =l= sum(d$mapD(d,n), DDATAp(d) * ord(t) * 1.2);

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
         xglim, xllim,
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

option reslim = 100000000000000000;
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

                 solve o1dualsp use mip min o1subdual;
                 AELm(el, 't1', itera+1) = AEL.l(el);
                 AEGm(eg, 't1', itera+1) = AEG.l(eg);
                 solve o2dualsp use mip min o2subdual;
                 AELm(el, 't2', itera+1) = AEL.l(el);
                 AEGm(eg, 't2', itera+1) = AEG.l(eg);
                 solve o3dualsp use mip min o3subdual;
                 AELm(el, 't3', itera+1) = AEL.l(el);
                 AEGm(eg, 't3', itera+1) = AEG.l(eg);
                 solve o4dualsp use mip min o4subdual;
                 AELm(el, 't4', itera+1) = AEL.l(el);
                 AEGm(eg, 't4', itera+1) = AEG.l(eg);
                 solve o5dualsp use mip min o5subdual;
                 AELm(el, 't5', itera+1) = AEL.l(el);
                 AEGm(eg, 't5', itera+1) = AEG.l(eg);

                 ACL1m(cl1, 't1', itera+1) = o1ACL1.l(cl1); ACL2m(cl2, 't1', itera+1) = 0; ACL3m(cl3, 't1', itera+1) = 0; ACL4m(cl4, 't1', itera+1) = 0; ACL5m(cl5, 't1', itera+1) = 0;
                 ACG1m(cg1, 't1', itera+1) = o1ACG1.l(cg1); ACG2m(cg2, 't1', itera+1) = 0; ACG3m(cg3, 't1', itera+1) = 0; ACG4m(cg4, 't1', itera+1) = 0; ACG5m(cg5, 't1', itera+1) = 0;

                 ACL1m(cl1, 't2', itera+1) = o2ACL1.l(cl1); ACL2m(cl2, 't2', itera+1) = o2ACL2.l(cl2); ACL3m(cl3, 't2', itera+1) = 0; ACL4m(cl4, 't2', itera+1) = 0; ACL5m(cl5, 't2', itera+1) = 0;
                 ACG1m(cg1, 't2', itera+1) = o2ACG1.l(cg1); ACG2m(cg2, 't2', itera+1) = o2ACG2.l(cg2); ACG3m(cg3, 't2', itera+1) = 0; ACG4m(cg4, 't2', itera+1) = 0; ACG5m(cg5, 't2', itera+1) = 0;

                 ACL1m(cl1, 't3', itera+1) = o3ACL1.l(cl1); ACL2m(cl2, 't3', itera+1) = o3ACL2.l(cl2); ACL3m(cl3, 't3', itera+1) = o3ACL3.l(cl3); ACL4m(cl4, 't3', itera+1) = 0; ACL5m(cl5, 't3', itera+1) = 0;
                 ACG1m(cg1, 't3', itera+1) = o3ACG1.l(cg1); ACG2m(cg2, 't3', itera+1) = o3ACG2.l(cg2); ACG3m(cg3, 't3', itera+1) = o3ACG3.l(cg3); ACG4m(cg4, 't3', itera+1) = 0; ACG5m(cg5, 't3', itera+1) = 0;

                 ACL1m(cl1, 't4', itera+1) = o4ACL1.l(cl1); ACL2m(cl2, 't4', itera+1) = o4ACL2.l(cl2); ACL3m(cl3, 't4', itera+1) = o4ACL3.l(cl3); ACL4m(cl4, 't4', itera+1) = o4ACL4.l(cl4); ACL5m(cl5, 't4', itera+1) = 0;
                 ACG1m(cg1, 't4', itera+1) = o4ACG1.l(cg1); ACG2m(cg2, 't4', itera+1) = o4ACG2.l(cg2); ACG3m(cg3, 't4', itera+1) = o4ACG3.l(cg3); ACG4m(cg4, 't4', itera+1) = o4ACG4.l(cg4); ACG5m(cg5, 't4', itera+1) = 0;

                 ACL1m(cl1, 't5', itera+1) = o5ACL1.l(cl1); ACL2m(cl2, 't5', itera+1) = o5ACL2.l(cl2); ACL3m(cl3, 't5', itera+1) = o5ACL3.l(cl3); ACL4m(cl4, 't5', itera+1) = o5ACL4.l(cl4); ACL5m(cl5, 't5', itera+1) = o5ACL5.l(cl5);
                 ACG1m(cg1, 't5', itera+1) = o5ACG1.l(cg1); ACG2m(cg2, 't5', itera+1) = o5ACG2.l(cg2); ACG3m(cg3, 't5', itera+1) = o5ACG3.l(cg3); ACG4m(cg4, 't5', itera+1) = o5ACG4.l(cg4); ACG5m(cg5, 't5', itera+1) = o5ACG5.l(cg5);

                 UBm(itera) = - o1subdual.l - o2subdual.l - o3subdual.l - o4subdual.l - o5subdual.l + sum(cl1, CLDATA1(cl1, '5') * xl1m(cl1)) + sum(cg1, CGDATA1(cg1, 'OC') * xg1m(cg1))
                         + sum(cl2, CLDATA2(cl2, '5') * xl2m(cl2)) + sum(cg2, CGDATA2(cg2, 'OC') * xg2m(cg2))
                         + sum(cl3, CLDATA3(cl3, '5') * xl3m(cl3)) + sum(cg3, CGDATA3(cg3, 'OC') * xg3m(cg3))
                         + sum(cl4, CLDATA4(cl4, '5') * xl4m(cl4)) + sum(cg4, CGDATA4(cg4, 'OC') * xg4m(cg4))
                         + sum(cl5, CLDATA5(cl5, '5') * xl5m(cl5)) + sum(cg5, CGDATA5(cg5, 'OC') * xg5m(cg5));

                 UB(itera) = UBm(itera);

         );

         if(ord(itera) > 1,

                 rowset(itera) = yes;

                 solve remaster use mip min remasobj;

                 LB(itera) = remasobj.l;

                 dec_g1(cg1, itera) = xg1.l(cg1); dec_g2(cg2, itera) = xg2.l(cg2); dec_g3(cg3, itera) = xg3.l(cg3); dec_g4(cg4, itera) = xg4.l(cg4); dec_g5(cg5, itera) = xg5.l(cg5);
                 dec_l1(cl1, itera) = xl1.l(cl1); dec_l2(cl2, itera) = xl2.l(cl2); dec_l3(cl3, itera) = xl3.l(cl3); dec_l4(cl4, itera) = xl4.l(cl4); dec_l5(cl5, itera) = xl5.l(cl5);

                 xl1m(cl1) = xl1.l(cl1); xl2m(cl2) = xl2.l(cl2); xl3m(cl3) = xl3.l(cl3); xl4m(cl4) = xl4.l(cl4); xl5m(cl5) = xl5.l(cl5);
                 xg1m(cg1) = xg1.l(cg1); xg2m(cg2) = xg2.l(cg2); xg3m(cg3) = xg3.l(cg3); xg4m(cg4) = xg4.l(cg4); xg5m(cg5) = xg5.l(cg5);

                 solve o1dualsp use mip min o1subdual;
                 AELm(el, 't1', itera+1) = AEL.l(el);
                 AEGm(eg, 't1', itera+1) = AEG.l(eg);
                 solve o2dualsp use mip min o2subdual;
                 AELm(el, 't2', itera+1) = AEL.l(el);
                 AEGm(eg, 't2', itera+1) = AEG.l(eg);
                 solve o3dualsp use mip min o3subdual;
                 AELm(el, 't3', itera+1) = AEL.l(el);
                 AEGm(eg, 't3', itera+1) = AEG.l(eg);
                 solve o4dualsp use mip min o4subdual;
                 AELm(el, 't4', itera+1) = AEL.l(el);
                 AEGm(eg, 't4', itera+1) = AEG.l(eg);
                 solve o5dualsp use mip min o5subdual;
                 AELm(el, 't5', itera+1) = AEL.l(el);
                 AEGm(eg, 't5', itera+1) = AEG.l(eg);

                 ACL1m(cl1, 't1', itera+1) = o1ACL1.l(cl1); ACL2m(cl2, 't1', itera+1) = 0; ACL3m(cl3, 't1', itera+1) = 0; ACL4m(cl4, 't1', itera+1) = 0; ACL5m(cl5, 't1', itera+1) = 0;
                 ACG1m(cg1, 't1', itera+1) = o1ACG1.l(cg1); ACG2m(cg2, 't1', itera+1) = 0; ACG3m(cg3, 't1', itera+1) = 0; ACG4m(cg4, 't1', itera+1) = 0; ACG5m(cg5, 't1', itera+1) = 0;

                 ACL1m(cl1, 't2', itera+1) = o2ACL1.l(cl1); ACL2m(cl2, 't2', itera+1) = o2ACL2.l(cl2); ACL3m(cl3, 't2', itera+1) = 0; ACL4m(cl4, 't2', itera+1) = 0; ACL5m(cl5, 't2', itera+1) = 0;
                 ACG1m(cg1, 't2', itera+1) = o2ACG1.l(cg1); ACG2m(cg2, 't2', itera+1) = o2ACG2.l(cg2); ACG3m(cg3, 't2', itera+1) = 0; ACG4m(cg4, 't2', itera+1) = 0; ACG5m(cg5, 't2', itera+1) = 0;

                 ACL1m(cl1, 't3', itera+1) = o3ACL1.l(cl1); ACL2m(cl2, 't3', itera+1) = o3ACL2.l(cl2); ACL3m(cl3, 't3', itera+1) = o3ACL3.l(cl3); ACL4m(cl4, 't3', itera+1) = 0; ACL5m(cl5, 't3', itera+1) = 0;
                 ACG1m(cg1, 't3', itera+1) = o3ACG1.l(cg1); ACG2m(cg2, 't3', itera+1) = o3ACG2.l(cg2); ACG3m(cg3, 't3', itera+1) = o3ACG3.l(cg3); ACG4m(cg4, 't3', itera+1) = 0; ACG5m(cg5, 't3', itera+1) = 0;

                 ACL1m(cl1, 't4', itera+1) = o4ACL1.l(cl1); ACL2m(cl2, 't4', itera+1) = o4ACL2.l(cl2); ACL3m(cl3, 't4', itera+1) = o4ACL3.l(cl3); ACL4m(cl4, 't4', itera+1) = o4ACL4.l(cl4); ACL5m(cl5, 't4', itera+1) = 0;
                 ACG1m(cg1, 't4', itera+1) = o4ACG1.l(cg1); ACG2m(cg2, 't4', itera+1) = o4ACG2.l(cg2); ACG3m(cg3, 't4', itera+1) = o4ACG3.l(cg3); ACG4m(cg4, 't4', itera+1) = o4ACG4.l(cg4); ACG5m(cg5, 't4', itera+1) = 0;

                 ACL1m(cl1, 't5', itera+1) = o5ACL1.l(cl1); ACL2m(cl2, 't5', itera+1) = o5ACL2.l(cl2); ACL3m(cl3, 't5', itera+1) = o5ACL3.l(cl3); ACL4m(cl4, 't5', itera+1) = o5ACL4.l(cl4); ACL5m(cl5, 't5', itera+1) = o5ACL5.l(cl5);
                 ACG1m(cg1, 't5', itera+1) = o5ACG1.l(cg1); ACG2m(cg2, 't5', itera+1) = o5ACG2.l(cg2); ACG3m(cg3, 't5', itera+1) = o5ACG3.l(cg3); ACG4m(cg4, 't5', itera+1) = o5ACG4.l(cg4); ACG5m(cg5, 't5', itera+1) = o5ACG5.l(cg5);

                 UBm(itera) = - o1subdual.l - o2subdual.l - o3subdual.l - o4subdual.l - o5subdual.l + sum(cl1, CLDATA1(cl1, '5') * xl1m(cl1)) + sum(cg1, CGDATA1(cg1, 'OC') * xg1m(cg1))
                         + sum(cl2, CLDATA2(cl2, '5') * xl2m(cl2)) + sum(cg2, CGDATA2(cg2, 'OC') * xg2m(cg2))
                         + sum(cl3, CLDATA3(cl3, '5') * xl3m(cl3)) + sum(cg3, CGDATA3(cg3, 'OC') * xg3m(cg3))
                         + sum(cl4, CLDATA4(cl4, '5') * xl4m(cl4)) + sum(cg4, CGDATA4(cg4, 'OC') * xg4m(cg4))
                         + sum(cl5, CLDATA5(cl5, '5') * xl5m(cl5)) + sum(cg5, CGDATA5(cg5, 'OC') * xg5m(cg5));

                 UB(itera) = UBm(itera);

                 break$((abs(UB(itera)-LB(itera))/UB(itera)) <= epsilon);
*                 break$( ((UB(itera-1) - LB(itera-1) - UB(itera) + LB(itera)) / (UB(itera) - LB(itera)) <= epsilon));

         );
);

display dec_g1, dec_g2, dec_g3, dec_g4, dec_g5, dec_l1, dec_l2, dec_l3, dec_l4, dec_l5, LB, UB, UBm;
