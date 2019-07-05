
# AppMobileJDR

Outil pour faciiter le travail du MJ et des joueurs de Jeu de rôle.
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
    │   │   ├── Scénario
    │   │   ├── Logs des dernières sessions
    │   │   └── Notes diverses
    │   └── Outil de dessin
    │       ├── Libre
    │       └── Sur cadrillage
    └── Interface joueur
        └── Liste personnages
            ├── Fiche personnage
            ├── Stuff
            └── Notes
```


<!-- 
# Connexion
## Interface MJ
### Liste des campagnes en cours
#### Scénario
#### Logs des dernières sessions
#### Notes diverses
### Outil de dessin
#### Libre
#### Sur cadrillage

## Interface joueur
### Liste personnages
#### Fiche personnage
#### Stuff
#### Notes
-->

## Structure du projet

- Application mobile
- BDD
- Api REST

  

## Technologies

- Appli: (Flutter)[https://flutter.dev/]
- BDD: (PostgreSQL)[https://www.postgresql.org/]
- Api REST: probablement (NodeJs)[https://nodejs.org/docs/latest-v9.x/api/]