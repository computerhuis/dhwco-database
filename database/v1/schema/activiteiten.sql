-- liquibase formatted sql
-- changeset ronlievens:schema-1
CREATE TABLE activiteiten
(
    nr           INT                     NOT NULL AUTO_INCREMENT,
    naam         VARCHAR(50)             NOT NULL,
    rapportage   BOOLEAN   DEFAULT FALSE NOT NULL,
    actief_vanaf TIMESTAMP DEFAULT NOW() NOT NULL,
    actief_tot   TIMESTAMP,
    CONSTRAINT activiteiten_pk PRIMARY KEY (nr)
);
