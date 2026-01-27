Java 8 (JDK 1.8)
Apache Ant 1.10.15
WildFly 10
Oracle Database 11g
Lancer le projet Socobis avec Java 8, WildFly 10, Ant et Oracle 11g
Configurer la base de données :
Crée un utilisateur Oracle pour le projet.
Importez le fichier .dmp fourni avec le projet en utilisant imp.
Mets les informations de connexion (utilisateur, mot de passe, etc.) dans ejb/properties/app.properties.
Préparer le build :
Dans build.xml, adapte les chemins aux répertoires de ton PC (par exemple le chemin vers WildFly ou le projet).
Compiler et déployer avec Ant :
Ouvre un terminal dans le répertoire du projet.
Lance :ant -f build.xml
