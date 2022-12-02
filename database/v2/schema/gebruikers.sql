-- liquibase formatted sql
-- changeset ronlievens:schema-1
CREATE TABLE gebruikers
(
    persoon_nr       BIGINT                  NOT NULL,
    naam             VARCHAR(255)            NOT NULL,
    wachtwoord_hash  VARCHAR(255)            NOT NULL,
    inschrijf_datum  TIMESTAMP DEFAULT NOW() NOT NULL,
    uitschrijf_datum TIMESTAMP,
    CONSTRAINT gebruikers_pk PRIMARY KEY (persoon_nr),
    CONSTRAINT gebruikers_naam UNIQUE (naam),
    CONSTRAINT gebruikers_fk_1 FOREIGN KEY (persoon_nr) REFERENCES personen (nr) ON UPDATE RESTRICT ON DELETE CASCADE
);

CREATE TABLE gebruiker_rollen
(
    persoon_nr BIGINT       NOT NULL,
    rol        VARCHAR(255) NOT NULL,
    CONSTRAINT gebruiker_rollen_pk PRIMARY KEY (persoon_nr, rol),
    CONSTRAINT gebruiker_rollen_fk_1 FOREIGN KEY (persoon_nr) REFERENCES gebruikers (persoon_nr) ON UPDATE RESTRICT ON DELETE CASCADE
);
CREATE INDEX gebruiker_rollen_i_1 ON gebruiker_rollen (persoon_nr);
