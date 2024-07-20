/*

	ESERCIZIO
	
	1 - Intersecare l'insieme di contatti creati dopo il 2010 con l'insieme di contatti di età maggiore di 35 anni
	2 - Ripetere l'esercizio con union, union all e minus


*/

select *
from rubrica.contatto
where year(data_creazione) > 2010 and eta > 35

select * from rubrica.contatto where year(data_creazione) > 2010 
intersect
select * from rubrica.contatto where eta > 35

select * from rubrica.contatto where year(data_creazione) > 2010 
union
select * from rubrica.contatto where eta > 35

select * from rubrica.contatto where year(data_creazione) > 2010 
union all
select * from rubrica.contatto where eta > 35

select * from rubrica.contatto where year(data_creazione) > 2010 
except
select * from rubrica.contatto where eta > 35