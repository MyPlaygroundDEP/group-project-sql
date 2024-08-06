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
