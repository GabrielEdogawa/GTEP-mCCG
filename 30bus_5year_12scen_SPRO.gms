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

CLDATA2(cl2, '5') = CLDATA2(cl2, '5') * 0.9;

CLDATA3(cl3, '5') = CLDATA3(cl3, '5') * 0.9 * 0.9;

CLDATA4(cl4, '5') = CLDATA4(cl4, '5') * 0.9 * 0.9 * 0.9;

CLDATA5(cl5, '5') = CLDATA5(cl5, '5') * 0.9 * 0.9 * 0.9 * 0.9;

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

Scalar M       big M value     /100000/

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
xllim..         sum(cl1, CLDATA1(cl1, '5')* xl1(cl1)) + sum(cl2, CLDATA2(cl2, '5')* xl2(cl2)) + sum(cl3, CLDATA3(cl3, '5')* xl3(cl3)) + sum(cl4, CLDATA4(cl4, '5')* xl4(cl4)) + sum(cl5, CLDATA5(cl5, '5')* xl5(cl5))  =l= 100;

Model Master0 / objective0, xglim, xllim/  ;

Parameters
                 xl1m(cl1), xg1m(cg1), xl2m(cl2), xg2m(cg2), xl3m(cl3), xg3m(cg3),
                 xl5m(cl5), xg5m(cg5), xl4m(cl4), xg4m(cg4);

*********************** Subproblem *******************************

Positive Variables
                 eleq1d(el,s,t), eleq2d(el,s,t), ellim1d(el,s,t), ellim2d(el,s,t),
                 cleq11d(cl1,s,t), cleq12d(cl1,s,t), cleq21d(cl2,s,t), cleq22d(cl2,s,t), cleq31d(cl3,s,t),
                 cleq32d(cl3,s,t), cleq41d(cl4,s,t), cleq42d(cl4,s,t), cleq51d(cl5,s,t), cleq52d(cl5,s,t),
                 cllim11d(cl1,s,t), cllim12d(cl1,s,t), cllim21d(cl2,s,t), cllim22d(cl2,s,t),
                 cllim31d(cl3,s,t), cllim32d(cl3,s,t), cllim41d(cl4,s,t), cllim42d(cl4,s,t), cllim51d(cl5,s,t), cllim52d(cl5,s,t),
                 eglim1d(eg,s,t), eglim2d(eg,s,t), cglim11d(cg1,s,t), cglim12d(cg1,s,t), cglim21d(cg2,s,t), cglim22d(cg2,s,t), cglim31d(cg3,s,t), cglim32d(cg3,s,t),
                 cglim41d(cg4,s,t), cglim42d(cg4,s,t), cglim51d(cg5,s,t), cglim52d(cg5,s,t), zeta(n,s,t),

                 eleq1dM(el,s,t), eleq2dM(el,s,t), ellim1dM(el,s,t), ellim2dM(el,s,t), eglim1dM(eg,s,t), eglim2dM(eg,s,t),
                 cleq12dM(cl1,s,t), cleq22dM(cl2,s,t), cleq32dM(cl3,s,t), cleq42dM(cl4,s,t), cleq52dM(cl5,s,t),
                 cleq11dM(cl1,s,t), cleq21dM(cl2,s,t), cleq31dM(cl3,s,t), cleq41dM(cl4,s,t), cleq51dM(cl5,s,t),
                 cllim11dM(cl1,s,t), cllim21dM(cl2,s,t), cllim31dM(cl3,s,t), cllim41dM(cl4,s,t), cllim51dM(cl5,s,t),
                 cllim12dM(cl1,s,t), cllim22dM(cl2,s,t), cllim32dM(cl3,s,t), cllim42dM(cl4,s,t), cllim52dM(cl5,s,t),
                 cglim11dM(cg1,s,t), cglim21dM(cg2,s,t), cglim31dM(cg3,s,t), cglim41dM(cg4,s,t), cglim51dM(cg5,s,t),
                 cglim12dM(cg1,s,t), cglim22dM(cg2,s,t), cglim32dM(cg3,s,t), cglim42dM(cg4,s,t), cglim52dM(cg5,s,t);

Free Variable
                 pi(n,s,t), subdual, cllim23d(cl2,s,t), cllim33d(cl3,s,t), cllim43d(cl4,s,t), cllim53d(cl5,s,t);

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

