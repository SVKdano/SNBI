geetings('Daniel');
[~, Obsah] = areaAndPerimeterOfSquare(5);
disp(Obsah);
[Obvod, ~] = areaAndPerimeterOfSquare(6);
disp(Obvod);
curdate = currnetDate();
disp(curdate);
factorOfNum = factorial(5);
disp(factorOfNum);
arrayOfWords = {'Daniel', 'sa', 'nepripravoval', 'na', 'dnešný', 'zápočet'};
sentenceOfWords = StringBuilder(arrayOfWords);
disp(sentenceOfWords);
[squareOfAs, totalAs] = squareDraw('A', 4);
disp(squareOfAs);
lengthOfC = hypotenuse(4,5);
disp(lengthOfC);
res1 = calculator(2, '+', 3);
disp(res1);
res2 = calculator(2, '-', 3);
disp(res2);
res3 = calculator(2, '*', 4);
disp(res3);
res4 = calculator(2, '/', 4);
disp(res4);
res5 = calculator(2, 'a', 3);
disp(res5);
text = "Yeah you know my man Yeah Yeah";
[most, count] = mostUsedWord(text);
disp(most);
Quiz();

%% Vytvorte funkciu, ktorej vstupom bude vaše meno, nebude mať výstup, ale vypíše Dobrý deň pán/pani X.
function geetings(name)
    fprintf('Hello %s\n', name);
end

%% Vytvor funkciu, pre výpočet obsahu a obvodu štvorca
function [o,S] = areaAndPerimeterOfSquare(a)
    S = a*a;
    o = 4*a;
end

%% Vytvorte funkciu, ktorej výstupom bude dnešný dátum.
function [current] = currnetDate()
 current = datetime("today","Format","d. M. uuuu");
end

%% Vytvorte funkciu, ktorej vstupom bude číslo a výstupom faktoriál tohto čísla.
function [vysledok] = factorial(cislo)
    if cislo == 0
        vysledok = 1; % Faktoriál čísla 0 je definovaný ako 1.
    else
        vysledok = 1;
        for i = 1:cislo
            vysledok = vysledok * i;
        end
    end
end

%% Vytvorte funkciu na skladanie viet. Prvým parametrom bude počet slov. Ako ďalšie parametre budú zadané slová a výstupom bude veta.
function [sentence] = StringBuilder(array)
    sentence = strjoin(array);
    sentence = [sentence, '.'];
end

%% Vytvorte funkciu na vykreslenie štvorca zo znakov. Vstupom bude veľkosť strany štvorca a znak, z ktorého bude štvorec vytvorený. Výstupom bude počet použitých znakov a textová premenná so štvorcom.
function [squareText, totalChars] = squareDraw(char, length)
    squareText = repmat(char, length, length);

    totalChars = length^2;
end

%% Vytvorte funkciu pre výpočet prepony pravouhlého trojuholníka. Druhú mocninu vyrátajte pomocou vnorenej funkcie.
function [lengthOfHypotenuse] = hypotenuse(a,b)

    function secondpower = powerToTwo(num)
        secondpower = num^2;
    end

    lengthOfHypotenuse = sqrt(powerToTwo(a) + powerToTwo(b));
end

%% Vytvorte funkciu kalkulačka. Funkcia vracia číselný výsledok. Čísla a matematické operácie medzi nimi zadávate ako vstupné parametre (1,’+’,’2’). Matematické operácie plus, mínus, krát a delené implementované pomocou lokálnych funkcií.
function [finalResult] = calculator(num1, operation, num2)

    function [result] = localSum()
        result = num1 + num2;
    end

    function [result] = localMinus()
        result = num1 - num2;
    end

    function [result] = localMultipy()
        result = num1 * num2;
    end

    function [result] = localDiv()
        result = num1 / num2;
    end

    switch operation
        case '+'
            finalResult = localSum();
        case '-'
            finalResult = localMinus();
        case '*'
            finalResult = localMultipy();
        case '/'
            finalResult = localDiv();
        otherwise
            disp('Unidentified operation');
            finalResult = 0;
    end
end

%% Vytvorte funkciu, ktorá nájde vlastné vektory matice, pokiaľ je vstupná matica štvorcová. Pokiaľ matica nie je štvorcová, tak funkcia ju doplní nulovými riadkami/stĺpcami na štvorcovú a potom nájde jej vlastné vektory.
function ownVectors = findOwnvectors(matrix)
    [m, n] = size(matrix);
    
    if m == n
        [vlastneHodnoty, vlastneVektory] = eig(matica);
    else
        if m > n
            rozdiel = m - n;
            doplnenie = zeros(n, rozdiel);
            matica = [matica, doplnenie];
        else
            rozdiel = n - m;
            doplnenie = zeros(rozdiel, m);
            matica = [matica; doplnenie];
        end

        [vlastneHodnoty, vlastneVektory] = eig(matica);
    end
    
    vlastneVektory = vlastneVektory(:, 1:m);
end

%% Vytvorte funkciu, ktorá bude mať na vstupe text. Funkcia text rozdelí na slová, nájde najčastejšie vyskytujúce sa slovo. Výstup funkcie bude nájdené slovo spolu s počtom jeho výskytov.
function [mostUsedWord, countOfUsage] = mostUsedWord(text)
    words = strsplit(text);

    mostUsedWord = '';
    countOfUsage = 0;

    uniqueWords = unique(words);
    for i = 1:length(uniqueWords)
        word = uniqueWords{i};
        usages = sum(strcmp(word, uniqueWords));
        if usages > countOfUsage
            mostUsedWord = word;
            countOfUsage = usages;
        end
    end
end


%% QUIZ
function Quiz()
    skore = 0;
    rozsah = 10;

    while true
        cislo1 = randi(rozsah);
        cislo2 = randi(rozsah);

        spravnaOdpoved = cislo1 + cislo2;

        fprintf('Sčítaj: %d + %d = ', cislo1, cislo2);

        odpoved = input('');

        if odpoved == spravnaOdpoved
            skore = skore + 1;
            fprintf('Správne! Skóre: %d\n', skore);
            rozsah = rozsah + 1;
        else
            fprintf('Nesprávne. Koniec hry. Skóre: %d\n', skore);
            break;
        end
    end
end
