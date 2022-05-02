--Requête imaginée
 
-- 1ère requête : Quels sont les noms et le sexe des passagers qui sont un âge inférieur à 40 ans
select name,sex 
from Passagers 
where age<40;
-- (728 lignes)

--2ème requête : Même Requête que la 1 et qui ont pour sexe, le sexe masculin
select name,sex 
from Passagers 
where age<40 and sex='male';
-- (468 lignes)

--3 ème Requête: Donner le nom,l'age des passagers qui ont un prix de ticket supérieur à 20 et qui ont embarqués depuis le port S.

select Name,age
from Passagers natural join titanic natural join Trajet 
where fare>20 and enbarked='S';

--Fonctions d'agrégations

-- 4 ème requête Donnez le nombre de Passagers

select count(*) as NbdePassagers from Passagers;

-- 5ème Requête: Donnez le prix moyen pour la croisière du Titanic

select avg(Fare) from Trajet;

--6ème requête : Donner longueur (nb de caractères) du prénom le plus long

select max(char_length(Name)) 
from Passagers;

--Pour savoir le nom on a juste à faire:

select Name from Passagers where char_length(Name)=82;

--7ème requête:Combien de passagers y'avait t-il depuis chaque embarcation ?

 select enbarked,count(*) as NbdeVoyageurs
 from titanic 
 group by enbarked 
 order by enbarked;

--8ème requête: Donner le nombre de passagers morts lors de la croisière du Titanic.

select count(*) as nbPassagersmorts 
from titanic 
where survived=0;

--(549 morts)

