%%Pomocou príkazu pwd zistite váš aktuálny pracovný adresár.
disp(pwd);

%%Pomocou príkazu mkdir si vytvorte priečinok.
folder_name = "testFolder";
mkdir(folder_name);

%%Vytvor test file
fileName = 'novy_subor.txt';
fileID = fopen(fileName, 'w');
fclose(fileID);

%%Vytvorený súbor prekopírujte do vytvoreného priečinka.
copyfile(fileName, folder_name);

%%Vytvorený súbor prekopírujte do vytvoreného priečinka pod iným názvom.
newFileName = 'novy_subor_kopie.txt';
copyfile(fileName, fullfile(folder_name, newFileName));

%%Následne zmažte súbory v priečinku aj samotný priečinok (príkazy delete, rmdir)
delete(fullfile(folder_name, '*.txt'));
rmdir(folder_name);

%% Načítajte textový súbor zo zadanej cesty
filePath = 'subor.txt';
fileContent = fileread(filePath);
disp(['Obsah súboru: ' fileContent]);

%%Načítajte všetky textové súbory v priečinku
folderPath = 'cesta_k_priecinku';
files = dir(fullfile(folderPath, '*.txt'));

for i = 1:length(files)
    filePath = fullfile(folderPath, files(i).name);
    fileContent = fileread(filePath);
    disp(['Obsah súboru ' files(i).name ': ' fileContent]);
end

%% Vytvorte skript, ktorý prehľadá všetky súbory na zadanej ceste a vypíše len skryté (použite príkaz fileattrib)
files = dir;

% Loop through each file and display information about hidden files
for i = 1:length(files)
    file = files(i).name;
    
    % Use fileattrib to get file attributes
    attributes = fileattrib(file);
    
    % Check if the file is hidden
    if attributes.hidden
        disp(['Hidden file: ', file]);
        % You can also display more information if needed, such as attributes.date
    end
end