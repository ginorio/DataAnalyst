/* 

ESERCIZIO

1- Calcolare la posizione del simbolo '@' nel campo recapito della tabella recapito
2- Calcolare la posizione del simbolo '3' nel campo recapito della tabella recapito

*/

select recapito, locate('@', recapito)
from rubrica.recapito

select recapito, locate('3', recapito)
from rubrica.recapito