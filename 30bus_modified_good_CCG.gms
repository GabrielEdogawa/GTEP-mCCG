

Set
     n  All nodes /n1*n30/
     g  All Generators /g1*g10/
     l  All Lines /l1*l46/
     d  All Demands /d1*d21/
     cg(g) Candidate Generators /g3, g4, g7*g8/
     cl(l) Candidate Lines /l1, l11*l13, l15, l17, l18, l20, l21, l26, l28, l29, l32, l40, l43/
     eg(g) Exisited Generators /g1, g2, g5, g6, g9, g10/
     el(l) Exisited Lines /l2*l10, l14, l16, l19, l22*l25, l27, l30, l31, l33*l39, l41, l42, l44*l46/
     mapCG(cg,n) Generator-Bus Mapping / g3.n5, g4.n5,  g7.n11, g8.n11/
     mapEG(eg,n) /g1.n1, g2.n2, g5.n8, g6.n11, g9.n13, g10.n19/
     mapD(d,n) Load-Bus Mapping /d1.n2, d2.n3, d3.n4, d4.n5, d5.n7, d6.n8, d7.n10, d8.n12, d9.n14, d10.n15, d11.n16, d12.n17, d13.n18, d14.n19
                         d15.n20, d16.n21, d17.n23, d18.n24, d19.n26, d20.n29, d21.n30/
     mapCSL(cl,n) Sending Bus Mapping /l1.n1, l11.n5, l12.n5, l13.n5,  l15.n6,  l17.n6, l18.n6,
                          l20.n9, l21.n9,  l26.n12, l28.n12, l29.n12,  l32.n15, l40.n25,  l43.n27/
     mapESL(el,n)    /l2.n1, l3.n2, l4.n2, l5.n2, l6.n3, l7.n3, l8.n4, l9.n4, l10.n4, l14.n6, l16.n6, l19.n8, l22.n10, l23.n10, l24.n10, l25.n10,
         l27.n12, l30.n14, l31.n15, l33.n16, l34.n18, l35.n19, l36.n21, l37.n22, l38.n23, l39.n24, l41.n25, l42.n26, l44.n27, l45.n27, l46.n29/
     mapCRL(cl,n) Receiving Bus Mapping /l1.n2, l11.n6, l12.n7, l13.n7, l15.n8, l17.n10, l18.n28,
                         l20.n10, l21.n11, l26.n13,  l28.n15, l29.n16, l32.n23, l40.n26, l43.n28/
     mapERL(el,n)    /l2.n3, l3.n4, l4.n5, l5.n6, l6.n4, l7.n13, l8.n6, l9.n11, l10.n12, l14.n7, l16.n9, l19.n28, l22.n17, l23.n20, l24.n21, l25.n22,
         l27.n14, l30.n15, l31.n18, l33.n17, l34.n19, l35.n20, l36.n22, l37.n24, l38.n24, l39.n25, l41.n27, l42.n29, l44.n29, l45.n30, l46.n30/
     ref(n) reference bus  /n1/
     tmp1        /1*5/;

$set inputdir "C:\Users\GabrielYin\Desktop\GAMS_Codes\Paper_GAMS"

Table CLDATA(cl, tmp1)      Candidate Branch Data

$include "%inputdir%\BranchData1.txt";

Table ELDATA(el, tmp1)      Existing Branch Data

$include "%inputdir%\BranchData2.txt";

Table CGDATA(cg, *)   Generator Data
         Pmax      IC       OC
g3       300       90       18
g4       300       140      18
g7       300       120      20
g8       300       110      20       ;

Table EGDATA(eg, *)  Existing Generator Data
         Pmax      IC       OC
g1       300       0        20
g2       300       0        22
g5       300       0        18
g6       300       0        20
g9       300       0        18
g10      300       0        20       ;

Parameter DDATA(d)    Load Data       /
         d1        28.77
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

Scalar PC  Penalty Cost  /80/;

Set iter /1*50/;

Set cutset(iter) dynamic set;
cutset(iter) = no;

