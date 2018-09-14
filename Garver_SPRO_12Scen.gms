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
         ref(n)  Reference Bus   /n1/
         s       /s1*s10/;

Table    CLDATA(cl, *)   Candidate Trans. Lines Data
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

Table    ELDATA(el, *)   Existing Trans. Lines Data
         X       FLmax
l1       0.40    100
l2       0.60    80
l3       0.20    100
l4       0.20    100
l5       0.40    100
l6       0.20    100
;

Table    CGDATA(cg, *)   Candidate Generator Data
         Pmax    IC            OC
g4       1200    50000         55
g5       1200    50000         55
g6       1200    50000         55
g7       1200    50000         55
g8       1200    50000         55
g9       1200    50000         55
;

Table    EGDATA(eg, *)   Existing Generator Data
         Pmax    IC      OC
g1       50      0       67
g2       165     0       120
g3       545     0       210
;

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

Parameter        DDATAp(d)/
         d1      80
         d2      240
         d3      40
         d4      160
         d5      240
/;

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


Scalar PC  Penalty Cost  /1000/;

Set iter /1*50/;

Set cutset(iter) dynamic set;
cutset(iter) = no;

Set itera /1*50/;

Set rowset(itera) dynamic set;
rowset(itera) = no;

*****************************************************
Variables
         obj0     Objective Value;

Scalar
         M       big M value     /10000/

Binary Variables
         xg(cg)   Decisions for candidate generator g
         xl(cl)   Decisions for candidate line l
         AEG(eg), AEL(el), ACL(cl), ACG(cg),
         z1(cl), z2(cg);

Equations
         objective0
         xglim
         xllim;

objective0..    obj0 =e= sum(cl, CLDATA(cl, 'IC') /10 * xl(cl)) + sum(cg, CGDATA(cg, 'IC') /10 * xg(cg));
xglim..         sum(cg, xg(cg)) =l= 5;
xllim..         sum(cl, CLDATA(cl, 'IC') /10 * xl(cl)) =l= 3000;

Model Master0 / objective0, xglim, xllim /  ;


Parameters
         decisionl(cl, iter)    decision for candidate line l
         decisiong(cg, iter)    decision for candidate generator g;

Parameters        dec_g(cg, itera), dec_l(cl, itera), decision_g(cg), decision_l(cl);

*** Feasibility Subproblem Modeling ***

Free Variable
         objf        feasibility objective
         ef(el)           Line flow in line l
         cf(cl)
         theta(n)    Bus angle of bus n;

Positive Variable
         r(d)     load violation values
         ep(eg)     Generation of Generator g
         cp(cg);

Equations
         objectivef    feasibility obejctive,
         Deq      demand violation inequality,
         Lineq_e    DC power flow equation,
         Llim1    negative line limit,
         Llim2    positive line limit,
         Llim3  negative candidate line limit,
         Llim4  positive candidate line limit,
         Ldefcl1    candidate line definition left hand side,
         Ldefcl2    candidate line definition right hand side,
         genlim1_1  generation limits for existing generators,
         genlim1_2  generation limits for existing generators,
         genlim2_1  generation limits for candidate generators,
         genlim2_2  generation limits for candidate generators,
         lslim      load shedding limit;

objectivef..             objf =e= sum(d, r(d));

Deq(n)..                 sum(cg$mapCG(cg,n), cp(cg)) + sum(eg$mapEG(eg,n), ep(eg)) -
                         sum(cl$mapCSL(cl,n), cf(cl)) + sum(cl$mapCRL(cl,n), cf(cl)) -
                         sum(el$mapESL(el,n), ef(el)) + sum(el$mapERL(el,n), ef(el)) + sum(d$mapD(d,n), r(d))
                         =e= sum(d$mapD(d,n), DDATAp(d));

Lineq_e(el)..             ef(el) =e= (sum(n$mapESL(el,n), theta(n)) -
                         sum(n$mapERL(el,n), theta(n))) / ELDATA(el, 'X');

Llim1(el)..              -ELDATA(el, 'FLmax') =l= ef(el);
Llim2(el)..              ef(el) =l= ELDATA(el, 'FLmax');

Llim3(cl)..              -xl.l(cl) * CLDATA(cl, 'FLmax') =l= cf(cl);
Llim4(cl)..              cf(cl) =l= xl.l(cl) * CLDATA(cl, 'FLmax');

