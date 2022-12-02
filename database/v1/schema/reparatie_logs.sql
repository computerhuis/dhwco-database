-- liquibase formatted sql
-- changeset ronlievens:schema-1
CREATE TABLE reparatie_logs
(
    reparatie_nr BIGINT    NOT NULL,
    datum        TIMESTAMP NOT NULL DEFAULT now(),
    persoon_nr   BIGINT    NOT NULL,
    log          TEXT      NOT NULL,
    CONSTRAINT reparatie_logs_pk PRIMARY KEY (reparatie_nr, datum),
    CONSTRAINT reparatie_logs_fk_1 FOREIGN KEY (reparatie_nr) REFERENCES reparaties (nr) ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT reparatie_logs_fk_2 FOREIGN KEY (persoon_nr) REFERENCES personen (nr) ON UPDATE RESTRICT ON DELETE CASCADE
);
