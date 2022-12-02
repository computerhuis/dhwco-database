-- liquibase formatted sql
-- changeset ronlievens:schema-1
CREATE TABLE computers
(
    nr            BIGINT                  NOT NULL AUTO_INCREMENT,
    inboek_datum  TIMESTAMP DEFAULT NOW() NOT NULL,
    uitboek_datum TIMESTAMP,
    type          ENUM('desktop', 'laptop'),

    fabrikant     VARCHAR(255)            NOT NULL,
    model         VARCHAR(255),
    specificatie  JSON                    NOT NULL,

    persoon_nr    BIGINT,

    CONSTRAINT computers_pk PRIMARY KEY (nr),
    CONSTRAINT computers_fk_2 FOREIGN KEY (persoon_nr) REFERENCES personen (nr) ON UPDATE RESTRICT ON DELETE CASCADE
);
CREATE INDEX computers_i_2 ON computers (persoon_nr);
