
%% V okne current folder si vytvorte nový priečinok. V tomto priečinku si vytvorte novú funkciu. Súbor aj funkciu nazvite fun. Táto funkcia vypíše 5 krát slovo fun. Funkciu zavolajte cez príkazový riadok.
function fun()
    nacitane = 0;

    while true

        nacitane = input('Zadaj cislo od 1 po 4 pre funkcie alebo 5 ukoncenie:\n');

        switch nacitane
            case 1
                functionOne()
            case 2
                functionTwo()
            case 3
                functionThree()
            case 4
                dajObsah = @(v,a) (1/2) * v * a;
                strana = input('Zadaj dlzku strany: ');
                vyska = input('Zadaj dlzku vysky: ');
                obsah = dajObsah(strana, vyska);
                disp(['Obsah trojuhlonika je: ', num2str(obsah)]);
                obsahSymbol = sym(dajObsah(strana, vyska));
                disp(['Obsah v symbolickom tvare je: ', char(obsahSymbol)]);
            case 5
                disp('Koniec aplikácie.');
                return;
            otherwise
                disp('Neplatny vstup')

        end

    end

end

function functionOne()
    disp('function 1')

    zoznam_osob = [
        struct('Meno', 'Daniel', 'Priezvisko', 'Lieskovsky', 'vek', 23),
        struct('Meno', 'Jozef', 'Priezvisko', 'Mrkva', 'vek', 60),
        struct('Meno', 'Tvoja', 'Priezvisko', 'Mama', 'vek', 40)
        ];

    for i=1:numel(zoznam_osob)
        meno = zoznam_osob(i).Meno;
        priezvisko = zoznam_osob(i).Priezvisko;
        vek = zoznam_osob(i).vek;

        disp(['Osoba: '  meno ' ' priezvisko ' má ' num2str(vek) ' rokov.']);
    end
end

function functionTwo()
    disp('function 2')

    min = input("Zadaj minimalnu hodnotu:\n");
    max = input("Zadaj maximalnu hodnotu:\n");
    step = input("Zadaj hodnotu kroku:\n");

    vektor_cisel = min:step:max;

    disp(vektor_cisel);
end

function functionThree()
    disp('function 3')
end





