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

## Instructions
Voici les étapes pour rouler le web app
1. Il faut avoir PostgreSQL et PHP configuré sur votre machine locale
2. Change la ligne 17 dans web/index.php pour inclure les crédentials de votre DB personnel
3. Sur votre DB personel, exécute le fichier "schema.sql" pour créer les tables
4. Ensuite, exécute le fichier "seed.sql" pour populé ces tables avec des données
5. À partire du répertoire /web, run la commande `php -S localhost:8080`
6. Dans votre browser visite "localhost:8080" et le site devrait s'apparitre

### Modele ER
![alt text](assets/deliverable3/er-model.PNG "ER Model")

### Modele relationnel
![alt text](assets/deliverable3/relational-model.PNG "Relational Model")

### Exemples SQL
Exemple pour INSERT dans la nouvelle table de `competitions`
```sql
INSERT INTO competitions
  (competition_id, competition_name, venue, start_time, end_time, days_long)
VALUES
  (4, 'Beer Keg Toss', 'Montreal', '2021-07-01 10:00:00', '2021-07-01 14:00:00', 1)
```

Exemple de UPDATE dans la nouvelle table de `competitions`
```sql
UPDATE competitions
SET venue = 'Sudbury'
WHERE competition_id = 4
```

Exemple de SELECT dans la nouvelle table de `competitions`
```sql
SELECT competition_name
FROM competitions
WHERE days_long < 3
```

Exemple de DELETE dans la nouvelle table de `competitions`
```sql
DELETE FROM competitions
WHERE competition_id = 4
```