Ldefcl1(cl)..            -(1-xl.l(cl)) * M =l= cf(cl) - (sum(n$mapCSL(cl,n), theta(n))
                         - sum(n$mapCRL(cl,n), theta(n))) / CLDATA(cl, 'X');
Ldefcl2(cl)..            cf(cl) - (sum(n$mapCSL(cl,n), theta(n)) -
                         sum(n$mapCRL(cl,n), theta(n))) / CLDATA(cl, 'X')
                         =l= (1-xl.l(cl)) * M;

genlim1_1(eg)..          ep(eg) =l= EGDATA(eg, 'Pmax');
genlim1_2(eg)..          ep(eg) =g= EGDATA(eg, 'Pmin');
genlim2_1(cg)..          cp(cg) =l= xg.l(cg) * CGDATA(cg, 'Pmax');
genlim2_2(cg)..          cp(cg) =g= xg.l(cg) * CGDATA(cg, 'Pmin');

lslim(n)..               sum(d$mapD(d,n), r(d)) =l= sum(d$mapD(d,n), DDATAp(d));

model feasub /objectivef, Deq, Lineq_e, Llim1, Llim2, Llim3, Llim4,
              Ldefcl1, Ldefcl2, genlim1_1, genlim1_2, genlim2_1, genlim2_2, lslim/;

*** Revisited Master Problem with Benders Cut Modeling ***

Parameter  alpha_upper(cl, iter)  candidate line capacity equation upper dual;

Parameter  alpha_lower(cl, iter)  candidate line capacity equation lower dual;

Parameter  beta_upper(cl, iter)  candidate line definition equation upper dual;

Parameter  beta_lower(cl, iter)  candidate line definition equation lower dual;

Parameter gamma_upper(cg, iter)  candidate generator capacity equation upper dual;

Parameter gamma_lower(cg, iter)  candidate generator capacity equation lower dual;

Parameter Vio(iter);

Equation
         bendersf(iter)        benders feasibility cut;

bendersf(cutset)..       Vio(cutset) + sum(cg, gamma_upper(cg, cutset) * CGDATA(cg, 'Pmax') * (xg(cg)
                          - decisiong(cg, cutset)) - gamma_lower(cg, cutset) * CGDATA(cg, 'Pmin') * (xg(cg) -
                         decisiong(cg, cutset))) + sum(cl, (alpha_upper(cl, cutset) +
                         alpha_lower(cl, cutset)) * CLDATA(cl, 'FLmax') * (xl(cl) - decisionl(cl, cutset))
                          - (beta_upper(cl, cutset) + beta_lower(cl, cutset)) * M * (xl(cl) -
                         decisionl(cl, cutset))) =l= 0;

Model Master0_f / objective0, xglim, xllim, bendersf /;





*********************** Subproblem *******************************

Positive Variables
                 kai1_m(el,s), kai1_p(el,s), kai2_m(cl,s), kai2_p(cl,s),
                 sigma1_m(el,s), sigma1_p(el,s), sigma2_m(cl,s), sigma2_p(cl,s),
                 gamma1_m(eg,s), gamma1_p(eg,s), gamma2_m(cg,s), gamma2_p(cg,s),
                 kai1M_m(el,s), kai1M_p(el,s), kai2M_m(cl,s), kai2M_p(cl,s),
                 sigma1M_m(el,s), sigma1M_p(el,s), sigma2M_m(cl,s), sigma2M_p(cl,s),
                 gamma1M_m(eg,s), gamma1M_p(eg,s), gamma2M_m(cg,s), gamma2M_p(cg,s), zeta(n,s);

Free Variable
                 pi(n,s), subdual;

Binary Variables
                 ACG(cg), AEG(eg), ACL(cl), AEL(el);

Equations
         subobj,
         uncertainty1, uncertainty2, uncertainty3, uncertainty4,
         peg, pcg,
         fel, fcl,
         thetan, rdual,
         bigM11, bigM12, bigM13, bigM14, bigM21, bigM22, bigM23, bigM24, bigM31, bigM32, bigM33, bigM34, bigM41, bigM42, bigM43, bigM44,
         bigM51, bigM52, bigM53, bigM54, bigM61, bigM62, bigM63, bigM64, bigM71, bigM72, bigM73, bigM74, bigM81, bigM82, bigM83, bigM84,
         bigM91, bigM92, bigM93, bigM94, bigM101, bigM102, bigM103, bigM104, bigM111, bigM112, bigM113, bigM114,
         bigM121, bigM122, bigM123, bigM124;

