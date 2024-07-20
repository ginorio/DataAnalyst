/*

	ESERCIZIO
	
	1 - Creare una vista che contenga solo i contatti di età maggiore o uguale a 35 anni


*/

create view rubrica.over35new as
select * from contatto
where eta >= 35

select * from rubrica.over35new