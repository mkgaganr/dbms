CREATE TABLE BRANCH

(

BRANCH_NAME VARCHAR2(10),

branchcity VARCHAR2(20),

assets NUMBER(10,2),

PRIMARY KEY(BRANCH_NAME)

);
CREATE TABLE ACCOUNT1
(  ACC_NO NUMBER(10),BRANCH_NAME VARCHAR2(10),BALANCE NUMBER(10,2),
,FOREIGN KEY(BRANCH_NAME) REFERENCES BRANCH(BRANCH_NAME)
PRIMARY KEY(ACC_NO)
);
CREATE TABLE DEPOSITOR
(
    CUSTOMER_NAME VARCHAR2(20),
    ACC_NO NUMBER(10),
    FOREIGN KEY(ACC_NO) REFERENCES ACCOUNT1(ACC_NO),
    PRIMARY KEY(CUSTOMER_NAME)
    );
    CREATE TABLE CUSTOMER
    (
        CUSTOMER_NAME VARCHAR2(20),
         CUSTOMER_STEET VARCHAR2(20),
          CUSTOMER_CITY VARCHAR2(20),
           FOREIGN KEY(CUSTOMER_NAME) REFERENCES DEPOSITOR(CUSTOMER_NAME)
          );
          CREATE TABLE LOAN
          (
             LOAN_NUMBER NUMBER(20),
             BRANCH_NAME VARCHAR2(10),
             AMOUNT NUMBER(10,2),
             FOREIGN KEY(BRANCH_NAME) REFERENCES BRANCH(BRANCH_NAME),
             PRIMARY KEY(LOAN_NUMBER)
             );
             CREATE TABLE BORROWER
             (
                CUSTOMER_NAME VARCHAR2(15),
                LOAN_NUMBER NUMBER(20),
                 FOREIGN KEY(CUSTOMER_NAME) REFERENCES DEPOSITOR(CUSTOMER_NAME),
                  FOREIGN KEY(LOAN_NUMBER) REFERENCES LOAN(LOAN_NUMBER)
             );
             INSERT INTO  BRANCH VALUES

('&BRANCH_NAME','&branchcity',&ASSETS);
             INSERT INTO ACCOUNT1 VALUES
             (&ACC_NO,'&BRANCH_NAME',&BALANCE);
       insert into depositor values
       ('&customer_name',&acc_no);
       insert into customer values
       ('&customer_name','&customer_city','&customer_street');
       insert into loan values
       (&loan_number,'&branch_name',&amount);
       insert into borrower values
       ('&customer_name',&loan_number);
       (1111,'jpnagar',12000)
