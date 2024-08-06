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
    enrollment_id VARCHAR(10) NOT NULL ,
    marks INT NOT NULL ,
    CONSTRAINT fk_exam_code FOREIGN KEY (exam_code) REFERENCES exam(exam_code),
    CONSTRAINT fk_student_id FOREIGN KEY (enrollment_id) REFERENCES enrollment(id)

);