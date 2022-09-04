/* SQL  */

select * from tab_cotis where num_chq=0000359;

select * from tab_hospit where id=396;

select * 
from tab_hospit
inner join tab_cotis on tab_cotis.id_hosp=tab_hospit.id
where tab_hospit.id=396;

select tab_hospit.civil, tab_hospit.nom, tab_hospit.prenom, tab_hospit.ville, 
tab_cotis.mode_pmt, tab_cotis.num_chq
from tab_hospit
inner join tab_cotis on tab_cotis.id_hosp=tab_hospit.id
order by tab_hospit.nom;

select * from tab_ress_heberg

select tab_pelerins.civil, tab_pelerins.nom, tab_pelerins.prenom, tab_pelerins.ville, 
tab_pmt_pele.num_chq, tab_pmt_pele.recu_euros
from tab_pelerins
inner join tab_pmt_pele on tab_pmt_pele.id_pel=tab_pelerins.id
order by tab_pelerins.nom;

select tab_hospit.civil, tab_hospit.nom, tab_hospit.prenom, tab_hospit.ville, 
tab_pmt_pele.num_chq, tab_pmt_pele.recu_euros
from tab_hospit
inner join tab_pmt_pele on tab_pmt_pele.id_pel=tab_hospit.id
order by tab_hospit.nom;

select tab_hospit.civil, tab_hospit.nom, tab_hospit.prenom, tab_hospit.ville, 
tab_pmt_pele.num_chq, tab_pmt_pele.recu_euros
from tab_hospit
left outer join tab_pmt_pele on tab_pmt_pele.id_pel=tab_hospit.id
order by tab_hospit.nom;

select tab_hospit.civil, tab_hospit.nom, tab_hospit.prenom, tab_hospit.ville, 
tab_pmt_pele.num_chq, tab_pmt_pele.recu_euros
from tab_hospit
right outer join tab_pmt_pele on tab_pmt_pele.id_pel=tab_hospit.id
order by tab_hospit.nom;





select * from tab_pmt_pele where recu_euros=300

select * from tab_pmt_pele where (id_hosp is null) and (id_pel is null)