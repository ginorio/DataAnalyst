/*

	ESERCIZIO
	
	1 - Contare tutti gli indirizzi e-mail (anche PEC) contenuti nei recapiti
	2 - Calcolare l'età media, l'età massima e l'età minima dei contatti

*/
select * from rubrica.recapito

select count(*)
from rubrica.recapito
where tipo_recapito like 'e-mail%'

select count(*)
from rubrica.recapito
where tipo_recapito in ('e-mail','e-mail PEC')

select 
AVG(eta) as EtaMedia, 
MAX(eta) as EtaMassima, 
MIN(eta) as EtaMinima
from rubrica.contatto