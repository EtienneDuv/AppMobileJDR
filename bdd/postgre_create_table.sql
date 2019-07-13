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
CREATE TABLE jeu(
    id              SERIAL PRIMARY KEY NOT NULL,
    nom             VARCHAR (50),
    infoPersonnage  JSON NOT NULL

);
CREATE TABLE carte (
    id          SERIAL PRIMARY KEY NOT NULL,
    idJoueur    INTEGER REFERENCES joueur(id),
    nom         VARCHAR (50) NOT NULL,
    carte       VARCHAR (500)  /*LIEN VERS L'IMAGE*/
);
CREATE TABLE personnage (
    id          SERIAL PRIMARY KEY NOT NULL,
    idJoueur    INTEGER REFERENCES joueur(id),
    idJeu       INTEGER REFERENCES jeu(id),
    nom         VARCHAR (50) NOT NULL,
    info        JSON NOT NULL
);
CREATE TABLE campagne (
    id      SERIAL PRIMARY KEY NOT NULL,
    nom     VARCHAR (50),
    idJeu     INTEGER REFERENCES jeu(id),
    idMj1   INTEGER REFERENCES joueur(id) NOT NULL,
    idMj2   INTEGER REFERENCES joueur(id),
    idMj3   INTEGER REFERENCES joueur(id)
);  
CREATE TABLE scenario (
    id          SERIAL PRIMARY KEY NOT NULL,
    idCampagne  INTEGER REFERENCES campagne(id),
    "content"   VARCHAR (5000)
);
CREATE TABLE log (
    id          SERIAL PRIMARY KEY NOT NULL,
    idCampagne  INTEGER REFERENCES campagne(id),
    "content"   VARCHAR (50000)
);
CREATE TABLE note (
    id          SERIAL PRIMARY KEY NOT NULL,
    idCampagne  INTEGER REFERENCES campagne(id),
    "content"   VARCHAR (5000)
);



/* PROCEDURES */
CREATE OR REPLACE FUNCTION generate_log_note_scenario()
    RETURNS trigger
    as $$
    BEGIN
        INSERT INTO log(idCampagne, content)
            VALUES (new.id, '{}');
        INSERT INTO note(idCampagne, content)
            VALUES (new.id, '{}');
        INSERT INTO scenario(idCampagne, content)
            VALUES (new.id, '{}');
        RETURN NULL;
    END;
    $$ LANGUAGE plpgsql;



/* TRIGGERS */
CREATE TRIGGER generate_log_note_scenario
    AFTER INSERT ON campagne
    FOR EACH ROW 
    EXECUTE PROCEDURE generate_log_note_scenario()