Set itera /1*20/;

Set rowset(itera) dynamic set;
rowset(itera) = no;

*****************************************************



Variables
         obj0     Objective Value;

Scalar
         M       big M value     /1000/

Binary Variables
         xg(cg)   Decisions for candidate generator g
         xl(cl)   Decisions for candidate line l
         AEG(eg), AEL(el), ACL(cl), ACG(cg),
         z1(cl), z2(cg);

Equations
         objective0
         xglim
         xllim;

objective0..    obj0 =e= sum(cl, CLDATA(cl, '5') * xl(cl)) + sum(cg, CGDATA(cg, 'IC') * xg(cg));
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
         genlim2_2  generation limits for candidate generators;

objectivef..             objf =e= sum(d, r(d));

Deq(n)..                 sum(cg$mapCG(cg,n), cp(cg)) + sum(eg$mapEG(eg,n), ep(eg)) -
                         sum(cl$mapCSL(cl,n), cf(cl)) + sum(cl$mapCRL(cl,n), cf(cl)) -
                         sum(el$mapESL(el,n), ef(el)) + sum(el$mapERL(el,n), ef(el)) + sum(d$mapD(d,n), r(d))
                         =e= sum(d$mapD(d,n), DDATA(d));

Lineq_e(el)..             ef(el) =e= (sum(n$mapESL(el,n), theta(n)) -
                         sum(n$mapERL(el,n), theta(n))) / ELDATA(el, '1');

Llim1(el)..              -ELDATA(el, '4') =l= ef(el);
Llim2(el)..              ef(el) =l= ELDATA(el, '4');

Llim3(cl)..              -xl.l(cl) * CLDATA(cl, '4') =l= cf(cl);
Llim4(cl)..              cf(cl) =l= xl.l(cl) * CLDATA(cl, '4');

Ldefcl1(cl)..            -(1-xl.l(cl)) * M =l= cf(cl) - (sum(n$mapCSL(cl,n), theta(n))
                         - sum(n$mapCRL(cl,n), theta(n))) / CLDATA(cl, '1');
Ldefcl2(cl)..            cf(cl) - (sum(n$mapCSL(cl,n), theta(n)) -
                         sum(n$mapCRL(cl,n), theta(n))) / CLDATA(cl, '1')
                         =l= (1-xl.l(cl)) * M;

genlim1_1(eg)..          ep(eg) =l= EGDATA(eg, 'Pmax');
genlim1_2(eg)..          ep(eg) =g= EGDATA(eg, 'Pmin');
genlim2_1(cg)..          cp(cg) =l= xg.l(cg) * CGDATA(cg, 'Pmax');
genlim2_2(cg)..          cp(cg) =g= xg.l(cg) * CGDATA(cg, 'Pmin');

model feasub /objectivef, Deq, Lineq_e, Llim1, Llim2, Llim3, Llim4,
              Ldefcl1, Ldefcl2, genlim1_1, genlim1_2, genlim2_1, genlim2_2/;

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
                         alpha_lower(cl, cutset)) * CLDATA(cl, '4') * (xl(cl) - decisionl(cl, cutset))
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
                 gamma1M_m(eg), gamma1M_p(eg), gamma2M_m(cg), gamma2M_p(cg);

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
         bigM121, bigM122, bigM123, bigM124, zcon111, zcon121, zcon131, zcon211, zcon221, zcon231;

subobj..                 subdual =e= sum(n, sum(d$mapD(d,n), DDATA(d)) * pi(n)) +
                         sum(el, M * kai1M_m(el)) +
                         sum(el, M * kai1M_p(el)) +
                         sum(cl, M * (kai2_m(cl) - kai2M_m(cl))) +
                         sum(cl, M * (kai2_p(cl) - kai2M_p(cl))) +
                         sum(el, ELDATA(el, '4') * (sigma1_m(el) - sigma1M_m(el))) +
                         sum(el, ELDATA(el, '4') * (sigma1_p(el) - sigma1M_p(el))) +
                         sum(cl, CLDATA(cl, '4') * sigma2M_m(cl)) +
                         sum(cl, CLDATA(cl, '4') * sigma2M_p(cl)) +
                         sum(eg, EGDATA(eg, 'Pmax') * (gamma1_p(eg) - gamma1M_p(eg))) +
                         sum(eg, EGDATA(eg, 'Pmin') * (gamma1M_m(eg) - gamma1_m(eg))) +
                         sum(cg, CGDATA(cg, 'Pmax') * gamma2M_p(cg)) -
                         sum(cg, CGDATA(cg, 'Pmin') * gamma2M_m(cg));

