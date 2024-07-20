/* 
ESTRAZIONE DI SOTTOSTRINGHE

ESERCIZIO

1- Estrarre i primi 2 caratteri dal campo 'nome' della tabella 'contatto'
2- Estrarre i caratteri dal secondo al quarto (compresi) dal campo 'nome' della tabella 'contatto'

*/

select 
nome, 
left(nome,2),
substr(nome,2,3)
from rubrica.contatto