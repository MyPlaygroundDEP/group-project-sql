CREATE TABLE enrolment
(
    st_id      VARCHAR(5) PRIMARY KEY,
    program_id VARCHAR(5) NOT NULL,
    CONSTRAINT pk_enrolment PRIMARY KEY (st_id, program_id)
);

INSERT INTO student(id, name) VALUES
                        ('C001', 'stud-1'),
                        ('C002', 'stud-2'),
                        ('C003', 'stud-3'),
                        ('C004', 'stud-4'),
                        ('C005', 'stud-5'),
                        ('C006', 'stud-6'),
                        ('C007', 'stud-7'),
                        ('C008', 'stud-8'),
                        ('C009', 'stud-9'),
                        ('C010', 'stud-10');

INSERT INTO batch(id, heads_count, program_id) VALUES
                        ('B001', 'stud-1', 'Prog-1'),
                        ('B002', 'stud-2', 'Prog-2'),
                        ('B003', 'stud-3', 'Prog-3'),
                        ('B004', 'stud-4', 'Prog-3'),
                        ('B005', 'stud-5', 'Prog-3'),
                        ('B006', 'stud-6', 'Prog-1');


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