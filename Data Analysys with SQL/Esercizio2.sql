/*

1-Calcolare, per ogni tipologia di recapito, l'età media, massima e miniam dei contatti
2-Elencare, in ordine alfabetico, tutti i contatti provvisti di indirizzi e-mail

*/

select rec.tipo_recapito,
avg(cont.eta) as eta_media,
max(cont.eta) as eta_massima,
min(cont.eta) as eta_minima
from recapito rec 
inner  join contatto cont
on rec.id_contatto=cont.id_contatto
group by rec.tipo_recapito;

/* ----------------*/

select distinct cont.*
from contatto cont 
inner join recapito rec
on cont.id_contatto=rec.id_contatto
where rec.tipo_recapito in ('e-mail','e-mail PEC')
order by cont.cognome,cont.nome