subobj..                 subdual =e= -sum(s, prob(s) * ( sum(t, sum(n, sum(d$mapD(d,n), DDATA(d,s) * ord(t) * 1.2 * pi(n,s,t)))) -
                         sum(t, sum(el, M * eleq1dM(el,s,t))) -
                         sum(t, sum(el, M * eleq2dM(el,s,t))) -
                         sum(t, sum(el, ELDATA(el, '4') * ellim1dM(el,s,t))) -
                         sum(t, sum(el, ELDATA(el, '4') * ellim2dM(el,s,t))) -
                         sum(t, sum(cl1, M * cleq11dM(cl1,s,t))) - sum(t, sum(cl1, M * cleq12dM(cl1,s,t))) -
                         sum(t, sum(cl2, M * cleq21dM(cl2,s,t))) - sum(t, sum(cl2, M * cleq22dM(cl2,s,t))) -
                         sum(t, sum(cl3, M * cleq31dM(cl3,s,t))) - sum(t, sum(cl3, M * cleq32dM(cl3,s,t))) -
                         sum(t, sum(cl4, M * cleq41dM(cl4,s,t))) - sum(t, sum(cl4, M * cleq42dM(cl4,s,t))) -
                         sum(t, sum(cl5, M * cleq51dM(cl5,s,t))) - sum(t, sum(cl5, M * cleq52dM(cl5,s,t))) -
                         sum(t, sum(cl1, CLDATA1(cl1, '4') * cllim11dM(cl1,s,t))) - sum(t, sum(cl1, CLDATA1(cl1, '4') * cllim12dM(cl1,s,t))) -
                         sum(t, sum(cl2, CLDATA2(cl2, '4') * cllim21dM(cl2,s,t))) - sum(t, sum(cl2, CLDATA2(cl2, '4') * cllim22dM(cl2,s,t))) -
                         sum(t, sum(cl3, CLDATA3(cl3, '4') * cllim31dM(cl3,s,t))) - sum(t, sum(cl3, CLDATA3(cl3, '4') * cllim32dM(cl3,s,t))) -
                         sum(t, sum(cl4, CLDATA4(cl4, '4') * cllim41dM(cl4,s,t))) - sum(t, sum(cl4, CLDATA4(cl4, '4') * cllim42dM(cl4,s,t))) -
                         sum(t, sum(cl5, CLDATA5(cl5, '4') * cllim51dM(cl5,s,t))) - sum(t, sum(cl5, CLDATA5(cl5, '4') * cllim52dM(cl5,s,t))) -
                         sum(t, sum(eg, eglim1dM(eg,s,t) * EGDATA(eg, 'Pmax'))) + sum(t, sum(eg, eglim2dM(eg,s,t) * EGDATA(eg, 'Pmin'))) -
                         sum(t, sum(cg1, CGDATA1(cg1, 'Pmax') * cglim11dM(cg1,s,t))) + sum(t, sum(cg1, CGDATA1(cg1, 'Pmin') * cglim12dM(cg1,s,t))) -
                         sum(t, sum(cg2, CGDATA2(cg2, 'Pmax') * cglim21dM(cg2,s,t))) + sum(t, sum(cg2, CGDATA2(cg2, 'Pmin') * cglim22dM(cg2,s,t))) -
                         sum(t, sum(cg3, CGDATA3(cg3, 'Pmax') * cglim31dM(cg3,s,t))) + sum(t, sum(cg3, CGDATA3(cg3, 'Pmin') * cglim32dM(cg3,s,t))) -
                         sum(t, sum(cg4, CGDATA4(cg4, 'Pmax') * cglim41dM(cg4,s,t))) + sum(t, sum(cg4, CGDATA4(cg4, 'Pmin') * cglim42dM(cg4,s,t))) -
                         sum(t, sum(cg5, CGDATA5(cg5, 'Pmax') * cglim51dM(cg5,s,t))) + sum(t, sum(cg5, CGDATA5(cg5, 'Pmin') * cglim52dM(cg5,s,t))) -
                         sum(t, sum(n, sum(d$mapD(d,n), DDATA(d,s)) * ord(t) * 1.2 * zeta(n,s,t))) ));

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

peg(eg,s,t)..                - eglim1d(eg,s,t) + eglim2d(eg,s,t) + sum(n$mapEG(eg,n), pi(n,s,t)) =l= EGDATA(eg, 'OC');

fel(el,s,t)..                eleq1d(el,s,t) - eleq2d(el,s,t) + ellim1d(el,s,t) - ellim2d(el,s,t) + sum(n$mapERL(el,n), pi(n,s,t)) - sum(n$mapESL(el,n), pi(n,s,t)) =e= 0;

pcg1(cg1,s,t)..              - cglim11d(cg1,s,t) + cglim12d(cg1,s,t) + sum(n$mapCG1(cg1,n), pi(n,s,t)) =l= CGDATA1(cg1, 'OC');
pcg2(cg2,s,t)..              - cglim21d(cg2,s,t) + cglim22d(cg2,s,t) + sum(n$mapCG2(cg2,n), pi(n,s,t)) =l= CGDATA2(cg2, 'OC');
pcg3(cg3,s,t)..              - cglim31d(cg3,s,t) + cglim32d(cg3,s,t) + sum(n$mapCG3(cg3,n), pi(n,s,t)) =l= CGDATA3(cg3, 'OC');
pcg4(cg4,s,t)..              - cglim41d(cg4,s,t) + cglim42d(cg4,s,t) + sum(n$mapCG4(cg4,n), pi(n,s,t)) =l= CGDATA4(cg4, 'OC');
pcg5(cg5,s,t)..              - cglim51d(cg5,s,t) + cglim52d(cg5,s,t) + sum(n$mapCG5(cg5,n), pi(n,s,t)) =l= CGDATA5(cg5, 'OC');

