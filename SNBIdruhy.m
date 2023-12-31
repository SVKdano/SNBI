clear;
clc;

%%Definuj pole troch čísel 1,2,3.
poleA = [1 2 3];

%%Definuj stĺpcový vektor troch čísel 1,2,3.
stlpcovyVektorA = [1;2;3];

%%Definuj maticu, kde v prvom riadku je 1,2,3 a druhom 4,5,6.
matrixA = [1 2 3; 4 5 6];

%%Zopakuj prvé tri úlohy s použitím operátora dvojbodky.
poleB = [1:3];
stlpcovyVektorB = (1:3)';
matrixB = [1:3;4:6];

%%Vytvor náhodnú maticu A s rozmerom 10x10.
matrixRandom = rand(10,10);

%%Vytvor vektor, kde prvý prvok bude definovaný ako absolútna hodnota -4 a druhý bude definovaný ako druhá mocnina 4. Vektor vytvor v jednom príkaze.
vectorABSandPOW = [abs(-4) power(4,2)];

%%Vypíš prvok v piatom riadku a siedmom stĺpci matice A.
display(matrixRandom(5,7));

%%Vypíš prvok v poslednom riadku a druhom stĺpci matice A (použi kľúčové slovo end).
display(matrixRandom(end, 2));

%%Vypíš prvok v predposlednom riadku a predposlednom stĺpci (end dovoľuje aritmetické operácie).
display(matrixRandom(end-1,end-1));

%%Vytvor vektor x, ktorý bude obsahovať všetky prvky z druhého riadku matice A.
vectorX = matrixRandom(2,:);

%%Vytvor vektor x, ktorý bude obsahovať všetky prvky z druhého stĺpca matice A.
vectorXX = matrixRandom(:,2);

%%Vytvor maticu x, ktorá bude obsahovať prvé tri riadky matice A.
matrixX = matrixRandom(1:3,:);

%%Definuj ľubovoľný vektor b dĺžky 10. Vytvor y, ktoré bude obsahovať 6. prvok vektoru y.
vectorB = rand(1,10);
vectorY = vectorB(6);

%%Definuj ľubovoľný vektor b dĺžky 10. Vytvor vektor y, ktorý bude obsahovať prvky vektoru b od tretieho po posledný.
vectorBB = rand(1,10);
vectorYY = vectorBB(3:end);

%%Vytvor jednotkovú maticu(na diagonále sú jednotky) s rozmerom 4x4. Ku každému elementu tejto matice pričítajte číslo 4.
onesMatrix = eye(4);
onesMatrix4 = onesMatrix + 4;
onesMatrix4(2,1) = onesMatrix4(2,1) + 10;

%%Maticu z predchádzajúcej úlohy transponujte
transOnesMatrix4 = onesMatrix4';

%%Vytvorte maticu náhodných čísel, ktorú prenásobíte jej transponovanou maticou.
matrixRandomR = rand(4,4);
matrixRandomR = matrixRandomR .* transOnesMatrix4;

%%Vytvorte dva riadkové vektory.
vectorOne = [5 6 7 8];
vectorTwo = [1 2 3 4];

%%Vytvorte stĺpcový vektor.
stlpcovyVektorA = [1;2;3];

%%Vytvorte pole po sebe idúcich čísel, bez toho aby ste ich vymenovali. Začiatok a počet si určite samostatne.
arrayRandom = [1:5];

%%Vytvorte pole po sebe idúcich čísel, pričom každé ďalšie číslo je od predchádzajúceho čísla o 4 väčšie. Pole vytvorte bez toho aby vymenovali jeho prvky. Začiatok a počet si určite samostatne.
arrayRandomR = [1:3:13];

%%Vytvorte pole siedmich čísel, ktoré sú rovnomerne rozložené do intervalu <0,1>. To znamená, že prvé číslo je 0 a posledné je 1. Rozdiel dvoch po sebe idúcich čísel musí byť vždy rovnaký.
arrayRandomZeroToOne = linspace(0,1,7);

