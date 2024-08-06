CREATE TABLE batch (
                       id VARCHAR(5) PRIMARY KEY ,
                       heads_count INT(100),
                       program_id VARCHAR(50) NOT NULL
);

INSERT INTO batch VALUES
                        ('B001', 'stud-1', 'Prog-1'),
                        ('B002', 'stud-2', 'Prog-2'),
                        ('B003', 'stud-3', 'Prog-3'),
                        ('B004', 'stud-4', 'Prog-3'),
                        ('B005', 'stud-5', 'Prog-3'),
                        ('B006', 'stud-6', 'Prog-1');
