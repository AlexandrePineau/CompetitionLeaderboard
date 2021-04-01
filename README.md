# CSI2532 - Competition Leaderboard Project

## Membres de l'équipe
Alexandre Pineau  
300066713  
apine018@uottawa.ca

## Livrable 3
Notes:
* J'utilise Microsoft Word et Paint pour créer les schémas visuels
* J'utilise PHP et PostgreSQL pour l'application
* J'utilise le serveur web inclus avec PHP (et non Apache)
* Le README pour le livrable 1 est nommé "deliverable1.md"
* Le README pour le livrable 2 est nommé "deliverable2.md"

## Instructions de setup 
Voici les étapes pour rouler le web app
1. Il faut avoir PostgreSQL et PHP configuré sur votre machine locale
2. Les fichiers PHP connect un DB avec les crédentiels `"host=localhost port=5432 dbname=csi2532 user=postgres password=root"`. Ces fichers sont tous dans `\web` et `\web\pages`.
3. Sur votre DB personel, exécute le fichier "schema.sql" pour créer les tables
4. Ensuite, exécute le fichier "seed.sql" pour populé ces tables avec des données
5. À partire du répertoire /web, run la commande `php -S localhost:8080`
6. Dans votre browser visite "localhost:8080" et le site devrait s'apparitre

## Instructions pour le API
1. Vas au fin de la page sur le site au section "Admins"
2. Entrer le token "123abc"
3. De là, les admins peut ajouter des partenaires et inscrire des athletes à des competitions
4. Également, les admins on access a tout le MeFit Data; ceux vont illustrer un `SELECT *` du donneé choisi

## Modele ER
![alt text](assets/deliverable3/er-model.png "ER Model")

## Modele relationnel
![alt text](assets/deliverable3/relational-model.png "Relational Model")

## Exemples SQL
Query pour montrer l'info général sur le site
```sql
SELECT competitions.competition_name, competitions.competition_address, competitions.start_time, partners.company_name, contacts.contact_name, contacts.contact_email, contacts.contact_phone_number
FROM hosts
INNER JOIN competitions ON competitions.competition_id = hosts.competition_id
INNER JOIN partners ON partners.partner_id = hosts.partner_id
INNER JOIN contacts ON contacts.contact_id = hosts.contact_id
ORDER BY competitions.start_time ASC
```
\* La plupart des nouveaux requetes dans ce livrable utilise des donnees dynamiques avec php. Voir `seed.sql` pour tous les nouveaux inserts

## Notes additionels
- Voir les fichers sample-(datatype).sql pour des exmples de insert de chaque type
- Le fichier web/index.php contient toute le code pour créer le leaderboard
- Le fichier web/script.js contient toute le code pour trier le leaderboard
- Le répertoire /pages contient toutes les pages pertinent aux admins
- J'utilise Bootstrap et JS pour le front end