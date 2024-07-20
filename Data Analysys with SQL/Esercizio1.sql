/*

1- Affiancare, ad ogni contatto, il numero di recapiti per tipo
2- Affiancare, ad ogni tipo di recapito, il numero di contatti per fascia di età Over 30 e Under 30

*/
select * from contatto cont left join recapito rec
on cont.id_contatto = rec.id_contatto;

select cont.id_contatto,cont.nome,cont.cognome,cont.data_creazione,cont.eta,rec.tipo_recapito,count(tipo_recapito) from contatto cont
left join recapito rec 
on cont.id_contatto = rec.id_contatto
group by cont.id_contatto,cont.nome,cont.cognome,cont.data_creazione,cont.eta,rec.tipo_recapito;

select cont.*,
count(distinct case when rec.tipo_recapito='cellulare' then id_recapito else null end) as cellulare,
count(distinct case when rec.tipo_recapito='e-mail' then id_recapito else null end) as e_mail,
count(distinct case when rec.tipo_recapito='e-mail PEC' then id_recapito else null end) as e_mail_PEC,
count(distinct case when rec.tipo_recapito='skype' then id_recapito else null end) as skype
from contatto cont
left join recapito rec
on cont.id_contatto=rec.id_contatto
group by cont.id_contatto,cont.nome,cont.cognome,cont.data_creazione,cont.eta;

select rec.tipo_recapito,
sum(case when cont.eta <30 then 1 else null end) as Under30,
sum(case when cont.eta >=30 then 1 else null end) as Over30
from contatto cont
inner join recapito rec
on cont.id_contatto=rec.id_contatto
group by rec.tipo_recapito