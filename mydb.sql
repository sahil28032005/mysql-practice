show databases;
use practical_2a;
show tables;
-- CREATE TABLE DEPT (
--     DEPTNO VARCHAR(10) PRIMARY KEY,  -- Assuming DEPTNO is the primary key
--     DNAME VARCHAR(50) NOT NULL       -- Department Name
-- );
-- CREATE TABLE EMP (
--     NUMERIC5 INT PRIMARY KEY,                -- Employee Number (change to INT and corrected name)
--     ENAME VARCHAR(20) NOT NULL,             -- Employee Name
--     JOB CHAR(10),                           -- Designation
--     SSN NUMERIC(10) UNIQUE,                 -- Employee SSN Number
--     HIREDATE DATETIME,                      -- Date of Joining
--     COMM DECIMAL(7,2) CHECK (COMM >= 5000),-- Commission (min value should be >= 5000)
--     BRANCH VARCHAR(10) DEFAULT 'FC Road',   -- Branch Name
--     DEPTNO VARCHAR(10),                     -- Foreign Key
--     FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO) -- Foreign Key Constraint
-- );

-- INSERT INTO DEPT (DEPTNO, DNAME, LOC) VALUES
-- ('10', 'ACCOUNTING', 'NEW YORK'),
-- ('20', 'RESEARCH', 'DALLAS'),
-- ('30', 'SALES', 'CHICAGO'),
-- ('40', 'OPERATIONS', 'BOSTON');

-- select * from dept;

-- ALTER TABLE EMP ADD SAL DECIMAL(9,2); -- Add Salary column

-- INSERT INTO EMP (NUMERIC5, ENAME, JOB, SSN, HIREDATE, COMM, BRANCH, DEPTNO) VALUES
-- (10001, 'Alice Smith', 'Manager', 1234567890, '2024-01-15', 6000.00, 'FC Road', '10'),
-- (10002, 'Bob Johnson', 'Analyst', 2345678901, '2024-02-20', 7000.00, 'FC Road', '20'),
-- (10003, 'Carol White', 'Clerk', 3456789012, '2024-03-05', 5000.00, 'FC Road', '30'),
-- (10004, 'David Brown', 'Manager', 4567890123, '2024-04-12', 7500.00, 'FC Road', '40'),
-- (10005, 'Eve Davis', 'Clerk', 5678901234, '2024-05-18', 5500.00, 'FC Road', '10'),
-- (10006, 'Frank Miller', 'Analyst', 6789012345, '2024-06-22', 6200.00, 'FC Road', '20'),
-- (10007, 'Grace Wilson', 'Manager', 7890123456, '2024-07-30', 6800.00, 'FC Road', '30'),
-- (10008, 'Henry Moore', 'Clerk', 8901234567, '2024-08-10', 5400.00, 'FC Road', '40'),
-- (10009, 'Ivy Taylor', 'Analyst', 9012345678, '2024-09-15', 7100.00, 'FC Road', '10'),
-- (10010, 'Jack Anderson', 'Clerk', 1234567891, '2024-10-20', 5300.00, 'FC Road', '20');

-- select * from emp;

-- CREATE UNIQUE INDEX idx_ssn ON EMP (SSN);
-- CREATE VIEW EMP_V1 AS
-- SELECT NUMERIC5 AS EMPNO,  -- Alias for Employee Number
--        ENAME,
--        JOB,
--        HIREDATE
-- FROM EMP;
-- SHOW FULL TABLES WHERE Table_type = 'VIEW';
-- CREATE TABLE SEQ1 (
--     ID INT PRIMARY KEY AUTO_INCREMENT,
--     CODE INT UNIQUE
-- );
-- INSERT INTO SEQ1 (CODE) VALUES
-- (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
-- (11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
-- (21), (22), (23), (24), (25);

-- CREATE VIEW DEPT_SYNONYM AS
-- SELECT * FROM DEPT;
-- -- Query using the synonym (view)
-- SELECT * FROM DEPT_SYNONYM;

-- -- Insert using the synonym (view)
-- INSERT INTO DEPT_SYNONYM (DEPTNO, DNAME, LOC) VALUES ('50', 'IT', 'SAN FRANCISCO');

-- ALTER TABLE DEPT DROP PRIMARY KEY;
-- ALTER TABLE DEPT
-- ADD PRIMARY KEY (DEPTNO, DNAME);
-- ALTER TABLE EMP
-- MODIFY BRANCH VARCHAR(20);

SELECT * FROM EMP;
SELECT * FROM DEPT;
-- SELECT ENAME, SAL
-- FROM EMP
-- WHERE DEPTNO = '20';

-- SELECT ENAME, JOB, SAL
-- FROM EMP
-- WHERE JOB = 'Manager';

-- SELECT ENAME, JOB, SAL
-- FROM EMP
-- WHERE JOB != 'Manager';
-- SELECT ENAME
-- FROM EMP
-- WHERE HIREDATE BETWEEN '1981-03-01' AND '1983-06-01';
-- SELECT ENAME
-- FROM EMP
-- WHERE YEAR(HIREDATE) = 1981;
-- INSERT INTO EMP (NUMERIC5, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) VALUES
-- (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, '20'),
-- (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, '30'),
-- (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, '30'),
-- (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, '20'),
-- (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, '30'),
-- (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, '30'),
-- (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, '10'),
-- (7788, 'SCOTT', 'ANALYST', 7566, '1987-04-19', 3000, NULL, '20'),
-- (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, '10'),
-- (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, '30'),
-- (7876, 'ADAMS', 'CLERK', 7788, '1987-05-23', 1100, NULL, '20'),
-- (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, '30'),
-- (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, '20'),
-- (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, '10');

-- SELECT ENAME
-- FROM EMP
-- WHERE ENAME LIKE 'S%';

-- SELECT ENAME
-- FROM EMP
-- WHERE ENAME LIKE '%S';

-- SELECT ENAME
-- FROM EMP
-- WHERE DEPTNO IN ('20', '40');

-- SELECT ENAME, JOB, DEPTNO
-- FROM EMP
-- WHERE JOB IN ('Clerk', 'Salesman');

-- SELECT ENAME
-- FROM EMP
-- WHERE DEPTNO = '30'
-- ORDER BY SAL DESC;

-- SELECT MIN(SAL) AS MinimumSalary, MAX(SAL) AS MaximumSalary
-- FROM EMP;
SELECT DEPTNO, COUNT(*) AS NumberOfEmployees
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) > 3;










