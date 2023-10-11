%% Vytvorte symbolické číslo 3/9.
sym(3/9);

%% Vytvorte jedným príkazom symbolické premenné a, b, c a priraďte im ľubovoľné hodnoty.
syms a b c;
a = sym(10/3);
b = sym(11/2);
c = sym(15/6);

%% Vytvorte riadkový vektor obsahujúci symbolické premenné x1 až x10 a priraďte ich do premennej X.
X = sym("x", [1 10]);

%% Vypíšte si premenné vo workspace.
whos;
disp(a);
disp(b);
disp(c);

%% Vytvorte premennú z, do ktorej priradíte výsledok výpočtu 5 – 37. Potom vytvorte zs ako symbolický výraz 5 – 37 a porovnajte rozdiel.
z = 5 - 37;
zs = sym(5 -37);

%% vykonajte výpočet zs2 - 7*zs +5.
vypocet = power(zs, 2) - 7*zs + 5;

%% Vykonajte výpočet z2 - 7*z +5. Porovnajte rozdiely
vypocet1 = power(z, 2) - 7*z + 5;

%% Vytvorte premennú m a priraďte jej a+b. Zadajte syms m a skontrolujte hodnotu m
m = a + b;

%% Vyriešte kvadratickú rovnicu x^2+2x+3 pomocou solve a vpasolve.
syms xsolve
eq = xsolve^2 + 2*xsolve + 3 == 0;
solutionsSolve = solve(eq, xsolve);

syms xvpasolve
eq = xvpasolve^2 + 2*xvpasolve + 3 == 0;
solutionsVpasolve = vpasolve(eq, xvpasolve);

%% Vytvorte symbolickú funkciu f(x), ktorá bude schopná vyrátať kvadratickú rovnicu x^2+2x+3
syms xfunction;

f(xfunction) = xfunction^2 + 2*xfunction + 3;

x_val = f(2);

%% Pomocou funkcie pretty naformátujte vopred definovaný symbolický výraz (polynóm)
pretty(f);

%% Rozložte číslo 277945762500 na prvočísla
disp(factor(sym(277945762500)));

%% Definujte a zjednodušte výraz 16 pomocou funkcie simplify
syms sixteen;
sixteen = sym(16);

disp(simplify(sixteen));

%% Definujte a zjednodušte výraz sin(x)^2 +cos(x)^2 pomocou funkcie simplify
syms jeden;
expr = sin(jeden)^2 + cos(jeden)^2;

disp(simplify(expr));

%% Definujte a zjednodušte výraz (x^2+5x+6)/(x+2) pomocou funkcie simplify
syms premenna;
exprZlomok = sin(premenna)^2 + cos(premenna)^2;

disp(simplify(exprZlomok));

%% Definujte a zjednodušte výraz (x+1)*(y+1) pomocou funkcie collect
syms premennaX premmennaY;
exprNasobenie = (premennaX + 1)*(premmennaY + 1);

disp(collect(exprNasobenie));

%% Definujte a zjednodušte výraz (exp(x)+x)*(x+2) pomocou funkcie collect
syms premennaX1;
exprNasobenie1 = (exp(premennaX1)+premennaX1)*(premennaX1+2);

disp(collect(exprNasobenie1));

%% Definujte a zjednodušte výraz a^2-b^2 pomocou funkcie factor
syms premennaA premennaB;
exprMinus = premennaA^2-premennaB^2;

disp(factor(exprMinus));

%% Definujte a zjednodušte výraz a^3-b^3 pomocou funkcie factor
syms premennaA1 premennaB1;
exprMinus1 = premennaA1^3-premennaB1^3;

disp(factor(exprMinus1));

%% Definujte a zjednodušte výraz x^2+x pomocou funkcie horner
syms premennaXH;
exprHorner = premennaXH^2+premennaXH;

disp(horner(exprHorner));

%% Definujte a zjednodušte výraz y^3+2y pomocou funkcie horner
syms premennaYH;
exprHorner1 = premennaYH^3+2*premennaYH;

disp(horner(exprHorner1));

%% Vytvorte symbolickú premennú u a pomocou funkcie ezplot vykreslite cos(u)
syms u;
ezplot(cos(u), [-2*pi, 2*pi]);
xlabel('u'); 
ylabel('cos(u)');
title('Graf funkcie cos(u)');

%% Vytvorte 2 symbolické premenné k,l a pomocou funkcie ezplot vykreslite x^2-y^4
syms k l;
ezplot(k^2-l^4, [-10,10]);
xlabel('k l'); 
ylabel('x^2-y^4');
title('Graf funkcie x^2-y^4');

%% Vytvorte symbolickú premennú s a pomocou funkcie ezplot vykreslite cos(s) a sin(s) pre s z intervalu 0.. 2*pi
syms s;
ezplot(cos(s), [0, 2*pi]);
xlabel('s'); 
ylabel('cos(s)');
title('Graf funkcie cos(u)');

ezplot(sin(s), [0, 2*pi]);
xlabel('s'); 
ylabel('sin(s)');
title('Graf funkcie sin(u)');

%% Použite symbolické premenné k,l a vykreslite x^2-y^4 pomocou funkcie ezsurf
syms k1 l1;
ezsurf(k1^2-l1^4, [-10,10]);
xlabel('k l'); 
ylabel('x^2-y^4');
title('Graf funkcie x^2-y^4');

%% Definuj výraz 0.8x^3 + 4exp(0.5x) so symbolickou premennou x. Výraz zderivujte a výsledok priraďte do nového výrazu. Následne vykonajte substitúciu x za (y-1)

syms x y;

expr = 0.8*x^3 + 4*exp(0.5*x);

derivative_expr = diff(expr, x);

% Substitúcia x za (y-1)
substituted_expr = subs(derivative_expr, x, y-1);
