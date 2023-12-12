function zapocet()
    nacitane = 0;
    disp('--------Vitajte----------\n')
    disp('Voľba 1 = Vypísanie štruktúry\n')
    disp('Voľba 2 = Vypisanie čísel od do s určitým krokom\n')
    disp('Voľba 3 = Najčastejšie číslo\n')
    disp('Voľba 4 = Násobenie matíc\n')
    disp('Voľba 5 = Vypocet obsahu trojuholnika\n')
    disp('Voľba 6 = Koniec programu\n')

    while true

        nacitane = input('Zadaj cislo od 1 po 5 pre funkcie alebo 6 ukoncenie:\n');

        switch nacitane
            case 1
                functionOne()
            case 2
                functionTwo()
            case 3
                functionThree()
            case 4
                A = [1, 2, 3; 4, 5, 6]; %3x3
                B = [7, 8; 9, 10; 11, 12]; %3x2

                matrix = functionFour(A, B);
                disp(matrix);
            case 5
                dajObsah = @(v,a) (1/2) * v * a;

                strana = input('Zadaj dlzku strany: ');
                vyska = input('Zadaj dlzku vysky: ');

                obsah = dajObsah(strana, vyska);
                disp(['Obsah trojuhlonika je: ', num2str(obsah)]);

                obsahSymbol = sym(dajObsah(strana, vyska));
                disp(['Obsah v symbolickom tvare je: ', char(obsahSymbol)]);
            case 6
                disp('Koniec aplikácie.');
                return;
            otherwise
                disp('Neplatny vstup')
        end
    end
end

function functionOne()
    zoznam_osob = [
        struct('Meno', 'Daniel', 'Priezvisko', 'Lieskovsky', 'vek', 23),
        struct('Meno', 'Jozef', 'Priezvisko', 'Mrkva', 'vek', 60),
        struct('Meno', 'Jano', 'Priezvisko', 'Hrach', 'vek', 40)
        ];

    for i=1:numel(zoznam_osob)
        meno = zoznam_osob(i).Meno;
        priezvisko = zoznam_osob(i).Priezvisko;
        vek = zoznam_osob(i).vek;

        disp(['Osoba: '  meno ' ' priezvisko ' má ' num2str(vek) ' rokov.']);
    end
end

function functionTwo()

    min = input("Zadaj minimalnu hodnotu:\n");
    max = input("Zadaj maximalnu hodnotu:\n");
    step = input("Zadaj hodnotu kroku:\n");

    % dovolene riesit len 1 sposobom (cez :)
    vektor_cisel = min:step:max;

    disp(vektor_cisel);
end

function functionThree()
    inputVecotr = input('Zadaj čísla oddelené medzerami: ', 's');

    cislaVector = str2num(inputVecotr);

    disp(['Najcastejsie cislo v zadanom vectore je: ', num2str(mode(cislaVector))]);
end

function matrix = functionFour(firstMatrix, secondMatrix)
    [rows1, columns1] = size(firstMatrix);
    [rows2, columns2] = size(secondMatrix);

    if columns1 ~= rows2
        disp('Nemožno násobiť dané matice')
        matrix = zeros;
    else
        matrix = zeros(rows1, columns2);

        for i = 1:rows1
            for j = 1:columns2
                for k = 1:rows2
                    matrix(i,j) = matrix(i,j) + firstMatrix(i, k) * secondMatrix(k, j);
                end
            end
        end
    end
end