fcl1(cl1,s,t)..                cleq11d(cl1,s,t) - cleq12d(cl1,s,t) + cllim11d(cl1,s,t) - cllim12d(cl1,s,t) + sum(n$mapCRL1(cl1,n), pi(n,s,t)) - sum(n$mapCSL1(cl1,n), pi(n,s,t)) =e= 0;
fcl2(cl2,s,t)..                cleq21d(cl2,s,t) - cleq22d(cl2,s,t) + cllim21d(cl2,s,t) - cllim22d(cl2,s,t) + sum(n$mapCRL2(cl2,n), pi(n,s,t)) - sum(n$mapCSL2(cl2,n), pi(n,s,t)) =e= 0;
fcl3(cl3,s,t)..                cleq31d(cl3,s,t) - cleq32d(cl3,s,t) + cllim31d(cl3,s,t) - cllim32d(cl3,s,t) + sum(n$mapCRL3(cl3,n), pi(n,s,t)) - sum(n$mapCSL3(cl3,n), pi(n,s,t)) =e= 0;
fcl4(cl4,s,t)..                cleq41d(cl4,s,t) - cleq42d(cl4,s,t) + cllim41d(cl4,s,t) - cllim42d(cl4,s,t) + sum(n$mapCRL4(cl4,n), pi(n,s,t)) - sum(n$mapCSL4(cl4,n), pi(n,s,t)) =e= 0;
fcl5(cl5,s,t)..                cleq51d(cl5,s,t) - cleq52d(cl5,s,t) + cllim51d(cl5,s,t) - cllim52d(cl5,s,t) + sum(n$mapCRL5(cl5,n), pi(n,s,t)) - sum(n$mapCSL5(cl5,n), pi(n,s,t)) =e= 0;

thetan(n,s,t)..            sum(el$mapESL(el,n), eleq1d(el,s,t) / ELDATA(el, '1')) - sum(el$mapERL(el,n), eleq1d(el,s,t) / ELDATA(el, '1')) -
                         sum(el$mapESL(el,n), eleq2d(el,s,t) / ELDATA(el, '1')) + sum(el$mapERL(el,n), eleq2d(el,s,t) / ELDATA(el, '1')) +
                         sum(cl1$mapCSL1(cl1,n), cleq11d(cl1,s,t) / CLDATA1(cl1, '1')) - sum(cl1$mapCRL1(cl1,n), cleq11d(cl1,s,t) / CLDATA1(cl1, '1')) -
                         sum(cl1$mapCSL1(cl1,n), cleq12d(cl1,s,t) / CLDATA1(cl1, '1')) + sum(cl1$mapCRL1(cl1,n), cleq12d(cl1,s,t) / CLDATA1(cl1, '1')) +
                         sum(cl2$mapCSL2(cl2,n), cleq21d(cl2,s,t) / CLDATA2(cl2, '1')) - sum(cl2$mapCRL2(cl2,n), cleq21d(cl2,s,t) / CLDATA2(cl2, '1')) -
                         sum(cl2$mapCSL2(cl2,n), cleq22d(cl2,s,t) / CLDATA2(cl2, '1')) + sum(cl2$mapCRL2(cl2,n), cleq22d(cl2,s,t) / CLDATA2(cl2, '1')) +
                         sum(cl3$mapCSL3(cl3,n), cleq31d(cl3,s,t) / CLDATA3(cl3, '1')) - sum(cl3$mapCRL3(cl3,n), cleq31d(cl3,s,t) / CLDATA3(cl3, '1')) -
                         sum(cl3$mapCSL3(cl3,n), cleq32d(cl3,s,t) / CLDATA3(cl3, '1')) + sum(cl3$mapCRL3(cl3,n), cleq32d(cl3,s,t) / CLDATA3(cl3, '1')) +
                         sum(cl4$mapCSL4(cl4,n), cleq41d(cl4,s,t) / CLDATA4(cl4, '1')) - sum(cl4$mapCRL4(cl4,n), cleq41d(cl4,s,t) / CLDATA4(cl4, '1')) -
                         sum(cl4$mapCSL4(cl4,n), cleq42d(cl4,s,t) / CLDATA4(cl4, '1')) + sum(cl4$mapCRL4(cl4,n), cleq42d(cl4,s,t) / CLDATA4(cl4, '1')) +
                         sum(cl5$mapCSL5(cl5,n), cleq51d(cl5,s,t) / CLDATA5(cl5, '1')) - sum(cl5$mapCRL5(cl5,n), cleq51d(cl5,s,t) / CLDATA5(cl5, '1')) -
                         sum(cl5$mapCSL5(cl5,n), cleq52d(cl5,s,t) / CLDATA5(cl5, '1')) + sum(cl5$mapCRL5(cl5,n), cleq52d(cl5,s,t) / CLDATA5(cl5, '1')) =e= 0;

