
# AppMobileJDR
Outil pour faciliter le travail du MJ et des joueurs de Jeu de rôle.
Une application mobile pour centraliser les fiches de personnages des joueurs et permet au MJ de tenir des notes, garder une trace des sessions...


## Objectifs
- Permettre au maître du jeu de garder une trace des séances, d'écrire des notes, d'écrire son scénario...
- Permettre aux joueurs de centraliser leurs fiches de personnage et de les gérer durant une session de jeu
- Permettre aux joueurs de créer leurs fiches personnages pour différents jeux de rôles
  

## Structure de l'application mobile
```
.
└── Connexion
    ├── Interface MJ
    │   ├── Liste des campagnes en cours
    │   │   ├── Interface Notes
    │   │   │   ├── Scénario
    │   │   │   ├── Logs des dernières sessions
    │   │   │   └── Notes diverses
    │   │   └── Interface session
    │   │       ├── Scan QR code joueur
    │   │       └── Selectionner Carte à afficher
    │   └── Outil de dessin
    │       ├── Libre
    │       └── Sur cadrillage
    └── Interface joueur
        └── Liste personnages
            ├── Fiche personnage
            ├── Stuff
            └── Notes
```

## Idées

- Le MJ envoit une invitation aux joueurs de la session, sous forme de mail par exemple, afin de planifier une session -> s'ajoute sur le calendrier
- Le MJ invite les joueurs grâce au QR code trouvé sur la fiche perso
- lancé de dés

<!-- 
# Connexion
## Interface MJ
### Liste des campagnes en cours
#### Interface Notes
##### Scénario
##### Logs des dernières sessions
##### Notes diverses
#### Interface session
##### Scan QR code joueur
##### Selectionner Carte à afficher
### Outil de dessin
#### Libre
#### Sur cadrillage

## Interface joueur
### Liste personnages
#### Fiche personnage
#### Stuff
#### Notes
-->
  
## Technologies
- Appli: [Flutter](https://flutter.dev/)
- BDD: [PostgreSQL](https://www.postgresql.org/)
- Api: [GraphQL](https://graphql.org/)  <!-- [NodeJs](https://nodejs.org/docs/latest-v9.x/api/) -->
