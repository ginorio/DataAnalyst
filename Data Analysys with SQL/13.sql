/*

	ESERCIZIO
	
	1 - Estrarre gli identificativi dei contatti che hanno almeno un recapito di qualsiasi tipo


*/
select * from rubrica.recapito

select * from rubrica.contatto

select distinct cont.* 
from rubrica.contatto cont inner join rubrica.recapito rec
on cont.id_contatto = rec.id_contatto

