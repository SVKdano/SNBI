%% Vytvor ľubovoľný reťazec (napríklad ' na tomto reťazci budem testovať príkazy '), ktorý uložíte do premennej
test_string = ' na TOMTO reťazci budem testovať príkazy ';

%% Odstráňte biele znaky z konca a zo začiatku reťazca
test_sting_no_whitespaces = strtrim(test_string);
disp(test_sting_no_whitespaces)

%% Odstráňte všetky výskyty reťazca 'na'
test_string_wtihout_na = strrep(test_string, 'na', '');
disp(test_string_wtihout_na)

%% Konvertujte v reťazci všetky písmená na veľké
test_sting_upper = upper(test_string);
disp(test_sting_upper);

%% Konvertujte v reťazci všetky písmená na malé
test_string_lower = lower(test_string);
disp(test_string_lower);

%% Odstráňte podreťazec medzi tretím a šiestym znakom
test_string_withou_third_and_sixth = test_string;
test_string_withou_third_and_sixth(3:6) = '';
disp(test_string_withou_third_and_sixth);

%% Zmeňte poradie znakov v reťazci
test_string_reversed = reverse(test_string);
disp(test_string_reversed);

%% Vytvorte znakový vektor s opakovaným prekrývajúcim sa vzorom
test_string_two = 'abc 2 def 22 ghi 222 jkl 2222'

%% Vyhľadajte opakujúci sa vzor (napríklad 22)
test_string_two_vzor = strfind(test_string_two, '22');

%% Porovnajte výsledky používania funkcií strrep, replace a regexprep na nahradenie vzoru (nahraďte vzor ‚ 22 za *)
replacedStr = strrep(test_string_two, ' 22', '*');
disp(replacedStr);

replacedStr = replace(test_string_two, ' 22', '*');
disp(replacedStr);

replacedStr = regexprep(test_string_two, ' 22', '*');
disp(replacedStr);

% a) Text rozdeľte po riadkoch do poľa a nájdite riadok s najviac znakmi.
text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec viverra sodales massa id maximus.\n Maecenas id turpis malesuada, viverra libero at, dignissim elit.\n Donec at erat tempor, porta orci vel, convallis risus. \n Donec at erat tempor, porta orci vel, convallis risus'; 

lines = strsplit(text, '\n');

maxCharsLine = lines{1};
for i = 2:length(lines)
    if length(lines{i}) > length(maxCharsLine)
        maxCharsLine = lines{i};
    end
end

% b) Zistite, či text obsahuje riadok bez medzery.
containsNoSpaceLine = any(cellfun(@isempty, strfind(lines, ' ')));
disp(containsNoSpaceLine);

% c) Odstráňte riadky, ktoré majú menej ako 20 znakov.
lines(cellfun('length', lines) < 20) = [];
disp(lines);

% d) Vypíšte riadky, ktoré končia bodkou.
dotLines = lines(endsWith(lines, '.'));
disp(dotLines);

%% Definuj pole reťazcov C = {'jedna','dva','tri'}
C = {'jedna', 'dva', 'tri'};

% a) Spoj pole do jedného reťazca.
joinedStr = strjoin(C);
disp(joinedStr);

% b) Spoj pole do jedného reťazca tak, aby slová boli oddelené čiarkou.
commaSeparatedStr = strjoin(C, ',');
disp(commaSeparatedStr);

% c) Spoj pole do jedného reťazca tak, aby vznikol reťazec 'jedna + dva = tri'.
equationStr = sprintf('%s + %s = %s', C{:});
disp(equationStr);

%% Vytvorte pole reťazcov, v ktorých majú niektoré prvky koncové medzery. Reťazce môžete vytvárať pomocou dvojitých úvodzoviek. (str1 = ["Skylab"; "Mir "; "ISS "]
strings_with_end_whitespaces = ["Skylab"; "Mir "; "ISS "];

% a) Reťazce zarovnajte vpravo.
disp("LEFT")
fprintf('%0+s', strings_with_end_whitespaces);

% b) Reťazce zarovnajte vľavo.
leftAlignedStr = char(strings_with_end_whitespaces);
disp(leftAlignedStr);

% c) Reťazce zarovnajte na stred.
centerAlignedStr = char(strings_with_end_whitespaces);
disp(centerAlignedStr);