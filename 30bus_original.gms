Set
     n  All nodes /n1*n30/
     g  All Generators /g1*g10/
     l  All Lines /l1*l46/
     t  All Periods /t1*t4/
     d  All Demands /d1*d21/
     cg(g) Candidate Generators /g3, g4, g7*g8/
     cl(l) Candidate Lines /l1, l11*l13, l15, l17, l18, l20, l21, l26, l28, l29, l32, l40, l43/
     eg(g) Exisited Generators /g1, g2, g5, g6, g9, g10/
     el(l) Exisited Lines /l2*l10, l14, l16, l19, l22*l25, l27, l30, l31, l33*l39, l41, l42, l44*l46/
     mapG(g,n) Generator-Bus Mapping /g1.n1, g2.n2, g3.n5, g4.n5, g5.n8, g6.n11, g7.n11, g8.n11, g9.n13, g10.n19/
     mapD(d,n) Load-Bus Mapping /d1.n2, d2.n3, d3.n4, d4.n5, d5.n7, d6.n8, d7.n10, d8.n12, d9.n14, d10.n15, d11.n16, d12.n17, d13.n18, d14.n19
d15.n20, d16.n21, d17.n23, d18.n24, d19.n26, d20.n29, d21.n30/
     mapSL(l,n) Sending Bus Mapping /l1.n1, l2.n1, l3.n2, l4.n2, l5.n2, l6.n3, l7.n3, l8.n4, l9.n4, l10.n4, l11.n5, l12.n5, l13.n5, l14.n6, l15.n6, l16.n6, l17.n6, l18.n6,
l19.n8, l20.n9, l21.n9, l22.n10, l23.n10, l24.n10, l25.n10, l26.n12, l27.n12, l28.n12, l29.n12, l30.n14, l31.n15, l32.n15, l33.n16, l34.n18, l35.n19, l36.n21, l37.n22,
l38.n23, l39.n24, l40.n25, l41.n25, l42.n26, l43.n27, l44.n27, l45.n27, l46.n29/
     mapRL(l,n) Receiving Bus Mapping /l1.n2, l2.n3, l3.n4, l4.n5, l5.n6, l6.n4, l7.n13, l8.n6, l9.n11, l10.n12, l11.n6, l12.n7, l13.n7, l14.n7, l15.n8, l16.n9, l17.n10, l18.n28,
l19.n28, l20.n10, l21.n11, l22.n17, l23.n20, l24.n21, l25.n22, l26.n13, l27.n14, l28.n15, l29.n16, l30.n15, l31.n18, l32.n23, l33.n17, l34.n19, l35.n20, l36.n22, l37.n24,
l38.n24, l39.n25, l40.n26, l41.n27, l42.n29, l43.n28, l44.n29, l45.n30, l46.n30/
     ref(n) reference bus  /n1/
     tmp1        /1*5/;

$set inputdir "C:\Users\47577378\Desktop\Paper_GAMS"

Table LDATA(l, tmp1)      Branch Data

$include "%inputdir%\BranchData.txt";

Table GDATA(g, *)   Generator Data
         Pmax      IC       OC
g1       300       0        20
g2       300       0        22
g3       300       90000    18
g4       300       140000   18
g5       300       0        18
g6       300       0        20
g7       300       120000   20
g8       300       110000   20
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

Set iter /iter1*iter50/;

Set cutset(iter) dynamic set;
cutset(iter) = no;

Set itera /itera1*itera50/;

Set columnset(itera) dynamic set;
columnset(itera) = no;

Parameters
         UB(itera)       Upper Bound
         LB(itera)       Lower Bound;

Scalar   epsilon   /0.001/;

*** Master Problem for 1st iteration Modeling ***

Variables
         obj0     Objective Value;

Scalar
         M       big M value     /1000/

Binary Variables
         xg(g)   Decisions for candidate generator g
         xl(l)   Decisions for candidate line l;

Equations
         objective0
         xglim
         xllim;

objective0..    obj0 =e= sum(l$(cl(l)), LDATA(l, '5') * xl(l)) + sum(g$(cg(g)), GDATA(g, 'IC') * xg(g));
xglim..         sum(g$cg(g), xg(g)) =g= 2;
xllim..         sum(l$cl(l), xl(l)) =g= 2;

Model Master0 / objective0, xglim, xllim /  ;

