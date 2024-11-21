# pwnsync
Description
Ce projet est un script Bash conçu pour synchroniser des fichiers entre un serveur distant et un dossier local. Il permet de maintenir les fichiers à jour de manière automatisée ou manuelle, en offrant plusieurs options de configuration pour répondre à différents besoins.

Fonctionnalités
Spécification des paramètres via des arguments :

Serveur distant (IP ou nom de domaine).
Dossiers source et destination.
Mode de déploiement sans suppression des fichiers existants.
Option de détection automatique des changements (mode daemon) pour une synchronisation continue.

Documentation claire sous forme de manpage, expliquant les fonctionnalités et l'utilisation du script.

Exécution depuis la ligne de commande pour une flexibilité maximale.

Prérequis
Système d'exploitation : Linux/Unix
Outils nécessaires :
rsync : pour la synchronisation.
Accès SSH configuré pour le serveur distant (si applicable).
Utilisation
Rendre le script exécutable :

bash
chmod +x sync_files.sh
Exécuter le script avec des arguments :

bash
./sok_sync.sh -s <serveur distant> -d <dossier source> -t <dossier cible> --safe
-s : spécifie le serveur distant.
-d : dossier source.
-t : dossier cible.
--safe : active le mode sans suppression.
Lancer en mode daemon (si activé) :

bash
./sok_sync.sh --daemon
Limitations
La fonctionnalité daemon n'est pas encore finalisée dans cette version. Une mise à jour sera publiée prochainement pour l'inclure.

Contribuer
Les contributions sont les bienvenues ! Si vous avez des idées ou des améliorations, n'hésitez pas à soumettre une pull request.