rdual(d,s,t)..             sum(n$mapD(d,n), pi(n,s,t)) - sum(n$mapD(d,n), zeta(n,s,t)) =l= PC;

bigMel11(el,s,t)..              eleq1dM(el,s,t) =l= eleq1d(el,s,t) + M * (1-AEL(el,t));
bigMel12(el,s,t)..              eleq1dM(el,s,t) =g= eleq1d(el,s,t) - M * (1-AEL(el,t));
bigMel13(el,s,t)..              eleq1dM(el,s,t) =l= M * AEL(el,t);
bigMel14(el,s,t)..              eleq1dM(el,s,t) =g= - M * AEL(el,t);
bigMel21(el,s,t)..              eleq2dM(el,s,t) =l= eleq2d(el,s,t) + M * (1-AEL(el,t));
bigMel22(el,s,t)..              eleq2dM(el,s,t) =g= eleq2d(el,s,t) - M * (1-AEL(el,t));
bigMel23(el,s,t)..              eleq2dM(el,s,t) =l= M * AEL(el,t);
bigMel24(el,s,t)..              eleq2dM(el,s,t) =g= - M * AEL(el,t);

bigMel31(el,s,t)..              ellim1dM(el,s,t) =l= ellim1d(el,s,t) + M * AEL(el,t);
bigMel32(el,s,t)..              ellim1dM(el,s,t) =g= ellim1d(el,s,t) - M * AEL(el,t);
bigMel33(el,s,t)..              ellim1dM(el,s,t) =l= M * (1-AEL(el,t));
bigMel34(el,s,t)..              ellim1dM(el,s,t) =g= - M * (1-AEL(el,t));
bigMel41(el,s,t)..              ellim2dM(el,s,t) =l= ellim2d(el,s,t) + M * AEL(el,t);
bigMel42(el,s,t)..              ellim2dM(el,s,t) =g= ellim2d(el,s,t) - M * AEL(el,t);
bigMel43(el,s,t)..              ellim2dM(el,s,t) =l= M * (1-AEL(el,t));
bigMel44(el,s,t)..              ellim2dM(el,s,t) =g= - M * (1-AEL(el,t));

bigMeg11(eg,s,t)..              eglim1dM(eg,s,t) =l= eglim1d(eg,s,t) + M * AEG(eg,t);
bigMeg12(eg,s,t)..              eglim1dM(eg,s,t) =g= eglim1d(eg,s,t) - M * AEG(eg,t);
bigMeg13(eg,s,t)..              eglim1dM(eg,s,t) =l= M * (1-AEG(eg,t));
bigMeg14(eg,s,t)..              eglim1dM(eg,s,t) =g= - M * (1-AEG(eg,t));
bigMeg21(eg,s,t)..              eglim2dM(eg,s,t) =l= eglim2d(eg,s,t) + M * AEG(eg,t);
bigMeg22(eg,s,t)..              eglim2dM(eg,s,t) =g= eglim2d(eg,s,t) - M * AEG(eg,t);
bigMeg23(eg,s,t)..              eglim2dM(eg,s,t) =l= M * (1-AEG(eg,t));
bigMeg24(eg,s,t)..              eglim2dM(eg,s,t) =g= - M * (1-AEG(eg,t));

