classdef Zaznam
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        typZakroku
        opis
    end
    
    methods
        function obj = Zaznam(inputTypZakroku, inputOpis)
            obj.typZakroku = inputTypZakroku;
            obj.opis = inputOpis;
        end

        function vypisInformacie(obj)
            disp(['Typ zákroku: ', obj.typZakroku]);
            disp(['Opis: ', obj.opis]);
        end
    end
end

