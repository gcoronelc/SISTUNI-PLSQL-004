Create Table SCOTT.Sal_History(
 EmpNo Number(4) not null,
 SalOld Number(7,2) null,
 SalNew Number(7,2) null,
 StartDate Date not null,
 SetUser Varchar2(30) not null
); 


Create or Replace Trigger SCOTT.tr_UpdateEmpSal
After Insert OR Update ON SCOTT.Emp
For Each Row
Begin
 Insert Into SCOTT.Sal_History(EmpNo, SalOld, SalNew, StartDate, SetUser)
 Values( :New.EmpNo, :Old.Sal, :New.Sal, sysdate, USER );
End tr_UpdateEmpSal; 


update emp
set sal = 1200
where empno = 7369; 

update emp
set ENAME = 'PANCHITO'
where empno = 7369; 


select * from Sal_History;