bigMcl11(cl1,s,t)..              cleq11dM(cl1,s,t) =l= cleq11d(cl1,s,t) + M * exl1(cl1,t);
bigMcl12(cl1,s,t)..              cleq11dM(cl1,s,t) =g= cleq11d(cl1,s,t) - M * exl1(cl1,t);
bigMcl13(cl1,s,t)..              cleq11dM(cl1,s,t) =l= M * (1-exl1(cl1,t));
bigMcl14(cl1,s,t)..              cleq11dM(cl1,s,t) =g= - M * (1-exl1(cl1,t));
bigMcl21(cl1,s,t)..              cleq12dM(cl1,s,t) =l= cleq12d(cl1,s,t) + M * exl1(cl1,t);
bigMcl22(cl1,s,t)..              cleq12dM(cl1,s,t) =g= cleq12d(cl1,s,t) - M * exl1(cl1,t);
bigMcl23(cl1,s,t)..              cleq12dM(cl1,s,t) =l= M * (1-exl1(cl1,t));
bigMcl24(cl1,s,t)..              cleq12dM(cl1,s,t) =g= - M * (1-exl1(cl1,t));
bigMcl31(cl2,s,t)..              cleq21dM(cl2,s,t) =l= cleq21d(cl2,s,t) + M * exl2(cl2,t);
bigMcl32(cl2,s,t)..              cleq21dM(cl2,s,t) =g= cleq21d(cl2,s,t) - M * exl2(cl2,t);
bigMcl33(cl2,s,t)..              cleq21dM(cl2,s,t) =l= M * (1-exl2(cl2,t));
bigMcl34(cl2,s,t)..              cleq21dM(cl2,s,t) =g= - M * (1-exl2(cl2,t));
bigMcl41(cl2,s,t)..              cleq22dM(cl2,s,t) =l= cleq22d(cl2,s,t) + M * exl2(cl2,t);
bigMcl42(cl2,s,t)..              cleq22dM(cl2,s,t) =g= cleq22d(cl2,s,t) - M * exl2(cl2,t);
bigMcl43(cl2,s,t)..              cleq22dM(cl2,s,t) =l= M * (1-exl2(cl2,t));
bigMcl44(cl2,s,t)..              cleq22dM(cl2,s,t) =g= - M * (1-exl2(cl2,t));
bigMcl51(cl3,s,t)..              cleq31dM(cl3,s,t) =l= cleq31d(cl3,s,t) + M * exl3(cl3,t);
bigMcl52(cl3,s,t)..              cleq31dM(cl3,s,t) =g= cleq31d(cl3,s,t) - M * exl3(cl3,t);
bigMcl53(cl3,s,t)..              cleq31dM(cl3,s,t) =l= M * (1-exl3(cl3,t));
bigMcl54(cl3,s,t)..              cleq31dM(cl3,s,t) =g= - M * (1-exl3(cl3,t));
bigMcl61(cl3,s,t)..              cleq32dM(cl3,s,t) =l= cleq32d(cl3,s,t) + M * exl3(cl3,t);
bigMcl62(cl3,s,t)..              cleq32dM(cl3,s,t) =g= cleq32d(cl3,s,t) - M * exl3(cl3,t);
bigMcl63(cl3,s,t)..              cleq32dM(cl3,s,t) =l= M * (1-exl3(cl3,t));
bigMcl64(cl3,s,t)..              cleq32dM(cl3,s,t) =g= - M * (1-exl3(cl3,t));
bigMcl71(cl4,s,t)..              cleq41dM(cl4,s,t) =l= cleq41d(cl4,s,t) + M * exl4(cl4,t);
bigMcl72(cl4,s,t)..              cleq41dM(cl4,s,t) =g= cleq41d(cl4,s,t) - M * exl4(cl4,t);
bigMcl73(cl4,s,t)..              cleq41dM(cl4,s,t) =l= M * (1-exl4(cl4,t));
bigMcl74(cl4,s,t)..              cleq41dM(cl4,s,t) =g= - M * (1-exl4(cl4,t));
bigMcl81(cl4,s,t)..              cleq42dM(cl4,s,t) =l= cleq42d(cl4,s,t) + M * exl4(cl4,t);
bigMcl82(cl4,s,t)..              cleq42dM(cl4,s,t) =g= cleq42d(cl4,s,t) - M * exl4(cl4,t);
bigMcl83(cl4,s,t)..              cleq42dM(cl4,s,t) =l= M * (1-exl4(cl4,t));
bigMcl84(cl4,s,t)..              cleq42dM(cl4,s,t) =g= - M * (1-exl4(cl4,t));
bigMcl91(cl5,s,t)..              cleq51dM(cl5,s,t) =l= cleq51d(cl5,s,t) + M * exl5(cl5,t);
bigMcl92(cl5,s,t)..              cleq51dM(cl5,s,t) =g= cleq51d(cl5,s,t) - M * exl5(cl5,t);
bigMcl93(cl5,s,t)..              cleq51dM(cl5,s,t) =l= M * (1-exl5(cl5,t));
bigMcl94(cl5,s,t)..              cleq51dM(cl5,s,t) =g= - M * (1-exl5(cl5,t));
bigMcl01(cl5,s,t)..              cleq52dM(cl5,s,t) =l= cleq52d(cl5,s,t) + M * exl5(cl5,t);
bigMcl02(cl5,s,t)..              cleq52dM(cl5,s,t) =g= cleq52d(cl5,s,t) - M * exl5(cl5,t);
bigMcl03(cl5,s,t)..              cleq52dM(cl5,s,t) =l= M * (1-exl5(cl5,t));
bigMcl04(cl5,s,t)..              cleq52dM(cl5,s,t) =g= - M * (1-exl5(cl5,t));

