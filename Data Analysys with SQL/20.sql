/*

	ESERCIZIO
	
	1 - Creare una tabella temporanea con la stessa struttura della tabella "contatto"
	2 - Modificare la data di creazione fissandola a 30 giorni fa per tutti i contatti di età inferiore a 40 anni


*/

create temporary table rubrica.tmpcont as
select * from rubrica.contatto

update rubrica.tmpcont
set data_creazione = date_add(current_date(),interval -30 day)
where eta < 40

select * from tmpcont