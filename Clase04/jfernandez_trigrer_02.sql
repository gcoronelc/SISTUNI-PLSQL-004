
CREATE TABLE scott.sal_history(
empno NUMBER(4) NOT NULL,
salold NUMBER(7,2),
salnew NUMBER(7,2),
stardate DATE,
setuser VARCHAR2(30) NOT NULL
);


CREATE OR REPLACE TRIGGER scott.tr_update_jc
AFTER INSERT OR UPDATE On scott.emp

FOR EACH ROW 

 BEGIN 
     
    INSERT INTO scott.sal_history(empno,salold,salnew,stardate,setuser)
    VALUES (:NEW.empno,:old.sal,:NEW.sal, SYSDATE,user);
  
 END;
 
  