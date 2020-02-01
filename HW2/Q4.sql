#http://sqlfiddle.com/#!9/fc319f/1/0

CREATE TABLE junkmail (
Name VARCHAR(20) NOT NULL,
Address CHAR(1) NOT NULL,
Id INT NOT NULL, 
SameFam INT
);

INSERT INTO junkmail
VALUES
('Alice' ,  'A'   ,   10 , NULL),
('Bob' ,    'B'   ,   15 , NULL),
('Carmen' , 'C'   ,   22 , NULL),
('Diego' ,  'A'  ,    9 ,  10),
('Ella' ,   'B'  ,    3 ,  15),
('Farkhad' ,'D'   ,   11 , NULL);



DELETE Name
FROM junkmail
WHERE SameFam IS NULL 
AND Address IN (SELECT Address 
                FROM junkmail
                WHERE SameFam IS NOT null);

SELECT * 
FROM junkmail; 
                