subobj..                 subdual =e= - sum(s, prob(s) * (sum(n, sum(d$mapD(d,n), DDATA(d,s)) * pi(n,s)) -
                         sum(el, M * kai1M_m(el,s)) -
                         sum(el, M * kai1M_p(el,s)) -
                         sum(cl, M * (kai2_m(cl,s) - kai2_m(cl,s) * decision_l(cl) + kai2M_m(cl,s) * decision_l(cl))) -
                         sum(cl, M * (kai2_p(cl,s) - kai2_p(cl,s) * decision_l(cl) + kai2M_p(cl,s) * decision_l(cl))) -
                         sum(el, ELDATA(el, 'FLmax') * sigma1M_m(el,s)) -
                         sum(el, ELDATA(el, 'FLmax') * sigma1M_p(el,s)) -
                         sum(cl, CLDATA(cl, 'FLmax') * decision_l(cl) * sigma2M_m(cl,s)) -
                         sum(cl, CLDATA(cl, 'FLmax') * decision_l(cl) * sigma2M_p(cl,s)) -
                         sum(eg, EGDATA(eg, 'Pmax') * gamma1M_p(eg,s)) +
                         sum(eg, EGDATA(eg, 'Pmin') * gamma1M_m(eg,s)) -
                         sum(cg, CGDATA(cg, 'Pmax') * decision_g(cg) * gamma2M_p(cg,s)) +
                         sum(cg, CGDATA(cg, 'Pmin') * decision_g(cg) * gamma2M_m(cg,s)) - sum(n, sum(d$mapD(d,n), DDATA(d,s)) * zeta(n,s))));

uncertainty1..           sum(eg, AEG(eg)) + sum(cg, ACG(cg)) =l= 1;
uncertainty2..           sum(el, AEL(el)) + sum(cl, ACL(cl)) =l= 1;
uncertainty3(cl)..           ACL(cl) =l= decision_l(cl);
uncertainty4(cg)..           ACG(cg) =l= decision_g(cg);

peg(eg,s)..                - gamma1_p(eg,s) + gamma1_m(eg,s) + sum(n$mapEG(eg,n), pi(n,s)) =l= EGDATA(eg, 'OC');
pcg(cg,s)..                - gamma2_p(cg,s) + gamma2_m(cg,s) + sum(n$mapCG(cg,n), pi(n,s)) =l= CGDATA(cg, 'OC');

fel(el,s)..                kai1_m(el,s) - kai1_p(el,s) + sigma1_m(el,s) - sigma1_p(el,s) + sum(n$mapERL(el,n), pi(n,s)) - sum(n$mapESL(el,n), pi(n,s)) =e= 0;
fcl(cl,s)..                kai2_m(cl,s) - kai2_p(cl,s) + sigma2_m(cl,s) - sigma2_p(cl,s) + sum(n$mapCRL(cl,n), pi(n,s)) - sum(n$mapCSL(cl,n), pi(n,s)) =e= 0;

thetan(n,s)..            sum(el$mapESL(el,n), - kai1_m(el,s) / ELDATA(el, 'X')) + sum(el$mapERL(el,n), kai1_m(el,s) / ELDATA(el, 'X')) +
                         sum(el$mapESL(el,n), kai1_p(el,s) / ELDATA(el, 'X')) - sum(el$mapERL(el,n), kai1_p(el,s) / ELDATA(el, 'X')) -
                         sum(cl$mapCSL(cl,n), kai2_m(cl,s) / CLDATA(cl, 'X')) + sum(cl$mapCRL(cl,n), kai2_m(cl,s) / CLDATA(cl, 'X')) +
                         sum(cl$mapCSL(cl,n), kai2_p(cl,s) / CLDATA(cl, 'X')) - sum(cl$mapCRL(cl,n), kai2_p(cl,s) / CLDATA(cl, 'X')) =e= 0;

rdual(d,s)..               sum(n$mapD(d,n), pi(n,s)) - sum(n$mapD(d,n), zeta(n,s)) =l= PC;

