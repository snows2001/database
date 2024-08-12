-- 기본 테이블 생성
-- DEPT 테이블 생성
CREATE TABLE dept
  (deptno    NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
   dname     VARCHAR2(14),
   loc       VARCHAR2(13));

INSERT INTO dept (deptno, dname, loc)
  VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept (deptno, dname, loc)
  VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO dept (deptno, dname, loc)
  VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO dept (deptno, dname, loc)
  VALUES (40, 'OPERATIONS', 'BOSTON');

-- EMP 테이블 생성
CREATE TABLE emp
  (empno    NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
   ename    VARCHAR2(10),
   job      VARCHAR2(9),
   mgr      NUMBER(4),
   hiredate DATE,
   sal      NUMBER(7,2),
   comm     NUMBER(7,2),
   deptno   NUMBER(2) CONSTRAINT FK_DEPTNO REFERENCES dept);

INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7369, 'SMITH', 'CLERK', 7902, TO_DATE('17-12-80', 'DD-MM-RR'), 800, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7499, 'ALLEN', 'SALESMAN', 7698, TO_DATE('20-02-81', 'DD-MM-RR'), 1600, 300, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7521, 'WARD', 'SALESMAN', 7698, TO_DATE('22-02-81', 'DD-MM-RR'), 1250, 500, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7566, 'JONES', 'MANAGER', 7839, TO_DATE('02-04-81', 'DD-MM-RR'), 2975, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7654, 'MARTIN', 'SALESMAN', 7698, TO_DATE('28-09-81', 'DD-MM-RR'), 1250, 1400, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7698, 'BLAKE', 'MANAGER', 7839, TO_DATE('01-05-81', 'DD-MM-RR'), 2850, NULL, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7782, 'CLARK', 'MANAGER', 7839, TO_DATE('09-06-81', 'DD-MM-RR'), 2450, NULL, 10);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7788, 'SCOTT', 'ANALYST', 7566, TO_DATE('13-07-87', 'DD-MM-RR'), 3000, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7839, 'KING', 'PRESIDENT', NULL, TO_DATE('17-11-81', 'DD-MM-RR'), 5000, NULL, 10);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7844, 'TURNER', 'SALESMAN', 7698, TO_DATE('08-09-81', 'DD-MM-RR'), 1500, 0, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7876, 'ADAMS', 'CLERK', 7788, TO_DATE('13-07-87', 'DD-MM-RR'), 1100, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7900, 'JAMES', 'CLERK', 7698, TO_DATE('03-12-81', 'DD-MM-RR'), 950, NULL, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7902, 'FORD', 'ANALYST', 7566, TO_DATE('03-12-81', 'DD-MM-RR'), 3000, NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7934, 'MILLER', 'CLERK', 7782, TO_DATE('23-01-82', 'DD-MM-RR'), 1300, NULL, 10);

-- BONUS 테이블 생성
CREATE TABLE bonus
  (ename    VARCHAR2(10),
   job      VARCHAR2(9),
   sal      NUMBER,
   comm     NUMBER);

INSERT INTO bonus VALUES (7839,'NULL',NULL,0);
INSERT INTO bonus VALUES (7698,'NULL',NULL,0);
INSERT INTO bonus VALUES (7782,'NULL',NULL,0);
INSERT INTO bonus VALUES (7566,'NULL',NULL,0);
INSERT INTO bonus VALUES (7654,'NULL',NULL,0);
INSERT INTO bonus VALUES (7499,'NULL',NULL,0);
INSERT INTO bonus VALUES (7844,'NULL',NULL,0);
INSERT INTO bonus VALUES (7900,'NULL',NULL,0);
INSERT INTO bonus VALUES (7521,'NULL',NULL,0);
INSERT INTO bonus VALUES (7902,'NULL',NULL,0);
INSERT INTO bonus VALUES (7369,'NULL',NULL,0);


-- SALGRADE 테이블 생성
CREATE TABLE salgrade
  (grade    NUMBER,
   losal    NUMBER,
   hisal    NUMBER);

INSERT INTO salgrade (GRADE, LOSAL, HISAL) VALUES (1, 700, 1200);
INSERT INTO salgrade (GRADE, LOSAL, HISAL) VALUES (2, 1201, 1400);
INSERT INTO salgrade (GRADE, LOSAL, HISAL) VALUES (3, 1401, 2000);
INSERT INTO salgrade (GRADE, LOSAL, HISAL) VALUES (4, 2001, 3000);
INSERT INTO salgrade (GRADE, LOSAL, HISAL) VALUES (5, 3001, 9999);


COMMIT;