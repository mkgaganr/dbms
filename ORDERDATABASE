create table customer1
( cust_no number(20),cname varchar2(10),cust_city varchar2(20),primary key(cust_no));
  CREATE TABLE ORDER1
  ( order_no number(10),odate date,order_amount number(20),cust_no number(20),primary key(order_no),foreign key(cust_no) references customer1(cust_no));
create table item
( item_no number(20),item_price number(20),primary key(item_no));
create table order_item
(order_no number(20),item_no number(20),item_qty number(20),foreign key(order_no) references order1(order_no),foreign key(item_no) references item(item_no));
crEATE TABLE WARHOUSE
( WARHOUSE_NO NUMBER(20),WARHOUSE_CITY VARCHAR2(20),PRIMARY KEY(WARHOUSE_NO));
CREATE TABLE SHIPMENT 
(ORDER_NO NUMBER(10),WARHOUSE_NO NUMBER(20),SHIPD DATE,foreign key(ORDER_NO) references ORDER1(ORDER_NO),foreign key(WARHOUSE_NO) references WARHOUSE(WARHOUSE_NO));
INSERT INTO CUSTOMER1 VALUES(&CUST_NO,'&CNAME','&CUST_CITY');
INSERT INTO ORDER1 VALUES(&ORDER_NO,'&ODATE',&ORDER_AMOUNT,&CUST_NO);
INSERT INTO ITEM VALUES(&ITEM_NO,&ITEM_PRICE);
INSERT INTO ORDER_ITEM VALUES(&ORDER_NO,&ITEM_NO,&ITEM_QTY);
INSERT INTO WARHOUSE VALUES(&WARHOUSE_NO,'&WARHOUSE_CITY');
INSERT INTO SHIPMENT VALUES(&ORDER_NO,&WARHOUSE_NO,'&SHIPD');