Parameters
         decisionl(l, iter)    initial decision for candidate line l
         decisiong(g, iter)    initial decision for candidate generator g;

*** Feasibility Subproblem Modeling ***

Free Variable
         objf    feasibility objective
         f(l)    Line flow in line l
         theta(n)    Bus angle of bus n;

Positive Variable
         r(d)     load violation values
         p(g)    Generation of Generator g;

Equations
         objectivef    feasibility obejctive,
         Deq      demand violation inequality,
         Lineq    DC power flow equation,
         Llim1    negative line limit,
         Llim2    positive line limit,
         Llimcl1  negative candidate line limit,
         Llimcl2  positive candidate line limit,
         Ldefcl1  candidate line definition left hand side,
         Ldefcl2  candidate line definition right hand side,
         genlim1_1  generation limits for existing generators,
         genlim1_2  generation limits for existing generators,
         genlim2_1  generation limits for candidate generators,
         genlim2_2  generation limits for candidate generators;

objectivef..             objf =e= sum(d, r(d));
Deq(n)..                 sum(g$mapG(g,n), p(g)) - sum(l$mapSL(l,n), f(l)) +
                         sum(l$mapRL(l,n), f(l)) + sum(d$mapD(d,n), r(d))
                         =e= sum(d$mapD(d,n), DDATA(d));
Lineq(l)$el(l)..         f(l) =e= (sum(n$mapSL(l,n), theta(n)) -
                         sum(n$mapRL(l,n), theta(n))) / LDATA(l, '1');
Llim1(l)$el(l)..         -LDATA(l, '4') =l= f(l);
Llim2(l)$el(l)..         f(l) =l= LDATA(l, '4');
Llimcl1(l)$cl(l)..       -xl.l(l) * LDATA(l, '4') =l= f(l);
Llimcl2(l)$cl(l)..       f(l) =l= xl.l(l) * LDATA(l, '4');
Ldefcl1(l)$cl(l)..       -(1-xl.l(l)) * M =l= f(l) - (sum(n$mapSL(l,n), theta(n))
                         - sum(n$mapRL(l,n), theta(n))) / LDATA(l, '1');
Ldefcl2(l)$cl(l)..       f(l) - (sum(n$mapSL(l,n), theta(n)) -
                         sum(n$mapRL(l,n), theta(n))) / LDATA(l, '1')
                         =l= (1-xl.l(l)) * M;
genlim1_1(g)$eg(g)..     p(g) =l= GDATA(g, 'Pmax');
genlim1_2(g)$eg(g)..     p(g) =g= GDATA(g, 'Pmin');
genlim2_1(g)$cg(g)..     p(g) =l= xg.l(g) * GDATA(g, 'Pmax');
genlim2_2(g)$cg(g)..     p(g) =g= xg.l(g) * GDATA(g, 'Pmin');

model feasub /objectivef, Deq, Lineq, Llim1, Llim2, Llimcl1, Llimcl2,
              Ldefcl1, Ldefcl2, genlim1_1, genlim1_2, genlim2_1, genlim2_2/;

*** Revisited Master Problem with Benders Cut Modeling ***

Parameter  alpha_upper(l, iter)  candidate line capacity equation upper dual;

Parameter  alpha_lower(l, iter)  candidate line capacity equation lower dual;

Parameter  beta_upper(l, iter)  candidate line definition equation upper dual;

Parameter  beta_lower(l, iter)  candidate line definition equation lower dual;

Parameter gamma_upper(g, iter)  candidate generator capacity equation upper dual;

Parameter gamma_lower(g, iter)  candidate generator capacity equation lower dual;

Parameter Vio(iter);

Equation
         bendersf(iter)        benders feasibility cut;

bendersf(cutset)..       Vio(cutset) + sum(g, gamma_upper(g, cutset) * GDATA(g, 'Pmax') * (xg(g)
                          - decisiong(g, cutset)) - gamma_lower(g, cutset) * GDATA(g, 'Pmin') * (xg(g) -
                         decisiong(g, cutset))) + sum(l, (alpha_upper(l, cutset) +
                         alpha_lower(l, cutset)) * LDATA(l, '4') * (xl(l) - decisionl(l, cutset))
                          - (beta_upper(l, cutset) + beta_lower(l, cutset)) * M * (xl(l) -
                         decisionl(l, cutset))) =l= 0;

