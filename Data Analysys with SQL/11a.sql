/*

ESERCITAZIONE

1- Estrarre tutti i tipi di recapito che hanno almeno 2 record nella tabella recapito

*/

select tipo_recapito, count(tipo_recapito)
from rubrica.recapito
group by tipo_recapito
having count(tipo_recapito) >= 2