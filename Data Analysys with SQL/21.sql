/*

	ESERCIZIO
	
	1 - Creare una tabella temporanea con la stessa struttura della tabella "contatto"
	2 - Cancellare tutti i record dei contatti di età inferiore a 40 anni


*/

create temporary table rubrica.tmpcont as
select * from rubrica.contatto

delete from rubrica.tmpcont
where eta < 40