Model Master0_f / objective0, xglim, xllim, bendersf /;

*** Obtain the available line and generator after Master Problem decision ***

Parameter L_avail;
Parameter G_avail;

Parameter L_avail0(l) Available lines    /
         l1      0
         l2      1
         l3      1
         l4      1
         l5      1
         l6      1
         l7      1
         l8      1
         l9      1
         l10     1
         l11     0
         l12     0
         l13     0
         l14     1
         l15     0
         l16     1
         l17     0
         l18     0
         l19     1
         l20     0
         l21     0
         l22     1
         l23     1
         l24     1
         l25     1
         l26     0
         l27     1
         l28     0
         l29     0
         l30     1
         l31     1
         l32     0
         l33     1
         l34     1
         l35     1
         l36     1
         l37     1
         l38     1
         l39     1
         l40     0
         l41     1
         l42     1
         l43     0
         l44     1
         l45     1
         l46     1
/;

Loop(itera,
         if(ord(itera) ge 2,
                 break;);
         L_avail(l, itera) = L_avail0(l);
);

Parameter G_avail0(g) Available generators after investment    /
         g1      1
         g2      1
         g3      0
         g4      0
         g5      1
         g6      1
         g7      0
         g8      0
         g9      1
         g10     1
/;

Loop(itera,
         if(ord(itera) ge 2,
                 break;);
         G_avail(g, itera) = G_avail0(g);
);

* Dynamic Set

Sets
         g_ava(g)        available generator set
         l_ava(l)        available line set;

g_ava(g)$(G_avail0(g)) = yes;
l_ava(l)$(L_avail0(l)) = yes;

* Then we have decided the investment decision based on the master problem.

**** Model the dualized max-min Subproblem ****

Scalar
         PC      Penalty Cost for imbalance demand    /120/

Binary Variables
         AG(g)   outage indicator of generator g
         AL(l)   outage indicator of line l

Free Variable
         objdual            objective value for dual subproblem

Positive Variables
         gamma_plus(g)      upper generator limit constraint dual
         gamma_minus(g)     lower generator limit constraint dual
         sigma_plus(l)      upper line flow limit constraint dual
         sigma_minus(l)     lower line flow limit constraint dual
*         eta_plus(n)        upper theta limit constraint dual
*         eta_minus(n)       lower theta limit constraint dual
         kai_plus(l)        upper line flow definition of outage line constraint dual
         kai_minus(l)       lower line flow definition of outage line constraint dual
         pi(n)         upper node balance equation dual

         gamma_plusM(g)     Big M value
         gamma_minusM(g)    Big M value
         sigma_plusM(l)     Big M value
         sigma_minusM(l)    Big M value
         kai_plusM(l)       Big M value
         kai_minusM(l)      Big M value;

Equations
         obj_dualsp         objective function
         gendual(g)        generation-related dual inequalities
         linedual(l)        line-related dual inequalities
         thetadual           outage_line-related dual inequalities
         rdual           penalty-related dual inequalities
         Eq_dual4(n)
         Eq_dual51(g)          Big M constraint 1 for gamma plus
         Eq_dual52(g)          Big M constraint 2 for gamma plus
         Eq_dual53(g)          Big M constraint 3 for gamma plus
         Eq_dual61(g)          Big M constraint 1 for gamma minus
         Eq_dual62(g)          Big M constraint 2 for gamma minus
         Eq_dual63(g)          Big M constraint 3 for gamma minus
         Eq_dual71(l)          Big M constraint 1 for sigma plus
         Eq_dual72(l)          Big M constraint 2 for sigma plus
         Eq_dual73(l)          Big M constraint 3 for sigma plus
         Eq_dual81(l)          Big M constraint 1 for sigma minus
         Eq_dual82(l)          Big M constraint 2 for sigma minus
         Eq_dual83(l)          Big M constraint 3 for sigma minus
         Eq_dual91(l)          Big M constraint 1 for kai plus
         Eq_dual92(l)          Big M constraint 2 for kai plus
         Eq_dual93(l)          Big M constraint 3 for kai plus
         Eq_dual101(l)         Big M constraint 1 for kai minus
         Eq_dual102(l)         Big M constraint 2 for kai minus
         Eq_dual103(l)         Big M constraint 3 for kai minus
         Eq_dual11          N-k Contingency regulation
         Eq_dual12          N-k Contingency regulation
         Eq_dual13          N-k Contingency regulation;

