CREATE OR REPLACE TRIGGER T_STUDENT_DELETE
AFTER DELETE ON STUDENT_INFO
FOR EACH ROW
DELETE FROM SAT_INFO WHERE studentID = :old.studentID
/

--This will delete students ID from the SAT_INFO table if deleted fom the STUDENT_INFO table. Although not applicable in the real college boards sense (being that a student can always look back at their old recods)--
--It is just an example that shows my understanding of deletion triggers in relational databases--