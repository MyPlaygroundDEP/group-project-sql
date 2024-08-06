CREATE TABLE enrolment
(
    st_id      VARCHAR(5) PRIMARY KEY,
    program_id VARCHAR(5) NOT NULL,
    CONSTRAINT pk_enrolment PRIMARY KEY (st_id, program_id)
);

