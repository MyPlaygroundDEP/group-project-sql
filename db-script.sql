CREATE TABLE enrolment
(
    st_id      VARCHAR(5) PRIMARY KEY,
    program_id VARCHAR(5) NOT NULL,
    CONSTRAINT pk_enrolment PRIMARY KEY (st_id, program_id)
);

INSERT INTO enrolment (st_id, program_id) VALUES
                                              ('S001','P001'),
                                              ('S002','P002'),
                                              ('S003','P003'),
                                              ('S004','P003'),
                                              ('S005','P003'),
                                              ('S005','P002'),
                                              ('S006','P002'),
                                              ('S007','P001'),
                                              ('S008','P001'),
                                              ('S009','P001'),
                                              ('S010','P002'),
                                              ('S010','P003'),
                                              ('S001','P002'),
                                              ('S002','P003'),
                                              ('S001','P003'),
                                              ('S005','P001'),
                                              ('S008','P002'),
                                              ('S008','P003'),
                                              ('S009','P001'),
                                              ('S003','P001'),
                                              ('S002','P001');