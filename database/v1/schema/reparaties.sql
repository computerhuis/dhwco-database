-- liquibase formatted sql
-- changeset ronlievens:schema-1
CREATE TABLE reparaties
(
    nr                       BIGINT    NOT NULL AUTO_INCREMENT,
    computer_nr              BIGINT    NOT NULL,
    aangenomen_door          BIGINT    NOT NULL,
    probleem                 TEXT      NOT NULL,
    backup                   VARCHAR(255),
    meegeleverde_accessoires VARCHAR(255),
    samenvatting             TEXT,
    inboek_datum             TIMESTAMP NOT NULL,
    afgerond_datum           TIMESTAMP NOT NULL,
    uitboek_datum            TIMESTAMP NOT NULL,
    uitgevoerd_door          BIGINT    NOT NULL,
    CONSTRAINT reparaties_pk PRIMARY KEY (nr),
    CONSTRAINT reparaties_fk_1 FOREIGN KEY (computer_nr) REFERENCES computers (nr) ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT reparaties_fk_2 FOREIGN KEY (aangenomen_door) REFERENCES personen (nr) ON UPDATE RESTRICT ON DELETE CASCADE
);

