CREATE TABLE module
(
    id      VARCHAR(10) PRIMARY KEY,
    name    VARCHAR(100),
    credits INT
);
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