bigMcl112(cl1,s,t)..              cllim11dM(cl1,s,t) =l= cllim11d(cl1,s,t) + M * (1-exl1(cl1,t));
bigMcl122(cl1,s,t)..              cllim11dM(cl1,s,t) =g= cllim11d(cl1,s,t) - M * (1-exl1(cl1,t));
bigMcl132(cl1,s,t)..              cllim11dM(cl1,s,t) =l= M * exl1(cl1,t);
bigMcl142(cl1,s,t)..              cllim11dM(cl1,s,t) =g= - M * exl1(cl1,t);
bigMcl212(cl1,s,t)..              cllim12dM(cl1,s,t) =l= cllim12d(cl1,s,t) + M * (1-exl1(cl1,t));
bigMcl222(cl1,s,t)..              cllim12dM(cl1,s,t) =g= cllim12d(cl1,s,t) - M * (1-exl1(cl1,t));
bigMcl232(cl1,s,t)..              cllim12dM(cl1,s,t) =l= M * exl1(cl1,t);
bigMcl242(cl1,s,t)..              cllim12dM(cl1,s,t) =g= - M * exl1(cl1,t);
bigMcl312(cl2,s,t)..              cllim21dM(cl2,s,t) =l= cllim21d(cl2,s,t) + M * (1-exl2(cl2,t));
bigMcl322(cl2,s,t)..              cllim21dM(cl2,s,t) =g= cllim21d(cl2,s,t) - M * (1-exl2(cl2,t));
bigMcl332(cl2,s,t)..              cllim21dM(cl2,s,t) =l= M * exl2(cl2,t);
bigMcl342(cl2,s,t)..              cllim21dM(cl2,s,t) =g= - M * exl2(cl2,t);
bigMcl412(cl2,s,t)..              cllim22dM(cl2,s,t) =l= cllim22d(cl2,s,t) + M * (1-exl2(cl2,t));
bigMcl422(cl2,s,t)..              cllim22dM(cl2,s,t) =g= cllim22d(cl2,s,t) - M * (1-exl2(cl2,t));
bigMcl432(cl2,s,t)..              cllim22dM(cl2,s,t) =l= M * exl2(cl2,t);
bigMcl442(cl2,s,t)..              cllim22dM(cl2,s,t) =g= - M * exl2(cl2,t);
bigMcl512(cl3,s,t)..              cllim31dM(cl3,s,t) =l= cllim31d(cl3,s,t) + M * (1-exl3(cl3,t));
bigMcl522(cl3,s,t)..              cllim31dM(cl3,s,t) =g= cllim31d(cl3,s,t) - M * (1-exl3(cl3,t));
bigMcl532(cl3,s,t)..              cllim31dM(cl3,s,t) =l= M * exl3(cl3,t);
bigMcl542(cl3,s,t)..              cllim31dM(cl3,s,t) =g= - M * exl3(cl3,t);
bigMcl612(cl3,s,t)..              cllim32dM(cl3,s,t) =l= cllim32d(cl3,s,t) + M * (1-exl3(cl3,t));
bigMcl622(cl3,s,t)..              cllim32dM(cl3,s,t) =g= cllim32d(cl3,s,t) - M * (1-exl3(cl3,t));
bigMcl632(cl3,s,t)..              cllim32dM(cl3,s,t) =l= M * exl3(cl3,t);
bigMcl642(cl3,s,t)..              cllim32dM(cl3,s,t) =g= - M * exl3(cl3,t);
bigMcl712(cl4,s,t)..              cllim41dM(cl4,s,t) =l= cllim41d(cl4,s,t) + M * (1-exl4(cl4,t));
bigMcl722(cl4,s,t)..              cllim41dM(cl4,s,t) =g= cllim41d(cl4,s,t) - M * (1-exl4(cl4,t));
bigMcl732(cl4,s,t)..              cllim41dM(cl4,s,t) =l= M * exl4(cl4,t);
bigMcl742(cl4,s,t)..              cllim41dM(cl4,s,t) =g= - M * exl4(cl4,t);
bigMcl812(cl4,s,t)..              cllim42dM(cl4,s,t) =l= cllim42d(cl4,s,t) + M * (1-exl4(cl4,t));
bigMcl822(cl4,s,t)..              cllim42dM(cl4,s,t) =g= cllim42d(cl4,s,t) - M * (1-exl4(cl4,t));
bigMcl832(cl4,s,t)..              cllim42dM(cl4,s,t) =l= M * exl4(cl4,t);
bigMcl842(cl4,s,t)..              cllim42dM(cl4,s,t) =g= - M * exl4(cl4,t);
bigMcl912(cl5,s,t)..              cllim51dM(cl5,s,t) =l= cllim51d(cl5,s,t) + M * (1-exl5(cl5,t));
bigMcl922(cl5,s,t)..              cllim51dM(cl5,s,t) =g= cllim51d(cl5,s,t) - M * (1-exl5(cl5,t));
bigMcl932(cl5,s,t)..              cllim51dM(cl5,s,t) =l= M * exl5(cl5,t);
bigMcl942(cl5,s,t)..              cllim51dM(cl5,s,t) =g= - M * exl5(cl5,t);
bigMcl012(cl5,s,t)..              cllim52dM(cl5,s,t) =l= cllim52d(cl5,s,t) + M * (1-exl5(cl5,t));
bigMcl022(cl5,s,t)..              cllim52dM(cl5,s,t) =g= cllim52d(cl5,s,t) - M * (1-exl5(cl5,t));
bigMcl032(cl5,s,t)..              cllim52dM(cl5,s,t) =l= M * exl5(cl5,t);
bigMcl042(cl5,s,t)..              cllim52dM(cl5,s,t) =g= - M * exl5(cl5,t);

