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

Parameter        DDATA(d)        Demand Data     /
         d1      80
         d2      240
         d3      40
         d4      160
         d5      240
/;





Scalar PC  Penalty Cost  /720/;

Set iter /1*50/;

Set cutset(iter) dynamic set;
cutset(iter) = no;

Set itera /1*100/;

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
xglim..         sum(cg, xg(cg)) =l= 2;
xllim..         sum(cl, xl(cl)) =l= 2;

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
         lslim;

objectivef..             objf =e= sum(d, r(d));

Deq(n)..                 sum(cg$mapCG(cg,n), cp(cg)) + sum(eg$mapEG(eg,n), ep(eg)) -
                         sum(cl$mapCSL(cl,n), cf(cl)) + sum(cl$mapCRL(cl,n), cf(cl)) -
                         sum(el$mapESL(el,n), ef(el)) + sum(el$mapERL(el,n), ef(el)) + sum(d$mapD(d,n), r(d))
                         =e= sum(d$mapD(d,n), DDATA(d));

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

lslim(n)..               sum(d$mapD(d,n), r(d)) =l= sum(d$mapD(d,n), DDATA(d));

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

Negative Variables
                 kai1_m(el), kai1_p(el), kai2_m(cl), kai2_p(cl),
                 sigma1_m(el), sigma1_p(el), sigma2_m(cl), sigma2_p(cl),
                 gamma1_m(eg), gamma1_p(eg), gamma2_m(cg), gamma2_p(cg),
                 kai1M_m(el), kai1M_p(el), kai2M_m(cl), kai2M_p(cl),
                 sigma1M_m(el), sigma1M_p(el), sigma2M_m(cl), sigma2M_p(cl),
                 gamma1M_m(eg), gamma1M_p(eg), gamma2M_m(cg), gamma2M_p(cg), zeta(n);

Free Variable
                 pi(n), subdual;

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

subobj..                 subdual =e= sum(n, sum(d$mapD(d,n), DDATA(d)) * pi(n)) +
                         sum(el, M * kai1M_m(el)) +
                         sum(el, M * kai1M_p(el)) +
                         sum(cl, M * (kai2_m(cl) - kai2M_m(cl))) +
                         sum(cl, M * (kai2_p(cl) - kai2M_p(cl))) +
                         sum(el, ELDATA(el, 'FLmax') * (sigma1_m(el) - sigma1M_m(el))) +
                         sum(el, ELDATA(el, 'FLmax') * (sigma1_p(el) - sigma1M_p(el))) +
                         sum(cl, CLDATA(cl, 'FLmax') * sigma2M_m(cl)) +
                         sum(cl, CLDATA(cl, 'FLmax') * sigma2M_p(cl)) +
                         sum(eg, EGDATA(eg, 'Pmax') * (gamma1_p(eg) - gamma1M_p(eg))) +
                         sum(eg, EGDATA(eg, 'Pmin') * (gamma1M_m(eg) - gamma1_m(eg))) +
                         sum(cg, CGDATA(cg, 'Pmax') * gamma2M_p(cg)) -
                         sum(cg, CGDATA(cg, 'Pmin') * gamma2M_m(cg)) + sum(n, sum(d$mapD(d,n), DDATA(d)) * zeta(n));

uncertainty1..           sum(eg, AEG(eg)) + sum(cg, ACG(cg)) =l= 1;
uncertainty2..           sum(el, AEL(el)) + sum(cl, ACL(cl)) =l= 1;
uncertainty3(cl)..       ACL(cl) =l= decision_l(cl);
uncertainty4(cg)..       ACG(cg) =l= decision_g(cg);

peg(eg)..                gamma1_p(eg) - gamma1_m(eg) + sum(n$mapEG(eg,n), pi(n)) =l= EGDATA(eg, 'OC');
pcg(cg)..                gamma2_p(cg) - gamma2_m(cg) + sum(n$mapCG(cg,n), pi(n)) =l= CGDATA(cg, 'OC');

