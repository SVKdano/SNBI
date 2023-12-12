classdef Dokumentacia < handle
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (SetAccess = protected)
        meno
        priezvisko
        vek
    end

    properties (Constant)
        MAX_AGE = 125;
    end
    
    methods
        function obj = Dokumentacia(inputMeno, inputPriezvisko)
            obj.meno = inputMeno;
            obj.priezvisko = inputPriezvisko;
            obj.vek = randi([0,100]);
        end

        function vypisInformacie(obj)
            disp(['Meno: ', obj.meno]);
            disp(['Priezvisko: ', obj.priezvisko]);
            disp(['Vek: ', num2str(obj.vek)]);
        end

        function delete(obj)
             disp('deleting');
        end

        function obj = nastavVek(obj, novyVek)
            obj.vek = novyVek;
        end
    end
end

