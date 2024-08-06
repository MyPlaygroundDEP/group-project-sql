CREATE TABLE module
(
    id      VARCHAR(10) PRIMARY KEY,
    name    VARCHAR(100),
    credits INT
);

CREATE TABLE program_module
(
    program_id VARCHAR(10) NOT NULL ,
    module_id VARCHAR(10) NOT NULL ,
    CONSTRAINT fk_program_id FOREIGN KEY (program_id) REFERENCES program(id),
    CONSTRAINT fk_module_id FOREIGN KEY (module_id) REFERENCES module(id),
    CONSTRAINT pk_program_module PRIMARY KEY (program_id,module_id)
);

INSERT INTO program (id,name) VALUES ('P001', 'CMJD'),('P002', 'GDSE'),('P003', 'DEP');
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

CREATE TABLE student (
    id VARCHAR(5) PRIMARY KEY ,
    name VARCHAR(20) NOT NULL ,
);

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