fel(el)..                - kai1_m(el) + kai1_p(el) - sigma1_m(el) + sigma1_p(el) + sum(n$mapERL(el,n), pi(n)) - sum(n$mapESL(el,n), pi(n)) =e= 0;
fcl(cl)..                - kai2_m(cl) + kai2_p(cl) - sigma2_m(cl) + sigma2_p(cl) + sum(n$mapCRL(cl,n), pi(n)) - sum(n$mapCSL(cl,n), pi(n)) =e= 0;

thetan(n)..              sum(el$mapESL(el,n), kai1_m(el) / ELDATA(el, 'X')) - sum(el$mapERL(el,n), kai1_m(el) / ELDATA(el, 'X')) -
                         sum(el$mapESL(el,n), kai1_p(el) / ELDATA(el, 'X')) + sum(el$mapERL(el,n), kai1_p(el) / ELDATA(el, 'X')) +
                         sum(cl$mapCSL(cl,n), kai2_m(cl) / CLDATA(cl, 'X')) - sum(cl$mapCRL(cl,n), kai2_m(cl) / CLDATA(cl, 'X')) -
                         sum(cl$mapCSL(cl,n), kai2_p(cl) / CLDATA(cl, 'X')) + sum(cl$mapCRL(cl,n), kai2_p(cl) / CLDATA(cl, 'X')) =e= 0;

rdual(d)..               sum(n$mapD(d,n), pi(n)) =l= PC;

bigM11(el)..              kai1M_m(el) =l= kai1_m(el) + M * (1-AEL(el));
bigM12(el)..              kai1M_m(el) =g= kai1_m(el) - M * (1-AEL(el));
bigM13(el)..              kai1M_m(el) =l= M * AEL(el);
bigM14(el)..              kai1M_m(el) =g= - M * AEL(el);
bigM21(el)..              kai1M_p(el) =l= kai1_p(el) + M * (1-AEL(el));
bigM22(el)..              kai1M_p(el) =g= kai1_p(el) - M * (1-AEL(el));
bigM23(el)..              kai1M_p(el) =l= M * AEL(el);
bigM24(el)..              kai1M_p(el) =g= - M * AEL(el);
bigM31(cl)..              kai2M_m(cl) =l= kai2_m(cl) + M * (1-(1-ACL(cl)) * decision_l(cl));
bigM32(cl)..              kai2M_m(cl) =g= kai2_m(cl) - M * (1-(1-ACL(cl)) * decision_l(cl));
bigM33(cl)..              kai2M_m(cl) =l= M * (1-ACL(cl)) * decision_l(cl);
bigM34(cl)..              kai2M_m(cl) =g= - M * (1-ACL(cl)) * decision_l(cl);
bigM41(cl)..              kai2M_p(cl) =l= kai2_p(cl) + M * (1-(1-ACL(cl)) * decision_l(cl));
bigM42(cl)..              kai2M_p(cl) =g= kai2_p(cl) - M * (1-(1-ACL(cl)) * decision_l(cl));
bigM43(cl)..              kai2M_p(cl) =l= M * (1-ACL(cl)) * decision_l(cl);
bigM44(cl)..              kai2M_p(cl) =g= - M * (1-ACL(cl)) * decision_l(cl);

bigM51(el)..              sigma1M_m(el) =l= sigma1_m(el) + M * (1-AEL(el));
bigM52(el)..              sigma1M_m(el) =g= sigma1_m(el) - M * (1-AEL(el));
bigM53(el)..              sigma1M_m(el) =l= M * AEL(el);
bigM54(el)..              sigma1M_m(el) =g= - M * AEL(el);
bigM61(el)..              sigma1M_p(el) =l= sigma1_p(el) + M * (1-AEL(el));
bigM62(el)..              sigma1M_p(el) =g= sigma1_p(el) - M * (1-AEL(el));
bigM63(el)..              sigma1M_p(el) =l= M * AEL(el);
bigM64(el)..              sigma1M_p(el) =g= - M * AEL(el);
bigM71(cl)..              sigma2M_m(cl) =l= sigma2_m(cl) + M * (1-(1-ACL(cl)) * decision_l(cl));
bigM72(cl)..              sigma2M_m(cl) =g= sigma2_m(cl) - M * (1-(1-ACL(cl)) * decision_l(cl));
bigM73(cl)..              sigma2M_m(cl) =l= M * (1-ACL(cl)) * decision_l(cl);
bigM74(cl)..              sigma2M_m(cl) =g= - M * (1-ACL(cl)) * decision_l(cl);
bigM81(cl)..              sigma2M_p(cl) =l= sigma2_p(cl) + M * (1-(1-ACL(cl)) * decision_l(cl));
bigM82(cl)..              sigma2M_p(cl) =g= sigma2_p(cl) - M * (1-(1-ACL(cl)) * decision_l(cl));
bigM83(cl)..              sigma2M_p(cl) =l= M * (1-ACL(cl)) * decision_l(cl);
bigM84(cl)..              sigma2M_p(cl) =g= - M * (1-ACL(cl)) * decision_l(cl);