uncertainty1..           sum(eg, AEG(eg)) + sum(cg, ACG(cg)) =l= 1;
uncertainty2..           sum(el, AEL(el)) + sum(cl, ACL(cl)) =l= 1;
uncertainty3(cl)..       ACL(cl) =l= decision_l(cl);
uncertainty4(cg)..       ACG(cg) =l= decision_g(cg);

peg(eg)..                gamma1_p(eg) - gamma1_m(eg) + sum(n$mapEG(eg,n), pi(n)) =l= EGDATA(eg, 'OC');
pcg(cg)..                gamma2_p(cg) - gamma2_m(cg) + sum(n$mapCG(cg,n), pi(n)) =l= CGDATA(cg, 'OC');

fel(el)..                - kai1_m(el) + kai1_p(el) - sigma1_m(el) + sigma1_p(el) + sum(n$mapERL(el,n), pi(n)) - sum(n$mapESL(el,n), pi(n)) =e= 0;
fcl(cl)..                - kai2_m(cl) + kai2_p(cl) - sigma2_m(cl) + sigma2_p(cl) + sum(n$mapCRL(cl,n), pi(n)) - sum(n$mapCSL(cl,n), pi(n)) =e= 0;

thetan(n)..              sum(el$mapESL(el,n), kai1_m(el) / ELDATA(el, '1')) - sum(el$mapERL(el,n), kai1_m(el) / ELDATA(el, '1')) -
                         sum(el$mapESL(el,n), kai1_p(el) / ELDATA(el, '1')) + sum(el$mapERL(el,n), kai1_p(el) / ELDATA(el, '1')) +
                         sum(cl$mapCSL(cl,n), kai2_m(cl) / CLDATA(cl, '1')) - sum(cl$mapCRL(cl,n), kai2_m(cl) / CLDATA(cl, '1')) -
                         sum(cl$mapCSL(cl,n), kai2_p(cl) / CLDATA(cl, '1')) + sum(cl$mapCRL(cl,n), kai2_p(cl) / CLDATA(cl, '1')) =e= 0;

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

zcon111(cl)..             z1(cl) =g= decision_l(cl) + (1 - ACL(cl)) - 1;
zcon121(cl)..             z1(cl) =l= decision_l(cl);
zcon131(cl)..             z1(cl) =l= 1 - ACL(cl);
zcon211(cg)..             z2(cg) =g= decision_g(cg) + (1 - ACG(cg)) - 1;
zcon221(cg)..             z2(cg) =l= decision_g(cg);
zcon231(cg)..             z2(cg) =l= 1 - ACG(cg);

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
         cglim1, cglim2, zcon112, zcon122,zcon132,zcon212,zcon222,zcon232;

variable         remasobj;

Equations
         remasobjj, Lower;

remasobjj..              remasobj =e= sum(cl, CLDATA(cl, '5') * xl(cl)) + sum(cg, CGDATA(cg, 'IC') * xg(cg)) + eta;

Lower(rowset)..          eta =g= sum(eg, epm(eg, rowset) * EGDATA(eg, 'OC')) + sum(cg, cpm(cg, rowset) * CGDATA(cg, 'OC')) +
                         sum(d, rm(d, rowset) * PC);

