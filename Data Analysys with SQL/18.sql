/*

	ESERCIZIO
	
	1 - Creare una tabella temporanea con la stessa struttura della tabella "contatto"
	2 - Inserire il seguente record: id_contatto=6, nome=John, cognome=Morris, data_creazione=(40 giorni fa), eta=56
	3 - Creare una tabella temporanea con la stessa struttura della tabella "contatto" e chiamarla "clienti"
	4 - Inserire, nella tabella "clienti", tutti i contatti di età inferiore a 40 anni


*/

create temporary table rubrica.tmp as
select * from rubrica.contatto

insert into rubrica.tmp (id_contatto,nome,cognome,data_creazione,eta) values (6,'John','Morris',date_add(current_date(),interval -40 day),56)

select * from rubrica.tmp

create temporary table rubrica.clienti as
select * from rubrica.contatto 
where eta < 40
--oppure
insert into rubrica.clienti 
select * from rubrica.contatto where eta < 40


select * from clienti