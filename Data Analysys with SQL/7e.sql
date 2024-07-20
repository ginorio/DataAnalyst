/* 

ESERCIZIO

1- Sostituire, nel campo recapito della tabella recapito, la stringa '.com' con la stringa '.it'
2- Sostituire, nel campo tipo_recapito della tabella recapito,la stringa 'PEC? con Posta Elettronica Certificata

*/

select recapito, replace (recapito, '.com', '.it')
from rubrica.recapito

select tipo_recapito, replace (tipo_recapito, 'PEC', 'Posta Elettronica Certificata')
from rubrica.recapito