obj_dualsp..             objdual =e= sum(g_ava, GDATA(g_ava, 'Pmin') * gamma_minus(g_ava) - GDATA(g_ava, 'Pmin') * gamma_minusM(g_ava))
                         - sum(g_ava, GDATA(g_ava, 'Pmax') * gamma_plus(g_ava) - GDATA(g_ava, 'Pmax') * gamma_plusM(g_ava))
                         - sum(l_ava, LDATA(l_ava, '4') * sigma_minus(l_ava) - LDATA(l_ava, '4') * sigma_minusM(l_ava))
                         - sum(l_ava, LDATA(l_ava, '4') * sigma_plus(l_ava) - LDATA(l_ava, '4') * sigma_plusM(l_ava))
                         + sum(n, sum(d$mapD(d,n), DDATA(d)) * pi(n))
                         - sum(l_ava, M * kai_minusM(l_ava)) - sum(l_ava, M * kai_plusM(l_ava));

gendual(g_ava)..         - gamma_plus(g_ava) + gamma_minus(g_ava) + sum(n$mapG(g_ava,n), pi(n)) =l= GDATA(g_ava, 'OC');

linedual(l_ava)..        - sigma_plus(l_ava) + sigma_minus(l_ava) + sum(n$mapRL(l_ava,n), pi(n)) - sum(n$mapSL(l_ava,n), pi(n))
                         + kai_minus(l_ava) - kai_plus(l_ava) =e= 0;

thetadual(n)..           sum(l_ava$mapSL(l_ava,n), kai_plus(l_ava) / LDATA(l_ava, '1')) - sum(l_ava$mapRL(l_ava,n), kai_plus(l_ava) / LDATA(l_ava, '1'))
                         - sum(l_ava$mapSL(l_ava,n), kai_minus(l_ava) / LDATA(l_ava, '1')) + sum(l_ava$mapRL(l_ava,n), kai_minus(l_ava) / LDATA(l_ava, '1')) =e= 0;

rdual(d)..               sum(n$mapD(d,n), pi(n)) =l= PC;

Eq_dual51(g_ava)..           gamma_plusM(g_ava) =l=  (1 - AG(g_ava)) * M + gamma_plus(g_ava);
Eq_dual52(g_ava)..           gamma_plusM(g_ava) =l= AG(g_ava) * M;
Eq_dual53(g_ava)..           gamma_plusM(g_ava) =g= - (1 - AG(g_ava)) * M + gamma_plus(g_ava);
Eq_dual61(g_ava)..           gamma_minusM(g_ava) =l= (1 - AG(g_ava)) * M + gamma_minus(g_ava);
Eq_dual62(g_ava)..           gamma_minusM(g_ava) =l= AG(g_ava) * M;
Eq_dual63(g_ava)..           gamma_minusM(g_ava) =g= - (1 - AG(g_ava)) * M + gamma_minus(g_ava);
Eq_dual71(l_ava)..           sigma_plusM(l_ava) =l= (1 - AL(l_ava)) * M + sigma_plus(l_ava);
Eq_dual72(l_ava)..           sigma_plusM(l_ava) =l= AL(l_ava) * M;
Eq_dual73(l_ava)..           sigma_plusM(l_ava) =g= - (1 - AL(l_ava)) * M + sigma_plus(l_ava);
Eq_dual81(l_ava)..           sigma_minusM(l_ava) =l= (1 - AL(l_ava)) * M + sigma_minus(l_ava);
Eq_dual82(l_ava)..           sigma_minusM(l_ava) =l= AL(l_ava) * M;
Eq_dual83(l_ava)..           sigma_minusM(l_ava) =g= - (1 - AL(l_ava)) * M + sigma_minus(l_ava);
Eq_dual91(l_ava)..           kai_plusM(l_ava) =l= (1 - AL(l_ava)) * M + kai_plus(l_ava);
Eq_dual92(l_ava)..           kai_plusM(l_ava) =l= AL(l_ava) * M;
Eq_dual93(l_ava)..           kai_plusM(l_ava) =g= - (1 - AL(l_ava)) * M + kai_plus(l_ava);
Eq_dual101(l_ava)..          kai_minusM(l_ava) =l= (1 - AL(l_ava)) * M + kai_minus(l_ava);
Eq_dual102(l_ava)..          kai_minusM(l_ava) =l= AL(l_ava) * M;
Eq_dual103(l_ava)..          kai_minusM(l_ava) =g= - (1 - AL(l_ava)) * M + kai_minus(l_ava);

