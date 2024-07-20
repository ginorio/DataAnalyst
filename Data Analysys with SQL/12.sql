/*

	ESERCIZIO
	
	1 - Calcolare l'età media degli utenti che hanno un indirizzo e-mail (anche PEC)
	2 - Calcolare, per ogni utente, il numero di recapiti che ha (se non ne ha, specificare 0)


*/

select 
avg(cont.eta)
from 
rubrica.contatto cont inner join rubrica.recapito rec
on cont.id_contatto = rec.id_contatto
where rec.tipo_recapito = 'e-mail' 

select 
cont.id_contatto,nome,cognome,count(id_recapito)
from 
rubrica.contatto cont 
left join rubrica.recapito rec
on cont.id_contatto = rec.id_contatto
group by cont.id_contatto,nome,cognome

