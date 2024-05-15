

CREATE TABLE student(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(46),
    mobile VARCHAR(21)
);


INSERT INTO student (NAME,mobile) VALUES('NUR','01652'),
('MIM','0133333'),
('DIM','01444'),
('JIM','01555'),
('SIMU','016666');

SELECT * FROM student;

CREATE TABLE student_TAKEN(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    address VARCHAR(40),
    batch VARCHAR(11),
    FOREIGN KEY (student_id) REFERENCES student(id)
);


INSERT INTO student_taken (student_id,address,batch)
VALUES(1,'konabari','56 A'),
(3,'gazipur','57 A'),
(5,'uttara','59 B');

SELECT * FROM student_info;


 //INNER JOIN//

SELECT t1.*,t2.* FROM  
student AS t1 INNER JOIN student_taken AS t2  
ON t1.id=t2.student_id;

//LEFT JOIN//

SELECT t1.*,t2.* FROM  
student AS t1 LEFT JOIN student_taken AS t2  
ON t1.id=t2.student_id;


//RIGHT JOIN//

SELECT t1.*,t2.* FROM  
student AS t1 RIGHT JOIN student_taken AS t2  
ON t1.id=t2.student_id;


SELECT t1.*,t2.* FROM  
student_info AS t2 RIGHT JOIN student AS t1  
ON t1.id=t2.student_id;

