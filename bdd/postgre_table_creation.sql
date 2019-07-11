/* RESET SCHEMA */
DROP SCHEMA IF EXISTS public CASCADE;
CREATE SCHEMA public AUTHORIZATION postgres;

GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;



/* CREATE TABLES */
CREATE TABLE joueur (
    id      SERIAL PRIMARY KEY NOT NULL,
    nom     VARCHAR (50) NOT NULL,
    prenom  VARCHAR (50) NOT NULL,
    mail    VARCHAR (50) UNIQUE NOT NULL
);
CREATE TABLE campagne (
    id          SERIAL PRIMARY KEY NOT NULL,
    idJoueur    INTEGER REFERENCES joueur(id),
    idScenario  INTEGER,
    idLog       INTEGER,
    idNote      INTEGER
);  
CREATE TABLE scenario (
    id          SERIAL PRIMARY KEY NOT NULL,
    idCampagne  INTEGER REFERENCES campagne(id),
    "content"     VARCHAR (5000)
);
CREATE TABLE "log" (
    id          SERIAL PRIMARY KEY NOT NULL,
    idCampagne  INTEGER REFERENCES campagne(id),
    "content"     VARCHAR (50000)
);
CREATE TABLE note (
    id          SERIAL PRIMARY KEY NOT NULL,
    idCampagne  INTEGER REFERENCES campagne(id),
    "content"     VARCHAR (5000)
);
CREATE TABLE carte (
    id          SERIAL PRIMARY KEY NOT NULL,
    idJoueur    INTEGER REFERENCES joueur(id),
    nom         VARCHAR (50) NOT NULL,
    carte       VARCHAR (500)  /*LIEN VERS L'IMAGE*/
);
CREATE TABLE jeu(
    id              SERIAL PRIMARY KEY NOT NULL,
    nomJeu          VARCHAR (50)
    infoPersonnage  JSON NOT NULL

);
CREATE TABLE personnage (
    id          SERIAL PRIMARY KEY NOT NULL,
    idJoueur    INTEGER REFERENCES joueur(id),
    idJeu       INTEGER REFERENCES jeu(id),
    nom         VARCHAR (50) NOT NULL,
    info        JSON NOT NULL
);