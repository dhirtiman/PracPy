create table Result(
    Regn_no int primary key,
    std_name VARCHAR(40),
    total_marks INT,
    marks_obtained int,
    division VARCHAR(13)

);

-- table desc 
# Field	Type	Null	Key	Default	Extra
'Regn_no'	'int'	'NO'	'PRI'	NULL	''
'std_name'	'varchar(40)'	'YES'	''	NULL	''
'total_marks'	'int'	'YES'	''	NULL	''
'marks_obtained'	'int'	'YES'	''	NULL	''
'division'	'varchar(13)'	'YES'	''	NULL	''


-- i. Insert atleast 10 records of your own choice.


INSERT into result()
values
('20210001','Akshay',500,400,'First class'),
('20210002','Riya',500,350,'Second class'),
('20210003','Siddharth',500,150,'Third class'),
('20210004','Neha',500,450,'Distinction'),
('20210005','Rohan',500,300,'Second class'),
('20210006','Shreya',500,480,'Distinction'),
('20210007','Amit',500,390,'First class'),
('20210008','Priya',500,320,'Second class'),
('20210009','Rahul',500,280,'Third class'),
('20210010','Nisha',500,410,'First class');

-- ii. Display the result table by displaying all the fields of results.

SELECT * from Result;

-- Output

# Regn_no	std_name	total_marks	marks_obtained	division
20210001	'Akshay'	500	400	'First class'
20210002	'Riya'	500	350	'Second class'
20210003	'Siddharth'	500	150	'Third class'
20210004	'Neha'	500	450	'Distinction'
20210005	'Rohan'	500	300	'Second class'
20210006	'Shreya'	500	480	'Distinction'
20210007	'Amit'	500	390	'First class'
20210008	'Priya'	500	320	'Second class'
20210009	'Rahul'	500	280	'Third class'
20210010	'Nisha'	500	410	'First class'

-- iii. Display the name of the student(s) who got highest marks.

SELECT std_name
FROM Result
WHERE marks_obtained = (
  SELECT MAX(marks_obtained) FROM Result
);

-- Output

# std_name
'Shreya'

-- iv. Show the number of students of each division.

SELECT  division, COUNT(*) as Number_of_Students
from Result
GROUP BY division;

-- Output

# division	Number_of_Students
'First class'	3
'Second class'	3
'Third class'	2
'Distinction'	2

-- v. Display the unique name of the students.

SELECT DISTINCT std_name
from Result;

-- Output

# std_name
'Akshay'
'Riya'
'Siddharth'
'Neha'
'Rohan'
'Shreya'
'Amit'
'Priya'
'Rahul'
'Nisha'

-- vi. Delete the information of the student who obtained less than 100 marks.

DELETE from result
WHERE marks_obtained < 100;

-- Output

# Regn_no	std_name	total_marks	marks_obtained	division
20210001	'Akshay'	500	400	'First class'
20210002	'Riya'	500	350	'Second class'
20210004	'Neha'	500	450	'Distinction'
20210005	'Rohan'	500	300	'Second class'
20210006	'Shreya'	500	480	'Distinction'
20210007	'Amit'	500	390	'First class'
20210008	'Priya'	500	320	'Second class'
20210009	'Rahul'	500	280	'Third class'
20210010	'Nisha'	500	410	'First class'


-- vii. Drop the result table

drop table Result;

