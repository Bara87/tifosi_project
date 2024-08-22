### **Tifosi Database Project :**

## Description
   Ce projet contient les scripts SQL nécessaires pour créer, tester, et sauvegarder une base de données nommée `tifosi`.

## Prérequis
- MySQL ou PostgreSQL installé localement.
- Accès administrateur pour créer des bases de données et des utilisateurs.

## Installation   

### 1. Créez la base de données et l'utilisateur :

```sql
CREATE DATABASE tifosi;
CREATE USER 'tifosi'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
FLUSH PRIVILEGES; 
```
### 2. Importez la structure de la base de données

```mysql -u tifosi -p tifosi < import.sql ```

### 3. Insérez les données de test :

```mysql -u tifosi -p tifosi < insert_test_data.sql```

### 4. Sauvegarde de la Base de Données

```mysqldump -u tifosi -p tifosi > backup.sql```

### Utilisation des Scripts  

.  backup.sql : Ce script est utilisé pour sauvegarder l'intégralité de la base de données tifosi


.  insert_test_data.sql : Ce script insère des données de test dans les tables pour valider le fonctionnement de la base de données.


.  backup.sql : Ce script est utilisé pour sauvegarder l'intégralité de la base de données tifosi.

### Contact

 Nom - @Bara_DIA - bara-2010@hotmail.fr

 Lien du projet : https://github.com/Bara87/tifosi_project
