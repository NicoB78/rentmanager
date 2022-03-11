# rentmanager

Projet JEE réalisé dans le cadre du cours "Langage Java" en 4e année à l'EPF en majeure numérique. 

## Fonctionnalités

- Ajouter : client, véhicule, réservation
- Supprimer : client, véhicule, réservation
- Editer : client, véhicule, réservation
- Lister : client, véhicule, réservation
- Count : client, véhicule, réservation

- Toutes les méthodes find sont implémentées :
  - findById
  - findReservationWithClientId (non utilisée)
  - findReservationWithVehicleId (non utilisée)
  - findAll

- Contraintes (avec les tests associés)

Client :

  - Age
  - Email déjà utilisé
  - Champs remplis
  - Nom et prénom avec plus de 3 caractères
  - Nom en majuscule

Véhicule :

  - Champs remplis
  - Nombre de places entre 2 et 9

Réservation :

  - Réservation d'un véhicule plus de 7 jours par un même utilisateur
  - Vérification de la disponibilité d'un véhicule

### Problèmes rencontrés

Je n'ai pas réussi à faire les tests mocks, je me suis retrouvé avec des problèmes de NullPointer. Je pense tout de même avoir compris le principe.
Je n'ai pas trouvé de solution pour empêcher la réservation d'un véhicule qui a déjà été utilisé pendant 30 jours sans pause.
En ce qui concerne la contrainte sur la suppression de la réservation associée à un véhicule ou un client, je comprends bien qu'il faille utiliser 
les fonctions findReservationWithClientId et findReservationWithVehicleId, mais le système ne me laissait pas supprimer un client ou un véhicule lorsqu'il était dans une réservation.

Attention : Mes tests ne se lancent pas avec mvn test mais ils se lancent et sont fonctionnels dans Eclipse.

### Axes d'amélioration

Il y a énormément de contraintes qui peuvent être ajoutées afin de rendre le programme plus ergonomique. 
Pour l'édition des objets (client, véhicule, réservation), il aurait pu être intéressant de pré-remplir les champs avec les données de l'objet concerné
lorsqu'il est sélectionné.

## Démarrage

Ouvrir un terminal dans le dossier rentmanager puis : mvn tomcat7:run

## Auteurs

Nicolas Beque, MIN1, EPF

Enseignants : Ulysse Coscoy et Mathéo Allard