loadbalance(n, rowset).. sum(cg$mapCG(cg,n), cpm(cg, rowset)) + sum(eg$mapEG(eg,n), epm(eg, rowset)) -
                         sum(cl$mapCSL(cl,n), cfm(cl, rowset)) + sum(cl$mapCRL(cl,n), cfm(cl, rowset)) -
                         sum(el$mapESL(el,n), efm(el, rowset)) + sum(el$mapERL(el,n), efm(el, rowset)) + sum(d$mapD(d,n), rm(d, rowset))
                         =e= sum(d$mapD(d,n), DDATA(d));

eleq1(el, rowset)..              efm(el, rowset) =g= (sum(n$mapESL(el,n), thetam(n, rowset)) -
                                 sum(n$mapERL(el,n), thetam(n, rowset))) / ELDATA(el, '1') - M * AELm(el, rowset);
eleq2(el, rowset)..              efm(el, rowset) =l= (sum(n$mapESL(el,n), thetam(n, rowset)) -
                                 sum(n$mapERL(el,n), thetam(n, rowset))) / ELDATA(el, '1') + M * AELm(el, rowset);
ellim1(el, rowset)..             efm(el, rowset) =g= - (1-AELm(el, rowset)) * ELDATA(el, '4');
ellim2(el, rowset)..             efm(el, rowset) =l= (1-AELm(el, rowset)) * ELDATA(el, '4');

cleq1(cl, rowset)..              cfm(cl, rowset) =g= (sum(n$mapCSL(cl,n), thetam(n, rowset)) -
                                 sum(n$mapCRL(cl,n), thetam(n, rowset))) / CLDATA(cl, '1') - M * (1-(1-ACLm(cl, rowset)) * xl(cl));
cleq2(cl, rowset)..              cfm(cl, rowset) =l= (sum(n$mapCSL(cl,n), thetam(n, rowset)) -
                                 sum(n$mapCRL(cl,n), thetam(n, rowset))) / CLDATA(cl, '1') + M * (1-(1-ACLm(cl, rowset)) * xl(cl));
cllim1(cl, rowset)..             cfm(cl, rowset) =g= - CLDATA(cl, '4')  * (1-ACLm(cl, rowset)) * xl(cl);
cllim2(cl, rowset)..             cfm(cl, rowset) =l= CLDATA(cl, '4')  * (1-ACLm(cl, rowset)) * xl(cl);

eglim1(eg, rowset)..             epm(eg, rowset) =l= (1-AEGm(eg, rowset)) * EGDATA(eg, 'Pmax');
eglim2(eg, rowset)..             epm(eg, rowset) =g= (1-AEGm(eg, rowset)) * EGDATA(eg, 'Pmin');
cglim1(cg, rowset)..             cpm(cg, rowset) =l= CGDATA(cg, 'Pmax') * (1-ACGm(cg, rowset)) * xg(cg);
cglim2(cg, rowset)..             cpm(cg, rowset) =g= CGDATA(cg, 'Pmin') * (1-ACGm(cg, rowset)) * xg(cg);

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
         cglim1, cglim2/;

************************************************************

option limrow = 10000;

parameters
         UB(itera), LB(itera);

scalar   epsilon /0.01/;

Solve Master0 use mip min obj0;

Loop(iter,

                         loop(l, decisionl(cl, iter) = xl.l(cl))
                         loop(g, decisiong(cg, iter) = xg.l(cg))

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

                 solve dualsp use mip max subdual;

                 UB(itera) = subdual.l +
                 sum(cl, CLDATA(cl, '5') * decision_l(cl)) + sum(cg, CGDATA(cg, 'IC') * decision_g(cg));

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
                 sum(cl, CLDATA(cl, '5') * decision_l(cl)) + sum(cg, CGDATA(cg, 'IC') * decision_g(cg));

*                 break$((abs(UB(itera)-LB(itera))/UB(itera)) <= epsilon);

                 AELm(el, itera+1) = AEL.l(el);
                 ACLm(cl, itera+1) = ACL.l(cl);
                 AEGm(eg, itera+1) = AEG.l(eg);
                 ACGm(cg, itera+1) = ACG.l(cg);
         );

);

display dec_g, dec_l, LB, UB;

