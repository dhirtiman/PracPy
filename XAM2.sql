CREATE TABLE LIBRARY (
    BOOK_ID INT PRIMARY KEY,
    BOOK_NAME VARCHAR(100),
    AUTHOR_NAME VARCHAR(100),
    SUBJECT_AREA VARCHAR(100),
    PAGES INT,
    BOOK_PRICE DECIMAL(10, 2)
);




INSERT INTO LIBRARY ()
VALUES
    (1, 'Introduction to Computer Science', 'John Smith', 'Computer Science', 300, 25.99),
    (2, 'Data Structures and Algorithms', 'Jane Johnson', 'Computer Science', 450, 39.99),
    (3, 'Database Management Systems', 'David Davis', 'Computer Science', 550, 49.99),
    (4, 'Operating Systems', 'Sarah Roberts', 'Computer Science', 400, 34.99),
    (5, 'Artificial Intelligence', 'Michael Brown', 'Computer Science', 600, 54.99),
    (6, 'Networking Essentials', 'Emily Wilson', 'Computer Science', 350, 29.99);



SELECT BOOK_NAME, AUTHOR_NAME
FROM LIBRARY
WHERE SUBJECT_AREA = 'Computer Science';



# BOOK_NAME	AUTHOR_NAME
'Introduction to Computer Science'	'John Smith'
'Data Structures and Algorithms'	'Jane Johnson'
'Database Management Systems'	'David Davis'
'Operating Systems'	'Sarah Roberts'
'Artificial Intelligence'	'Michael Brown'
'Networking Essentials'	'Emily Wilson'


SELECT BOOK_ID
FROM LIBRARY
WHERE PAGES > 400;


# BOOK_ID
2
3
5



SELECT BOOK_NAME
FROM LIBRARY
WHERE BOOK_PRICE = (SELECT MAX(BOOK_PRICE) FROM LIBRARY);



# BOOK_NAME
'Artificial Intelligence'





SELECT *
FROM LIBRARY
ORDER BY BOOK_PRICE ASC;



# BOOK_ID	BOOK_NAME	AUTHOR_NAME	SUBJECT_AREA	PAGES	BOOK_PRICE
1	'Introduction to Computer Science'	'John Smith'	'Computer Science'	300	'25.99'
6	'Networking Essentials'	'Emily Wilson'	'Computer Science'	350	'29.99'
4	'Operating Systems'	'Sarah Roberts'	'Computer Science'	400	'34.99'
2	'Data Structures and Algorithms'	'Jane Johnson'	'Computer Science'	450	'39.99'
3	'Database Management Systems'	'David Davis'	'Computer Science'	550	'49.99'
5	'Artificial Intelligence'	'Michael Brown'	'Computer Science'	600	'54.99'

