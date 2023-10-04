%%pociatocnePrikazy
%close all;
%{
clear;
clc;
%}

%% sekciaPrva
matrixA = [1 2 3 4; 1 2 3 5; 1 2 3 4];
matrixB = [2 3 4; 1 2 3; 3 4 5];
%%answer = matrixA * matrixB;

%% sekciaDva
matrixC = [1 2 3; 1 2 3; 1 2 3];
matrixD = [2 3 4; 1 2 3; 3 4 5];
answer1 = matrixC - matrixD;

%% sekciaTri
matrixE = [1 2 3; 4 5 6; 7 8 9];
answer2 = matrixE * 5;

%% ulohy
% Použite funkciu disp, na výpis ľubovoľného textu, premennej, funkcie.
disp("Vypis nejakeho textu");

% Vynásobte čísla 3 a 5 spolu s príkazom 3 * 5.
3 * 5

% Priraďte výpočet 3 * 5 premennej s názvom m.
m = 3 * 5

% Inkrementujte m zadaním príkazu m = m + 1.
m = m + 1

% Vytvorite premennú s názvom y, ktorá má hodnotu m / 2.
y = m / 2

% Zadajte k = 8-2 a na konci dajte bodkočiarkou.
k = 8 - 2;

% stlačiť šípku nahor, aby ste sa vrátili k príkazu m = 3 * 5 a upravte príkaz tak, aby bol m = 3 * k.
m1 = 3 * k;

% Skúste vytvoriť premennú s názvom x s hodnotou π / 2.
x = pi / 2;

% Skúste použiť funkciu sin na výpočet sínus premennej x. Výsledok priraďte premennej s názvom y.
y = sin(x);

% Skúste použiť funkciu sqrt na výpočet druhej odmocniny -9. Výsledok priraďte premennej s názvom z.
z = sqrt(-9);

% Vynásobte 3 krát 8 a výsledok vydeľte rozdielom medzi 13 a 7.
rozdiel = z - m1;
ans1 = (3 * 8) / rozdiel;

% Vypočítajte a porovnajte výsledky týchto výpočtov.
a1 = log(power(5,2));
b1 = 2 * log(5);
resultOfCompare = a1 ~= b1;

% Zadajte do príkazového okna logický výraz 4<5.
resultOfCompare1 = 4 < 5;

% Zadajte do príkazového okna logický výraz 4>5.
resultOfCompare2 = 4 > 5;

% Zadajte do príkazového okna 1&0 (logický and) a príkaz 1|0 (logický or).
resultOfCompare3 = 1&0;
resultOfCompare4 = 1|0;
