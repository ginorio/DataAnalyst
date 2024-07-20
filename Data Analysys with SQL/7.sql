/*

	ESERCIZIO
	
	1 - Sommare 7 giorni alla data di creazione nella tabella contatti, creando il campo "nuova_data"
	2 - Dalla nuova data, estrarre anno, mese e giorno come campi separati

*/
select 
data_creazione, date_add(data_creazione, interval +7 day) as nuova_data, year(date_add(data_creazione, interval +7 day)) as anno, month(date_add(data_creazione, interval +7 day)) as mese, day(date_add(data_creazione, interval +7 day)) as giorno 
from rubrica.contatto 