bigM11(el,s)..              kai1M_m(el,s) =l= kai1_m(el,s) + M * (1-AEL(el));
bigM12(el,s)..              kai1M_m(el,s) =g= kai1_m(el,s) - M * (1-AEL(el));
bigM13(el,s)..              kai1M_m(el,s) =l= M * AEL(el);
bigM14(el,s)..              kai1M_m(el,s) =g= - M * AEL(el);
bigM21(el,s)..              kai1M_p(el,s) =l= kai1_p(el,s) + M * (1-AEL(el));
bigM22(el,s)..              kai1M_p(el,s) =g= kai1_p(el,s) - M * (1-AEL(el));
bigM23(el,s)..              kai1M_p(el,s) =l= M * AEL(el);
bigM24(el,s)..              kai1M_p(el,s) =g= - M * AEL(el);
bigM31(cl,s)..              kai2M_m(cl,s) =l= kai2_m(cl,s) + M * (1-ACL(cl));
bigM32(cl,s)..              kai2M_m(cl,s) =g= kai2_m(cl,s) - M * (1-ACL(cl));
bigM33(cl,s)..              kai2M_m(cl,s) =l= M * ACL(cl);
bigM34(cl,s)..              kai2M_m(cl,s) =g= - M * ACL(cl);
bigM41(cl,s)..              kai2M_p(cl,s) =l= kai2_p(cl,s) + M * (1-ACL(cl));
bigM42(cl,s)..              kai2M_p(cl,s) =g= kai2_p(cl,s) - M * (1-ACL(cl));
bigM43(cl,s)..              kai2M_p(cl,s) =l= M * ACL(cl);
bigM44(cl,s)..              kai2M_p(cl,s) =g= - M * ACL(cl);

bigM51(el,s)..              sigma1M_m(el,s) =l= sigma1_m(el,s) + M * AEL(el);
bigM52(el,s)..              sigma1M_m(el,s) =g= sigma1_m(el,s) - M * AEL(el);
bigM53(el,s)..              sigma1M_m(el,s) =l= M * (1-AEL(el));
bigM54(el,s)..              sigma1M_m(el,s) =g= - M * (1-AEL(el));
bigM61(el,s)..              sigma1M_p(el,s) =l= sigma1_p(el,s) + M * AEL(el);
bigM62(el,s)..              sigma1M_p(el,s) =g= sigma1_p(el,s) - M * AEL(el);
bigM63(el,s)..              sigma1M_p(el,s) =l= M * (1-AEL(el));
bigM64(el,s)..              sigma1M_p(el,s) =g= - M * (1-AEL(el));
bigM71(cl,s)..              sigma2M_m(cl,s) =l= sigma2_m(cl,s) + M * ACL(cl);
bigM72(cl,s)..              sigma2M_m(cl,s) =g= sigma2_m(cl,s) - M * ACL(cl);
bigM73(cl,s)..              sigma2M_m(cl,s) =l= M * (1-ACL(cl));
bigM74(cl,s)..              sigma2M_m(cl,s) =g= - M * (1-ACL(cl));
bigM81(cl,s)..              sigma2M_p(cl,s) =l= sigma2_p(cl,s) + M * ACL(cl);
bigM82(cl,s)..              sigma2M_p(cl,s) =g= sigma2_p(cl,s) - M * ACL(cl);
bigM83(cl,s)..              sigma2M_p(cl,s) =l= M * (1-ACL(cl));
bigM84(cl,s)..              sigma2M_p(cl,s) =g= - M * (1-ACL(cl));

bigM91(eg,s)..              gamma1M_m(eg,s) =l= gamma1_m(eg,s) + M * AEG(eg);
bigM92(eg,s)..              gamma1M_m(eg,s) =g= gamma1_m(eg,s) - M * AEG(eg);
bigM93(eg,s)..              gamma1M_m(eg,s) =l= M * (1-AEG(eg));
bigM94(eg,s)..              gamma1M_m(eg,s) =g= - M * (1-AEG(eg));
bigM101(eg,s)..             gamma1M_p(eg,s) =l= gamma1_p(eg,s) + M * AEG(eg);
bigM102(eg,s)..             gamma1M_p(eg,s) =g= gamma1_p(eg,s) - M * AEG(eg);
bigM103(eg,s)..             gamma1M_p(eg,s) =l= M * (1-AEG(eg));
bigM104(eg,s)..             gamma1M_p(eg,s) =g= - M * (1-AEG(eg));
bigM111(cg,s)..             gamma2M_m(cg,s) =l= gamma2_m(cg,s) + M * ACG(cg);
bigM112(cg,s)..             gamma2M_m(cg,s) =g= gamma2_m(cg,s) - M * ACG(cg);
bigM113(cg,s)..             gamma2M_m(cg,s) =l= M * (1-ACG(cg));
bigM114(cg,s)..             gamma2M_m(cg,s) =g= - M * (1-ACG(cg));
bigM121(cg,s)..             gamma2M_p(cg,s) =l= gamma2_p(cg,s) + M * ACG(cg);
bigM122(cg,s)..             gamma2M_p(cg,s) =g= gamma2_p(cg,s) - M * ACG(cg);
bigM123(cg,s)..             gamma2M_p(cg,s) =l= M * (1-ACG(cg));
bigM124(cg,s)..             gamma2M_p(cg,s) =g= - M * (1-ACG(cg));

