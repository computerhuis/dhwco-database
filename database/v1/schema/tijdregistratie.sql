-- liquibase formatted sql
-- changeset ronlievens:schema-1
CREATE TABLE tijdregistratie
(
    persoon_nr    BIGINT,
    datum         TIMESTAMP DEFAULT NOW() NOT NULL,
    activiteit_nr INT                     NOT NULL,
    vertrokken    TIMESTAMP,
    CONSTRAINT tijdregistratie_pk PRIMARY KEY (persoon_nr, datum, activiteit_nr),
    CONSTRAINT tijdregistratie_fk_1 FOREIGN KEY (persoon_nr) REFERENCES personen (nr) ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT tijdregistratie_fk_2 FOREIGN KEY (activiteit_nr) REFERENCES activiteiten (nr) ON UPDATE RESTRICT ON DELETE CASCADE
);
