CREATE TABLE enrolment
(
    st_id      VARCHAR(5) PRIMARY KEY,
    program_id VARCHAR(5) NOT NULL,
    CONSTRAINT pk_enrolment PRIMARY KEY (st_id, program_id)
CREATE TABLE program
(
    id   VARCHAR(10) PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE exam(
                     exam_code VARCHAR(10) PRIMARY KEY ,
                     passing_score INT NOT NULL ,
                     module_id VARCHAR(10) NOT NULL ,
                     CONSTRAINT fk_module_id FOREIGN KEY (module_id) REFERENCES module(id)
);
INSERT INTO exam (exam_code, passing_score, module_id) VALUES
                                                           ('EXM001', 50, 'MOD001'),
                                                           ('EXM002', 60, 'MOD002'),
                                                           ('EXM003', 55, 'MOD003'),
                                                           ('EXM004', 70, 'MOD004'),
                                                           ('EXM005', 65, 'MOD005'),
                                                           ('EXM006', 75, 'MOD006'),
                                                           ('EXM007', 80, 'MOD007'),
                                                           ('EXM008', 85, 'MOD008'),
                                                           ('EXM009', 60, 'MOD009'),
                                                           ('EXM010', 50, 'MOD010');

CREATE TABLE student_exam(
    exam_code VARCHAR(10) NOT NULL ,
    student_id VARCHAR(10) NOT NULL ,
    marks INT NOT NULL ,
    CONSTRAINT fk_exam_code FOREIGN KEY (exam_code) REFERENCES exam(exam_code),
    CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES student(id)

);

CREATE TABLE student (
    id VARCHAR(5) PRIMARY KEY ,
    name VARCHAR(20) NOT NULL ,
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

INSERT INTO student (id, name) VALUES
                                   ('S001', 'Kasun Sampath'),
                                   ('S002', 'Lahiru Udana'),
                                   ('S003', 'Nuwan Perera'),
                                   ('S004', 'Amal Jayasinghe'),
                                   ('S005', 'Tharindu Silva'),
                                   ('S006', 'Sajith Fernando'),
                                   ('S007', 'Ruwan Gunawardena'),
                                   ('S008', 'Nadeesha Kumari'),
                                   ('S009', 'Chamika Karunaratne'),
                                   ('S010', 'Dilshan Madushanka'),
                                   ('S011', 'Hirantha Gamage'),
                                   ('S012', 'Samantha Ranasinghe'),
                                   ('S013', 'Janith Perera'),
                                   ('S014', 'Malith Jayawardena'),
                                   ('S015', 'Kusal Mendis'),
                                   ('S016', 'Dhananjaya Silva'),
                                   ('S017', 'Roshan Weerasinghe'),
                                   ('S018', 'Supun Tharanga'),
                                   ('S019', 'Harsha Lakmal'),
                                   ('S020', 'Chamodika Rajapaksha');




INSERT INTO module (id,name,credits) VALUES ('MOD001', 'OOP', 4),
                                            ('MOD002', 'DBMS', 4),
                                            ('MOD003', 'IT', 3),
                                            ('MOD004', 'ENGLISH',2),
                                            ('MOD005', 'WEB',2),
                                            ('MOD006', 'GIT',2),
                                            ('MOD007', 'JAVA SE',4),
                                            ('MOD008', 'JAVA EE',4),
                                            ('MOD009', 'JS',4),
                                            ('MOD010', 'HIBERNATE',4);

INSERT INTO program_module (program_id, module_id) VALUES
                                   ('POO1', 'MOD001'),
                                   ('POO1', 'MOD002'),
                                   ('POO2', 'MOD001'),
                                   ('POO1', 'MOD003'),
                                   ('POO1', 'MOD004'),
                                   ('POO1', 'MOD005'),
                                   ('POO2', 'MOD002'),
                                   ('POO2', 'MOD003'),
                                   ('POO2', 'MOD004'),
                                   ('POO2', 'MOD005'),
                                   ('POO1', 'MOD006'),
                                   ('POO1', 'MOD007'),
                                   ('POO1', 'MOD008'),
                                   ('POO3', 'MOD001'),
                                   ('POO1', 'MOD009'),
                                   ('POO2', 'MOD006'),
                                   ('POO1', 'MOD010'),
                                   ('POO3', 'MOD002'),
                                   ('POO3', 'MOD003'),
                                   ('POO2', 'MOD007'),
                                   ('POO2', 'MOD008'),
                                   ('POO2', 'MOD009'),
                                   ('POO2', 'MOD010'),
                                   ('POO3', 'MOD004'),
                                   ('POO3', 'MOD005'),
                                   ('POO3', 'MOD006'),
                                   ('POO3', 'MOD007'),
                                   ('POO3', 'MOD008'),
                                   ('POO3', 'MOD009'),
                                   ('POO3', 'MOD010'),
INSERT INTO exam (exam_code, passing_score, module_id) VALUES
                                                           ('EXM001', 50, 'MOD001'),
                                                           ('EXM002', 60, 'MOD002'),
                                                           ('EXM003', 55, 'MOD003'),
                                                           ('EXM004', 70, 'MOD004'),
                                                           ('EXM005', 65, 'MOD005'),
                                                           ('EXM006', 75, 'MOD006'),
                                                           ('EXM007', 80, 'MOD007'),
                                                           ('EXM008', 85, 'MOD008'),
                                                           ('EXM009', 60, 'MOD009'),
                                                           ('EXM010', 50, 'MOD010');

CREATE TABLE student_exam(
    exam_code VARCHAR(10) NOT NULL ,
    enrollment_id VARCHAR(10) NOT NULL ,
    marks INT NOT NULL ,
    CONSTRAINT fk_exam_code FOREIGN KEY (exam_code) REFERENCES exam(exam_code),
    CONSTRAINT fk_student_id FOREIGN KEY (enrollment_id) REFERENCES enrollment(id)

);
CREATE TABLE module
(
    id      VARCHAR(10) PRIMARY KEY,
    name    VARCHAR(100),
    credits INT
);

CREATE TABLE program_module
(
    program_id VARCHAR(10) NOT NULL,
    module_id  VARCHAR(10) NOT NULL,
    CONSTRAINT fk_program_id FOREIGN KEY (program_id) REFERENCES program (id),
    CONSTRAINT fk_module_id FOREIGN KEY (module_id) REFERENCES module (id),
    CONSTRAINT pk_program_module PRIMARY KEY (program_id, module_id)
);

INSERT INTO program (id,name) VALUES ('P001', 'CMJD'),('P002', 'GDSE'),('P003', 'DEP');