Model dualsp /subobj,
         uncertainty1, uncertainty2, uncertainty3, uncertainty4,
         peg, pcg,
         fel, fcl,
         thetan, rdual,
         bigM11, bigM12, bigM13, bigM14, bigM21, bigM22, bigM23, bigM24, bigM31, bigM32, bigM33, bigM34, bigM41, bigM42, bigM43, bigM44,
         bigM51, bigM52, bigM53, bigM54, bigM61, bigM62, bigM63, bigM64, bigM71, bigM72, bigM73, bigM74, bigM81, bigM82, bigM83, bigM84,
         bigM91, bigM92, bigM93, bigM94, bigM101, bigM102, bigM103, bigM104, bigM111, bigM112, bigM113, bigM114,
         bigM121, bigM122, bigM123, bigM124/;

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
         efm(el, itera)           Line flow in line l
         cfm(cl, itera)
         thetam(n, itera)    Bus angle of bus n;

Positive Variable
         rm(d, itera)     load violation values
         epm(eg, itera)     Generation of Generator g
         cpm(cg, itera),
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
         cglim1, cglim2, lslimm;

variable         remasobj;

Equations
         remasobjj, Lower;

remasobjj..              remasobj =e= sum(cl, CLDATA(cl, 'IC') /10 * xl(cl)) + sum(cg, CGDATA(cg, 'IC') /10 * xg(cg)) + eta;

Lower(rowset)..          eta =g= sum(eg, epm(eg, rowset) * EGDATA(eg, 'OC')) + sum(cg, cpm(cg, rowset) * CGDATA(cg, 'OC')) +
                         sum(d, rm(d, rowset) * PC);

loadbalance(n, rowset).. sum(cg$mapCG(cg,n), cpm(cg, rowset)) + sum(eg$mapEG(eg,n), epm(eg, rowset)) -
                         sum(cl$mapCSL(cl,n), cfm(cl, rowset)) + sum(cl$mapCRL(cl,n), cfm(cl, rowset)) -
                         sum(el$mapESL(el,n), efm(el, rowset)) + sum(el$mapERL(el,n), efm(el, rowset)) + sum(d$mapD(d,n), rm(d, rowset))
                         =e= sum(d$mapD(d,n), DDATAp(d));

eleq1(el, rowset)..              efm(el, rowset) =g= (sum(n$mapESL(el,n), thetam(n, rowset)) -
                                 sum(n$mapERL(el,n), thetam(n, rowset))) / ELDATA(el, 'X') - M * AELm(el, rowset);
eleq2(el, rowset)..              efm(el, rowset) =l= (sum(n$mapESL(el,n), thetam(n, rowset)) -
                                 sum(n$mapERL(el,n), thetam(n, rowset))) / ELDATA(el, 'X') + M * AELm(el, rowset);
ellim1(el, rowset)..             efm(el, rowset) =g= - (1-AELm(el, rowset)) * ELDATA(el, 'FLmax');
ellim2(el, rowset)..             efm(el, rowset) =l= (1-AELm(el, rowset)) * ELDATA(el, 'FLmax');

cleq1(cl, rowset)..              cfm(cl, rowset) =g= (sum(n$mapCSL(cl,n), thetam(n, rowset)) -
                                 sum(n$mapCRL(cl,n), thetam(n, rowset))) / CLDATA(cl, 'X') - M * (1-(1-ACLm(cl, rowset)) * xl(cl));
cleq2(cl, rowset)..              cfm(cl, rowset) =l= (sum(n$mapCSL(cl,n), thetam(n, rowset)) -
                                 sum(n$mapCRL(cl,n), thetam(n, rowset))) / CLDATA(cl, 'X') + M * (1-(1-ACLm(cl, rowset)) * xl(cl));
cllim1(cl, rowset)..             cfm(cl, rowset) =g= - CLDATA(cl, 'FLmax')  * (1-ACLm(cl, rowset)) * xl(cl);
cllim2(cl, rowset)..             cfm(cl, rowset) =l= CLDATA(cl, 'FLmax')  * (1-ACLm(cl, rowset)) * xl(cl);

