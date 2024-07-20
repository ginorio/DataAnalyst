/*

	ESERCIZIO
	
	1 - Selezionare tutti i contatti di età superiore ai 30 anni
	2 - Selezionare tutti i contatti il cui nome comincia con la lettera "A"
	3 - Selezionare tutti i contatti il cui nome anno di inserimento è 2020 o 2018
	4 - Selezionare tutti i contatti il cui nome anno di inserimento è successivo
		 al 2013 (compreso), escludendo però il 2018	

*/

select * 
from rubrica.contatto
where eta > 30

select * 
from rubrica.contatto
where nome like 'A%'

select * 
from rubrica.contatto
where year(data_creazione) in (2018, 2020) 

select * 
from rubrica.contatto
where year(data_creazione) >= 2013 and year(data_creazione) <> 2018