/*

	FORMATO DELLE DATE
	
	1 - Formattare il campo 'data_creazione' della tabella 'contatto' nel formato GG/MM/AAAA
	2 - Formattare il campo 'data_creazione' della tabella 'contatto' nel formato 'Mese DD, AAAA' (es.April 13, 2021)

*/
select 
data_creazione, 
date_format(data_creazione, '%d/%m/%Y')
from rubrica.contatto 

select 
data_creazione, 
date_format(data_creazione, '%M %d, %Y')
from rubrica.contatto 