bigMcg11(cg1,s,t)..              cglim11dM(cg1,s,t) =l= cglim11d(cg1,s,t) + M * (1-exg1(cg1,t));
bigMcg12(cg1,s,t)..              cglim11dM(cg1,s,t) =g= cglim11d(cg1,s,t) - M * (1-exg1(cg1,t));
bigMcg13(cg1,s,t)..              cglim11dM(cg1,s,t) =l= M * exg1(cg1,t);
bigMcg14(cg1,s,t)..              cglim11dM(cg1,s,t) =g= - M * exg1(cg1,t);
bigMcg21(cg1,s,t)..              cglim12dM(cg1,s,t) =l= cglim12d(cg1,s,t) + M * (1-exg1(cg1,t));
bigMcg22(cg1,s,t)..              cglim12dM(cg1,s,t) =g= cglim12d(cg1,s,t) - M * (1-exg1(cg1,t));
bigMcg23(cg1,s,t)..              cglim12dM(cg1,s,t) =l= M * exg1(cg1,t);
bigMcg24(cg1,s,t)..              cglim12dM(cg1,s,t) =g= - M * exg1(cg1,t);
bigMcg31(cg2,s,t)..              cglim21dM(cg2,s,t) =l= cglim21d(cg2,s,t) + M * (1-exg2(cg2,t));
bigMcg32(cg2,s,t)..              cglim21dM(cg2,s,t) =g= cglim21d(cg2,s,t) - M * (1-exg2(cg2,t));
bigMcg33(cg2,s,t)..              cglim21dM(cg2,s,t) =l= M * exg2(cg2,t);
bigMcg34(cg2,s,t)..              cglim21dM(cg2,s,t) =g= - M * exg2(cg2,t);
bigMcg41(cg2,s,t)..              cglim22dM(cg2,s,t) =l= cglim22d(cg2,s,t) + M * (1-exg2(cg2,t));
bigMcg42(cg2,s,t)..              cglim22dM(cg2,s,t) =g= cglim22d(cg2,s,t) - M * (1-exg2(cg2,t));
bigMcg43(cg2,s,t)..              cglim22dM(cg2,s,t) =l= M * exg2(cg2,t);
bigMcg44(cg2,s,t)..              cglim22dM(cg2,s,t) =g= - M * exg2(cg2,t);
bigMcg51(cg3,s,t)..              cglim31dM(cg3,s,t) =l= cglim31d(cg3,s,t) + M * (1-exg3(cg3,t));
bigMcg52(cg3,s,t)..              cglim31dM(cg3,s,t) =g= cglim31d(cg3,s,t) - M * (1-exg3(cg3,t));
bigMcg53(cg3,s,t)..              cglim31dM(cg3,s,t) =l= M * exg3(cg3,t);
bigMcg54(cg3,s,t)..              cglim31dM(cg3,s,t) =g= - M * exg3(cg3,t);
bigMcg61(cg3,s,t)..              cglim32dM(cg3,s,t) =l= cglim32d(cg3,s,t) + M * (1-exg3(cg3,t));
bigMcg62(cg3,s,t)..              cglim32dM(cg3,s,t) =g= cglim32d(cg3,s,t) - M * (1-exg3(cg3,t));
bigMcg63(cg3,s,t)..              cglim32dM(cg3,s,t) =l= M * exg3(cg3,t);
bigMcg64(cg3,s,t)..              cglim32dM(cg3,s,t) =g= - M * exg3(cg3,t);
bigMcg71(cg4,s,t)..              cglim41dM(cg4,s,t) =l= cglim41d(cg4,s,t) + M * (1-exg4(cg4,t));
bigMcg72(cg4,s,t)..              cglim41dM(cg4,s,t) =g= cglim41d(cg4,s,t) - M * (1-exg4(cg4,t));
bigMcg73(cg4,s,t)..              cglim41dM(cg4,s,t) =l= M * exg4(cg4,t);
bigMcg74(cg4,s,t)..              cglim41dM(cg4,s,t) =g= - M * exg4(cg4,t);
bigMcg81(cg4,s,t)..              cglim42dM(cg4,s,t) =l= cglim42d(cg4,s,t) + M * (1-exg4(cg4,t));
bigMcg82(cg4,s,t)..              cglim42dM(cg4,s,t) =g= cglim42d(cg4,s,t) - M * (1-exg4(cg4,t));
bigMcg83(cg4,s,t)..              cglim42dM(cg4,s,t) =l= M * exg4(cg4,t);
bigMcg84(cg4,s,t)..              cglim42dM(cg4,s,t) =g= - M * exg4(cg4,t);
bigMcg91(cg5,s,t)..              cglim51dM(cg5,s,t) =l= cglim51d(cg5,s,t) + M * (1-exg5(cg5,t));
bigMcg92(cg5,s,t)..              cglim51dM(cg5,s,t) =g= cglim51d(cg5,s,t) - M * (1-exg5(cg5,t));
bigMcg93(cg5,s,t)..              cglim51dM(cg5,s,t) =l= M * exg5(cg5,t);
bigMcg94(cg5,s,t)..              cglim51dM(cg5,s,t) =g= - M * exg5(cg5,t);
bigMcg01(cg5,s,t)..              cglim52dM(cg5,s,t) =l= cglim52d(cg5,s,t) + M * (1-exg5(cg5,t));
bigMcg02(cg5,s,t)..              cglim52dM(cg5,s,t) =g= cglim52d(cg5,s,t) - M * (1-exg5(cg5,t));
bigMcg03(cg5,s,t)..              cglim52dM(cg5,s,t) =l= M * exg5(cg5,t);
bigMcg04(cg5,s,t)..              cglim52dM(cg5,s,t) =g= - M * exg5(cg5,t);

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
                            =e= sum(d$mapD(d,n), DDATAp(d) * 1.2 * ord(t));

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

                 solve dualsp use mip min subdual;

                 UBm(itera) = - subdual.l + sum(cl1, CLDATA1(cl1, '5') * xl1m(cl1)) + sum(cg1, CGDATA1(cg1, 'OC') * xg1m(cg1))
                         + sum(cl2, CLDATA2(cl2, '5') * xl2m(cl2)) + sum(cg2, CGDATA2(cg2, 'OC') * xg2m(cg2))
                         + sum(cl3, CLDATA3(cl3, '5') * xl3m(cl3)) + sum(cg3, CGDATA3(cg3, 'OC') * xg3m(cg3))
                         + sum(cl4, CLDATA4(cl4, '5') * xl4m(cl4)) + sum(cg4, CGDATA4(cg4, 'OC') * xg4m(cg4))
                         + sum(cl5, CLDATA5(cl5, '5') * xl5m(cl5)) + sum(cg5, CGDATA5(cg5, 'OC') * xg5m(cg5));

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

                 UBm(itera) = - subdual.l + sum(cl1, CLDATA1(cl1, '5') * xl1m(cl1)) + sum(cg1, CGDATA1(cg1, 'OC') * xg1m(cg1))
                         + sum(cl2, CLDATA2(cl2, '5') * xl2m(cl2)) + sum(cg2, CGDATA2(cg2, 'OC') * xg2m(cg2))
                         + sum(cl3, CLDATA3(cl3, '5') * xl3m(cl3)) + sum(cg3, CGDATA3(cg3, 'OC') * xg3m(cg3))
                         + sum(cl4, CLDATA4(cl4, '5') * xl4m(cl4)) + sum(cg4, CGDATA4(cg4, 'OC') * xg4m(cg4))
                         + sum(cl5, CLDATA5(cl5, '5') * xl5m(cl5)) + sum(cg5, CGDATA5(cg5, 'OC') * xg5m(cg5));

                 UB(itera) = min(UB(itera-1), UBm(itera));

                 break$((abs(UB(itera)-LB(itera))/UB(itera)) <= epsilon);
