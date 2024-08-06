CREATE TABLE batch (
                       id VARCHAR(5) PRIMARY KEY ,
                       heads_count INT(100),
                       program_id VARCHAR(50) NOT NULL
);

INSERT INTO batch VALUES
                        ('B001', 'stud-1'),