%%Potvrďte, že matica prenásobená jej inverznou maticou vráti jednotkovú maticu (na diagonále jednotky).
matrixRandomRR = rand(3,3);
matrixRandomRRTrans = inv(matrixRandomRR);
matrixOfMultiplication = matrixRandomRR * matrixRandomRRTrans;
display(matrixOfMultiplication);

%%Použite príkaz format long a úlohu 9 vykonajte ešte raz. Pozrite sa, čo sa zmenilo.
format long;
display(matrixRandom(end-1,end-1))
format short;
display(matrixRandom(end-1,end-1))

%%Vytvorte maticu núl s rozmerom 5x2 a zlúčte ju s náhodnou maticou s rozmerom 5x3. Maticu transformujte na riedky formát.
matrixZeros = zeros(5,2);
matrixRandomRRR = rand(5,3);
matrixMerged = [matrixZeros, matrixRandomRRR];
matrixSparse = sparse(matrixMerged);

%Vytvor štruktúru pacient s nasledujúcimi poliami: meno, priezvisko, vek, výška, hmotnosť.
pacient = struct('meno', '', 'priezvisko', '', 'vek', 0, 'vyska', 0.0, 'hmotnost', 0.0);

zaznam1 = pacient;
zaznam1.meno = 'Janko';
zaznam1.priezvisko = 'Hrasko';
zaznam1.vek = 30;
zaznam1.vyska = 180.0;
zaznam1.hmotnost = 75.5;

zaznam2 = pacient;
zaznam2.meno = 'Jozko';
zaznam2.priezvisko = 'Vajda';
zaznam2.vek = 25;
zaznam2.vyska = 165.0;
zaznam2.hmotnost = 60.0;

zaznam3 = pacient;
zaznam3.meno = 'Jozko';
zaznam3.priezvisko = 'Procko';
zaznam3.vek = 44;
zaznam3.vyska = 190.0;
zaznam3.hmotnost = 100.0;

zaznam4 = pacient;
zaznam4.meno = 'Iveta';
zaznam4.priezvisko = 'Radicova';
zaznam4.vek = 52;
zaznam4.vyska = 160.0;
zaznam4.hmotnost = 55.0;

zaznam5 = pacient;
zaznam5.meno = 'Boris';
zaznam5.priezvisko = 'Kolla';
zaznam5.vek = 55;
zaznam5.vyska = 170.0;
zaznam5.hmotnost = 89.0;

zaznam6 = pacient;
zaznam6.meno = 'Kvetka';
zaznam6.priezvisko = 'Horvatova';
zaznam6.vek = 40;
zaznam6.vyska = 155.0;
zaznam6.hmotnost = 58.0;


zaznam7 = pacient;
zaznam7.meno = 'Robert';
zaznam7.priezvisko = 'Fico';
zaznam7.vek = 58;
zaznam7.vyska = 185.0;
zaznam7.hmotnost = 99.0;

zaznamy = [zaznam1, zaznam2, zaznam3, zaznam4, zaznam5, zaznam6, zaznam7];

zaznamy_pacientov = [
    struct('meno', 'Janko', 'priezvisko', 'Hrasko', 'vek', 30, 'vyska', 180.0, 'hmotnost', 75.5),
    struct('meno', 'Jozko', 'priezvisko', 'Vajda', 'vek', 25, 'vyska', 165.0, 'hmotnost', 60.0),
    struct('meno', 'Jozko', 'priezvisko', 'Procko', 'vek', 44, 'vyska', 190.0, 'hmotnost', 100.0),
    struct('meno', 'Iveta', 'priezvisko', 'Radicova', 'vek', 52, 'vyska', 160.0, 'hmotnost', 55.0),
    struct('meno', 'Boris', 'priezvisko', 'Kolla', 'vek', 55, 'vyska', 170.0, 'hmotnost', 89.0),
    struct('meno', 'Kvetka', 'priezvisko', 'Horvatova', 'vek', 40, 'vyska', 155.0, 'hmotnost', 58.0),
    struct('meno', 'Robert', 'priezvisko', 'Fico', 'vek', 58, 'vyska', 185.0, 'hmotnost', 99.0)
];