Eq_dual11..              sum(g, AG(g)) =g= 1;
Eq_dual12..              sum(l, AL(l)) =g= 1;
Eq_dual13..              sum(g, AG(g)) + sum(l, AL(l)) =l= 2;

Model dualsp / obj_dualsp, gendual, linedual, thetadual, rdual, Eq_dual51, Eq_dual52, Eq_dual61,
                 Eq_dual62, Eq_dual71, Eq_dual72, Eq_dual81, Eq_dual82, Eq_dual91, Eq_dual92,
                 Eq_dual101, Eq_dual102, Eq_dual11, Eq_dual12, Eq_dual13, Eq_dual53, Eq_dual63, Eq_dual73, Eq_dual83, Eq_dual93, Eq_dual103 /;

*** Model the Revisited Master Problem using AG/AL information by G_avail and L_avail ***

Free Variable
         objm    Objective of Master
         Lower   lower bound ;

Equations
         objMa   Master Problem objective
         xglim0
         xllim0
         Low     Lower bound definition
         Deq0
         Lineq1
         Lineq2
         Lineq3
         Lineq4
         Llim10
         Llim20
         Llim30
         Llim40
         genlim1_10
         genlim1_20
         genlim1_30
         genlim1_40;

objMa..                        objm =e= sum(l$(cl(l)), LDATA(l, '5') * xl(l)) +
                               sum(g$cg(g), GDATA(g, 'IC') * xg(g)) + Lower;
xglim0..                       sum(g$cg(g), xg(g)) =g= 2;
xllim0..                       sum(l$cl(l), xl(l)) =g= 2;

Low(columnset)..               Lower =g= sum(g, GDATA(g, 'OC') * G_avail(g, columnset) * p(g)) + sum(d, r(d) * PC);

Deq0(n, columnset)..           sum(g$mapG(g,n), p(g)) - sum(l$mapSL(l,n), f(l)) + sum(l$mapRL(l,n), f(l))
                               - sum(d$mapD(d,n), DDATA(d)) =e= - sum(d$mapD(d,n), r(d));

Lineq1(l, columnset)$el(l)..         f(l) =g= (sum(n$mapSL(l,n), theta(n)) - sum(n$mapRL(l,n), theta(n))) / LDATA(l, '1') - M * (1-L_avail(l, columnset));
Lineq2(l, columnset)$el(l)..         f(l) =l= (sum(n$mapSL(l,n), theta(n)) - sum(n$mapRL(l,n), theta(n))) / LDATA(l, '1') + M * (1-L_avail(l, columnset));
Llim10(l, columnset)$el(l)..         f(l) =g= - L_avail(l, columnset) * LDATA(l, '4');
Llim20(l, columnset)$el(l)..         f(l) =l= L_avail(l, columnset) * LDATA(l, '4');

Lineq3(l, columnset)$cl(l)..         f(l) =g= (sum(n$mapSL(l,n), theta(n)) - sum(n$mapRL(l,n), theta(n))) / LDATA(l, '1') - M * (1-L_avail(l, columnset) * xl(l));
Lineq4(l, columnset)$cl(l)..         f(l) =l= (sum(n$mapSL(l,n), theta(n)) - sum(n$mapRL(l,n), theta(n))) / LDATA(l, '1') + M * (1-L_avail(l, columnset) * xl(l));
Llim30(l, columnset)$cl(l)..         f(l) =g= - L_avail(l, columnset) * xl(l) * LDATA(l, '4');
Llim40(l, columnset)$cl(l)..         f(l) =l= L_avail(l, columnset) * xl(l) * LDATA(l, '4');

genlim1_10(g, columnset)$eg(g)..     p(g) =l= G_avail(g, columnset) * GDATA(g, 'Pmax');
genlim1_20(g, columnset)$eg(g)..     p(g) =g= G_avail(g, columnset) * GDATA(g, 'Pmin');
genlim1_30(g, columnset)$cg(g)..     p(g) =l= G_avail(g, columnset) * xg(g) * GDATA(g, 'Pmax');
genlim1_40(g, columnset)$cg(g)..     p(g) =g= G_avail(g, columnset) * xg(g) * GDATA(g, 'Pmin');

