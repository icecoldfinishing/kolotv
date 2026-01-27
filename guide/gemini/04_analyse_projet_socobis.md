# Analyse Globale du Projet Socobis

## 1. Objectif Principal du Projet

Le projet Socobis est une application de gestion commerciale et de stock (ERP) conçue pour gérer les opérations d'une entreprise. Ses fonctionnalités principales, déduites de la structure du code, incluent :
- Gestion des ventes et des factures
- Suivi des stocks et des inventaires
- Gestion de la production (fabrication)
- Gestion des ressources humaines et de la paie
- Suivi des clients et des fournisseurs
- Gestion de la caisse et des encaissements
- Rapports et tableaux de bord

## 2. Architecture Générale

Le projet est basé sur une architecture Java EE (Enterprise Edition) classique, structurée en plusieurs couches :

- **Backend (Logique Métier)** : Géré par le module `socobis-ejb`. Il contient les Enterprise JavaBeans (EJB) qui implémentent la logique métier de l'application (ex: calculs, validations, accès aux données).
- **Frontend (Interface Web)** : Géré par le module `socobis-war`. Il s'agit d'une application web qui contient des Servlets Java pour gérer les requêtes HTTP et des pages JSP (JavaServer Pages) pour l'affichage des interfaces utilisateur.
- **Base de Données** : Le système utilise une base de données Oracle, comme l'indique le driver JDBC et la configuration de connexion. Les scripts SQL sont stockés dans le répertoire `bdd`.

Le projet est construit avec Apache Ant et déployé comme une application web "exploded" (décompressée) sur un serveur d'application WildFly/JBoss.

## 3. Composants Principaux

- **`socobis-ejb`** : Le cœur de l'application. Il contient les EJB organisés en packages fonctionnels (ex: `vente`, `stock`, `facture`, `rh`, `client`). C'est ici que se trouvent les règles de gestion et les interactions avec la base de données.
- **`socobis-war`** : La couche de présentation. Elle contient les servlets qui agissent comme contrôleurs et les fichiers JSP qui constituent les vues. Elle contient également les ressources web statiques (CSS, JavaScript, images) dans le répertoire `web`.
- **`bdd`** : Contient les scripts de modification et de création de la base de données Oracle.
- **Tables principales de la base de données** (déduites des noms de packages) : `VENTE`, `PRODUIT`, `STOCK`, `FACTURE`, `CLIENT`, `PERSONNEL`, `PAIE`, `UTILISATEUR`.

## 4. Flux Critiques et Processus Principaux

- **Login utilisateur** : Géré via un formulaire web, avec une validation probable contre une table `UTILISATEUR` dans la base de données.
- **Processus de vente** : Création d'une vente, ajout de produits, calcul des totaux, génération d'une facture.
- **Gestion des stocks** : Entrées et sorties de stock, mises à jour des quantités de produits suite aux ventes et aux achats, inventaires.
- **Facturation** : Création de factures pour les clients, suivi des paiements.

## 5. Technologies et Frameworks

- **Langage de programmation** : Java
- **Backend** : Java8 EE (avec EJB)
- **Frontend** : Servlets, JSP, HTML, CSS, JavaScript (avec jQuery)
- **Base de Données** : Oracle 11g (connexion via JDBC)
- **Serveur d'application** : WildFly 10  / JBoss
- **Outil de build** : Apache Ant


Très important :
 Si tu manques d’informations ou si tu as besoin des fichiers pour être précis, demande-moi explicitement lesquels envoyer 
 Ne réponds pas de façon vague. Pose des questions si tu n’as pas assez d’éléments.
Réponds avec la meilleure analyse possible en fonction de ce que tu sais jusqu’ici.
mais les fichiers en jar sont ici @socobis-prod/socobis-prod/socobis-ejb/src/java/  
et les fichiers en war ici @socobis-prod/socobis-prod/socobis-war/src/java/ et @socobis-prod/socobis-prod/socobis-war/web/pages/pages/