%%Vymažte 5. záznam
zaznamy(5) = [];

%%Pridajte pole: pocet deti
pacient = struct('meno', '', 'priezvisko', '', 'vek', 0, 'vyska', 0.0, 'hmotnost', 0.0, 'pocet_deti', 0);

zaznamy_pacientov = [
    struct('meno', 'Janko', 'priezvisko', 'Hrasko', 'vek', 30, 'vyska', 180.0, 'hmotnost', 75.5, 'pocet_deti', 3),
    struct('meno', 'Jozko', 'priezvisko', 'Vajda', 'vek', 25, 'vyska', 165.0, 'hmotnost', 60.0, 'pocet_deti', 2),
    struct('meno', 'Jozko', 'priezvisko', 'Procko', 'vek', 44, 'vyska', 190.0, 'hmotnost', 100.0, 'pocet_deti', 0),
    struct('meno', 'Iveta', 'priezvisko', 'Radicova', 'vek', 52, 'vyska', 160.0, 'hmotnost', 55.0,'pocet_deti', 1),
    struct('meno', 'Boris', 'priezvisko', 'Kolla', 'vek', 55, 'vyska', 170.0, 'hmotnost', 89.0, 'pocet_deti', 12),
    struct('meno', 'Kvetka', 'priezvisko', 'Horvatova', 'vek', 40, 'vyska', 155.0, 'hmotnost', 58.0, 'pocet_deti', 0),
    struct('meno', 'Robert', 'priezvisko', 'Fico', 'vek', 58, 'vyska', 185.0, 'hmotnost', 99.0,'pocet_deti', 1)
];

%%Vypíšte zoznam všetkých polí štruktúry
display(fieldnames(zaznamy_pacientov(1)));

%%Odstránte pole vek
for i = 1:length(zaznamy_pacientov)
    zaznamy_pacientov(i).vek = 0;
end

%%Pridajte pole test. Každému pacientovi priraďte do tohto poľa pole 3 nádodne generovaných čísel od 0 po 2.
pacient = struct('meno', '', 'priezvisko', '', 'vek', 0, 'vyska', 0.0, 'hmotnost', 0.0, 'pocet_deti', 0, 'testArray', []);

zaznamy_pacientov = [
    struct('meno', 'Janko', 'priezvisko', 'Hrasko', 'vek', 30, 'vyska', 180.0, 'hmotnost', 75.5, 'pocet_deti', 3, 'testArray', randi([0, 2], 1, 3)),
    struct('meno', 'Jozko', 'priezvisko', 'Vajda', 'vek', 25, 'vyska', 165.0, 'hmotnost', 60.0, 'pocet_deti', 2, 'testArray', randi([0, 2], 1, 3)),
    struct('meno', 'Jozko', 'priezvisko', 'Procko', 'vek', 44, 'vyska', 190.0, 'hmotnost', 100.0, 'pocet_deti', 0, 'testArray', randi([0, 2], 1, 3)),
    struct('meno', 'Iveta', 'priezvisko', 'Radicova', 'vek', 52, 'vyska', 160.0, 'hmotnost', 55.0,'pocet_deti', 1, 'testArray', randi([0, 2], 1, 3)),
    struct('meno', 'Boris', 'priezvisko', 'Kolla', 'vek', 55, 'vyska', 170.0, 'hmotnost', 89.0, 'pocet_deti', 12, 'testArray', randi([0, 2], 1, 3)),
    struct('meno', 'Kvetka', 'priezvisko', 'Horvatova', 'vek', 40, 'vyska', 155.0, 'hmotnost', 58.0, 'pocet_deti', 0, 'testArray',  randi([0, 2], 1, 3)),
    struct('meno', 'Robert', 'priezvisko', 'Fico', 'vek', 58, 'vyska', 185.0, 'hmotnost', 99.0,'pocet_deti', 1, 'testArray',  randi([0, 2], 1, 3))
];
