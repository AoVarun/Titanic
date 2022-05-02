-- Requêtes demandées
-- 1ère requête:Cb de Classes différentes à bord du Titanic? 
 select count(distinct Pclass) as Classes_differentes
 from trajet;

--2ème requête:Cb de passagers dans chaque Classe?

 select Pclass, count(*) as NbDeVoyageursDansClasse 
 from Trajet 
 group by Pclass 
 order by Pclass;

--3ème requête:Cb de femmes et d'hommes dans chaque classe

 --select Pclass, count(*) as NbDePassagersMascDansClasse
 --from Passagers natural join titanic natural join Trajet 
 --where sex='male' 
 --group by Pclass 
 --order by Pclass;

 --select Pclass, count(*) as NbDePassagersFemDansClasse
 --from Passagers natural join titanic natural join Trajet 
 --where sex='female' 
 --group by Pclass 
 --order by Pclass;

--Autre Alternative 
select Pclass, sex, count(*) as VoyageursClasse 
from Passagers natural join titanic natural join Trajet
group by Pclass,sex 
order by Pclass;

--4 ème requête: Compter le nombre et le pourcentage de survivants et morts.

 --select Survived, count(*) as A_survecu 
 --from titanic 
 --where survived=1 
 --group by Survived;

 --select Survived, count(*) as N_a_pas_survecu 
 --from titanic 
 --where survived=0
 --group by Survived;

--Autre Alternative 

 select Survived, count(*) VoyageursSurMo, (count(*)*100/(select count(*) from titanic)) as pourcent
 from titanic 
 group by survived;

--5ème requête: Visualiser répartition des passagers survivants et morts.
select Pclass,survived, count(*) as Voyageurs 
from Trajet natural join titanic 
group by Pclass,survived 
order by Pclass,survived;

--6ème requête: Visualiser la répartition des passagers survivants et morts selon sexe.
select survived,sex, count(*) as Voyageurs 
from Passagers natural join titanic 
group by survived,sex 
order by survived,sex;