Model Master / objMa, xglim0, xllim0, Low, Deq0, Lineq1, Lineq2, Lineq3, Lineq4, Llim10, Llim20, Llim30, Llim40, genlim1_10, genlim1_20, genlim1_30, genlim1_40 /;


Model Master_f / objMa, xglim0, xllim0, Low, Deq0, Lineq1, Lineq2, Lineq3, Lineq4, Llim10, Llim20, Llim30, Llim40, genlim1_10, genlim1_20, genlim1_30, genlim1_40, bendersf /;

*** The entire procedure of the Algorithm ***

option limrow = 1000;
Loop(itera,

         if(ord(itera) eq 1,

                 Solve Master0 using mip minimizing obj0;
                 Loop(iter,

                         loop(l, decisionl(l, iter) = xl.l(l))
                         loop(g, decisiong(g, iter) = xg.l(g))

                         Solve feasub using lp minimizing objf;

                         loop(l, alpha_upper(l, iter) = Llimcl2.m(l));
                         loop(l, alpha_lower(l, iter) = Llimcl1.m(l));
                         loop(l, beta_upper(l, iter) = Ldefcl1.m(l));
                         loop(l, beta_lower(l, iter) = Ldefcl2.m(l));
                         loop(g, gamma_upper(g, iter) = genlim2_1.m(g));
                         loop(g, gamma_lower(g, iter) = genlim2_2.m(g));
                         Vio(iter) = sum(d, r.l(d));

                         if( objf.l = 0,
                                  break;
                         );

                         cutset(iter) = yes;

                         Solve Master0_f using mip minimizing obj0;
                 );
                 cutset(iter) = no;
                 LB(itera) = obj0.l;
         );

         if(ord(itera) ge 2,

                 G_avail(g, itera) = G_avail(g, itera-1);
                 L_avail(l, itera) = L_avail(l, itera-1);

                 Display G_avail, L_avail;

                 columnset(itera) = yes;

                 Solve Master using mip minimizing objm;
                 Loop(iter,

                         loop(l, decisionl(l, iter) = xl.l(l))
                         loop(g, decisiong(g, iter) = xg.l(g))

                         Solve feasub using lp minimizing objf;

                         loop(l, alpha_upper(l, iter) = Llimcl2.m(l));
                         loop(l, alpha_lower(l, iter) = Llimcl1.m(l));
                         loop(l, beta_upper(l, iter) = Ldefcl1.m(l));
                         loop(l, beta_lower(l, iter) = Ldefcl2.m(l));
                         loop(g, gamma_upper(g, iter) = genlim2_1.m(g));
                         loop(g, gamma_lower(g, iter) = genlim2_2.m(g));
                         Vio(iter) = sum(d, r.l(d));

                         if( objf.l = 0,
                                 break;
                         );

                         cutset(iter) = yes;

                         Solve Master_f using mip minimizing objm;
                );
                cutset(iter) = no;
                LB(itera) = objm.l;
         );

         L_avail(l, itera) = L_avail0(l);
         G_avail(g, itera) = G_avail0(g);

         loop(l,
                 if(xl.l(l) = 1,
                         L_avail(l, itera) = xl.l(l));
         );

         loop(g,
                 if(xg.l(g) = 1,
                         G_avail(g, itera) = xg.l(g));
         );

         display G_avail, L_avail;

         g_ava(g) = yes$G_avail(g, itera);
         l_ava(l) = yes$L_avail(l, itera);

         display g_ava, l_ava;

         Solve dualsp using mip maximizing objdual;

         UB(itera) = objdual.l + sum(g$cg(g), GDATA(g, 'IC') * xg.l(g)) + sum(l$cl(l), LDATA(l, '5') * xl.l(l));
         display UB, LB;

         if((abs(UB(itera)-LB(itera))/UB(itera)) le epsilon,
                 break;);

         Loop(l,
                 if(AL.l(l) = 1,
                         L_avail(l, itera) = 0);
         );

         Loop(g,
                 if(AG.l(g) = 1,
                         G_avail(g, itera) = 0);
         );
);
