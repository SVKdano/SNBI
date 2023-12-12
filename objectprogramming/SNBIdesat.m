clear;
dokument = Dokumentacia('Daniel', 'Lieskovsky');

dokument.vypisInformacie();
dokument.delete();

dokumentacia = ZdravDok('Dando', 'Lieskovsky');
dokumentacia.pridajZaznam('Odstranenie prebytočného tuku', 'Bez zmeny');
dokumentacia.vypisZaznamy();