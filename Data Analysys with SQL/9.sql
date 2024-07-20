/*

	ESERCIZIO
	
	1 - Affiancare, a ogni contatto, la fascia di età a passo 10

*/

select *,

case
    when eta < 30 then 'Under 30'
    when eta < 40 then 'Fascia < 40'
    when eta < 50 then 'Fascia < 50'
    else 'Over 50'
    end as fascia_eta
    
    from rubrica.contatto