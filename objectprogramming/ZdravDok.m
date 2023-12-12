classdef ZdravDok < Dokumentacia
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        zaznamy
    end
    
    methods
        function obj = ZdravDok(inputMeno, inputPriezvisko)
            obj@Dokumentacia(inputMeno, inputPriezvisko);
            
            obj.zaznamy = {};
        end
        
        function pridajZaznam(obj, typZakroku, opis)
            novyZaznam = Zaznam(typZakroku, opis);
            obj.zaznamy{end + 1} = novyZaznam;
        end

        function vypisZaznamy(obj)
            disp('Záznamy v dokumentácii:');
            for i = 1:length(obj.zaznamy)
                disp(['--- Záznam ', num2str(i), ' ---']);
                obj.zaznamy{i}.vypisInformacie();
            end
        end
    end
end

