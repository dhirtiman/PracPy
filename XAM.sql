

CREATE table HOSPITAL(
    PATEINT_NO INT PRIMARY KEY,
    PNAME VARCHAR(50),
    DOCTOR_NAME VARCHAR(50),
    DCTR_FEES DECIMAL(10,2),
    ADMISSION_DATE DATE,
    DISCHARGE_DATE DATE,
    TOTAL_DUES DECIMAL(10,2)
);

INSERT INTO HOSPITAL (PATEINT_NO, PNAME, DOCTOR_NAME, DCTR_FEES, ADMISSION_DATE, DISCHARGE_DATE, TOTAL_DUES) VALUES
(1001, 'Ramesh Kumar', 'Dr. Sharma', 5000.00, '2023-01-05', '2023-01-10', 35000.00),
(1002, 'Sneha Patel', 'Dr. Gupta', 4500.00, '2023-02-12', '2023-02-18', 55000.00),
(1003, 'Amit Singh', 'Dr. Khan', 6000.00, '2023-02-13', '2023-03-30', 42000.00),
(1004, 'Ananya Gupta', 'Dr. Sharma', 5000.00, '2023-02-13', '2023-04-15', 38000.00),
(1005, 'Rajesh Verma', 'Dr. Patel', 4500.00, '2023-05-15', '2023-03-04', 48000.00),
(1006, 'Sunita Sharma', 'Dr. Khan', 6000.00, '2023-06-20', '2023-03-04', 52000.00);



select pateint_no,pname FROM hospital 
where total_dues > 40000.00;

# pateint_no	pname
1002	'Sneha Patel'
1003	'Amit Singh'
1005	'Rajesh Verma'
1006	'Sunita Sharma'



select count(*) as num_discharged 
from hospital
where discharge_date = '2023-03-04';


# num_discharged
2


SELECT doctor_name,dctr_fees
from hospital
WHERE  admission_date = '2023-02-13';

# doctor_name	dctr_fees
'Dr. Khan'	'6000.00'
'Dr. Sharma'	'5000.00'


SELECT DCTR_FEES, GROUP_CONCAT(DOCTOR_NAME) AS DOCTORS
FROM HOSPITAL
GROUP BY DCTR_FEES
ORDER BY DCTR_FEES ASC;



# DCTR_FEES	DOCTORS
'4500.00'	'Dr. Gupta,Dr. Patel'
'5000.00'	'Dr. Sharma,Dr. Sharma'
'6000.00'	'Dr. Khan,Dr. Khan'
