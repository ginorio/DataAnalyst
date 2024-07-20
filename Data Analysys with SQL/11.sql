/*

	ESERCIZIO
	
	1 - Creare le fasce di età "over 31" e "under 30" e contare i contatti che vi ricadono


*/
select 
	case
    when eta <= 30 then 'under 30'
    else 'over 31'
    end as fascia,
count(*)
from rubrica.contatto
group by fascia