*                 break$( ((UB(itera-1) - LB(itera-1) - UB(itera) + LB(itera)) / (UB(itera) - LB(itera)) <= epsilon));

                 AELm(el, t, itera+1) = AEL.l(el,t);
                 ACL1m(cl1, t, itera+1) = ACL1.l(cl1,t); ACL2m(cl2, t, itera+1) = ACL2.l(cl2,t); ACL3m(cl3, t, itera+1) = ACL3.l(cl3,t); ACL4m(cl4, t, itera+1) = ACL4.l(cl4,t); ACL5m(cl5, t, itera+1) = ACL5.l(cl5,t);
                 AEGm(eg, t, itera+1) = AEG.l(eg,t);
                 ACG1m(cg1, t, itera+1) = ACG1.l(cg1,t); ACG2m(cg2, t, itera+1) = ACG2.l(cg2,t); ACG3m(cg3, t, itera+1) = ACG3.l(cg3,t); ACG4m(cg4, t, itera+1) = ACG4.l(cg4,t); ACG5m(cg5, t, itera+1) = ACG5.l(cg5,t);
         );
);

display dec_g1, dec_g2, dec_g3, dec_g4, dec_g5, dec_l1, dec_l2, dec_l3, dec_l4, dec_l5, LB, UB, UBm;