eglim1(eg, rowset)..             epm(eg, rowset) =l= (1-AEGm(eg, rowset)) * EGDATA(eg, 'Pmax');
eglim2(eg, rowset)..             epm(eg, rowset) =g= (1-AEGm(eg, rowset)) * EGDATA(eg, 'Pmin');
cglim1(cg, rowset)..             cpm(cg, rowset) =l= CGDATA(cg, 'Pmax') * (1-ACGm(cg, rowset)) * xg(cg);
cglim2(cg, rowset)..             cpm(cg, rowset) =g= CGDATA(cg, 'Pmin') * (1-ACGm(cg, rowset)) * xg(cg);

lslimm(n, rowset)..              sum(d$mapD(d,n), rm(d, rowset)) =l= sum(d$mapD(d,n), DDATAp(d));

Model remaster /remasobjj, Lower, xglim, xllim,
         loadbalance,
         eleq1, eleq2,
         ellim1, ellim2,
         cleq1, cleq2,
         cllim1, cllim2,
         eglim1, eglim2,
         cglim1, cglim2, lslimm/;


************************************************************

option limrow = 10000;

parameters
         UB(itera), LB(itera), UBm(itera);

scalar   epsilon /0.01/;

Solve Master0 use mip min obj0;

Loop(iter,

                         loop(l, decisionl(cl, iter) = xl.l(cl));
                         loop(g, decisiong(cg, iter) = xg.l(cg));

                         Solve feasub using lp minimizing objf;

                         if( objf.l = 0,
                                  break;
                         );

                         loop(l, alpha_upper(cl, iter) = Llim3.m(cl));
                         loop(l, alpha_lower(cl, iter) = Llim4.m(cl));
                         loop(l, beta_upper(cl, iter) = Ldefcl1.m(cl));
                         loop(l, beta_lower(cl, iter) = Ldefcl2.m(cl));
                         loop(g, gamma_upper(cg, iter) = genlim2_1.m(cg));
                         loop(g, gamma_lower(cg, iter) = genlim2_2.m(cg));
                         Vio(iter) = objf.l;

                         cutset(iter) = yes;

                         Solve Master0_f using mip minimizing obj0;
);

Loop(itera$(ord(itera)<=1),
         dec_g(cg, itera) = xg.l(cg);
         dec_l(cl, itera) = xl.l(cl);
);

Loop(itera,

         if(ord(itera) <= 1,

                 LB(itera) = obj0.l;

                 decision_l(cl) = dec_l(cl, itera);
                 decision_g(cg) = dec_g(cg, itera);

                 solve dualsp use mip min subdual;

                 UBm(itera) = - subdual.l +
                 sum(cl, CLDATA(cl, 'IC') /10 * decision_l(cl)) + sum(cg, CGDATA(cg, 'IC') /10 * decision_g(cg));

                 UB(itera) = UBm(itera);

                 break$((abs(UB(itera)-LB(itera))/UB(itera)) <= epsilon);

                 AELm(el, itera+1) = AEL.l(el);
                 ACLm(cl, itera+1) = ACL.l(cl);
                 AEGm(eg, itera+1) = AEG.l(eg);
                 ACGm(cg, itera+1) = ACG.l(cg);

         );

         if(ord(itera) > 1,

                 rowset(itera) = yes;

                 solve remaster use mip min remasobj;

                 LB(itera) = remasobj.l;

                 dec_g(cg, itera) = xg.l(cg);
                 dec_l(cl, itera) = xl.l(cl);
                 decision_l(cl) = dec_l(cl, itera);
                 decision_g(cg) = dec_g(cg, itera);

                 solve dualsp use mip min subdual;

                 UBm(itera) = - subdual.l +
                 sum(cl, CLDATA(cl, 'IC') /10 * decision_l(cl)) + sum(cg, CGDATA(cg, 'IC') /10 * decision_g(cg));

                 UB(itera) = min(UB(itera-1), UBm(itera));

                 break$((abs(UB(itera)-LB(itera))/UB(itera)) <= epsilon);
*                 break$( ((UB(itera-1) - LB(itera-1) - UB(itera+1) + LB(itera+1)) / (UB(itera) - LB(itera)) <= epsilon) and ord(itera) >= 20 );

                 AELm(el, itera+1) = AEL.l(el);
                 ACLm(cl, itera+1) = ACL.l(cl);
                 AEGm(eg, itera+1) = AEG.l(eg);
                 ACGm(cg, itera+1) = ACG.l(cg);
         );

);

display dec_g, dec_l, LB, UB;