bigM91(eg)..              gamma1M_m(eg) =l= gamma1_m(eg) + M * (1-AEG(eg));
bigM92(eg)..              gamma1M_m(eg) =g= gamma1_m(eg) - M * (1-AEG(eg));
bigM93(eg)..              gamma1M_m(eg) =l= M * AEG(eg);
bigM94(eg)..              gamma1M_m(eg) =g= - M * AEG(eg);
bigM101(eg)..             gamma1M_p(eg) =l= gamma1_p(eg) + M * (1-AEG(eg));
bigM102(eg)..             gamma1M_p(eg) =g= gamma1_p(eg) - M * (1-AEG(eg));
bigM103(eg)..             gamma1M_p(eg) =l= M * AEG(eg);
bigM104(eg)..             gamma1M_p(eg) =g= - M * AEG(eg);
bigM111(cg)..             gamma2M_m(cg) =l= gamma2_m(cg) + M * (1-(1-ACG(cg)) * decision_g(cg));
bigM112(cg)..             gamma2M_m(cg) =g= gamma2_m(cg) - M * (1-(1-ACG(cg)) * decision_g(cg));
bigM113(cg)..             gamma2M_m(cg) =l= M * (1-ACG(cg)) * decision_g(cg);
bigM114(cg)..             gamma2M_m(cg) =g= - M * (1-ACG(cg)) * decision_g(cg);
bigM121(cg)..             gamma2M_p(cg) =l= gamma2_p(cg) + M * (1-(1-ACG(cg)) * decision_g(cg));
bigM122(cg)..             gamma2M_p(cg) =g= gamma2_p(cg) - M * (1-(1-ACG(cg)) * decision_g(cg));
bigM123(cg)..             gamma2M_p(cg) =l= M * (1-ACG(cg)) * decision_g(cg);
bigM124(cg)..             gamma2M_p(cg) =g= - M * (1-ACG(cg)) * decision_g(cg);

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
                         =e= sum(d$mapD(d,n), DDATA(d));

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

lslimm(n, rowset)..              sum(d$mapD(d,n), rm(d, rowset)) =l= sum(d$mapD(d,n), DDATA(d));

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
         UB(itera), LB(itera);

scalar   epsilon /0.01/;

Solve Master0 use mip min obj0;



Loop(itera$(ord(itera)<=1),
         dec_g(cg, itera) = 0;
         dec_l(cl, itera) = 0;
);

Loop(itera,

         if(ord(itera) <= 1,

                 LB(itera) = obj0.l;

                 decision_l(cl) = dec_l(cl, itera);
                 decision_g(cg) = dec_g(cg, itera);

                 solve dualsp use mip max subdual;

                 UB(itera) = subdual.l +
                 sum(cl, CLDATA(cl, 'IC') /10 * decision_l(cl)) + sum(cg, CGDATA(cg, 'IC') /10 * decision_g(cg));

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

                 solve dualsp use mip max subdual;

                 UB(itera) = subdual.l +
                 sum(cl, CLDATA(cl, 'IC') /10 * decision_l(cl)) + sum(cg, CGDATA(cg, 'IC') /10 * decision_g(cg));

                 break$((abs(UB(itera)-LB(itera))/UB(itera)) <= epsilon);

                 AELm(el, itera+1) = AEL.l(el);
                 ACLm(cl, itera+1) = ACL.l(cl);
                 AEGm(eg, itera+1) = AEG.l(eg);
                 ACGm(cg, itera+1) = ACG.l(cg);
         );

);

display dec_g, dec_l, LB, UB;


