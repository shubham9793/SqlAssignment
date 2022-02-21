USE sqlassignment1;

SELECT * FROM Trainer_Info where Trainer_Email IS NULL;

SELECT Trainer_Id, Trainer_Name,Trainer_Track,Trainer_Location FROM Trainer_Info where Trainer_Experiance>4;

SELECT * FROM Module_Info WHERE Module_Duration>200;

SELECT Trainer_Id, Trainer_Name FROM Trainer_Info where NOT Trainer_Qualification="BACHELOR OF TECHNOLOGY" ;

SELECT * FROM Module_Info WHERE Module_Duration BETWEEN 200 AND 300;

SELECT Trainer_Id, Trainer_Name FROM Trainer_Info WHERE Trainer_Name LIKE 'M%';

SELECT Trainer_Id, Trainer_Name FROM Trainer_Info WHERE Trainer_Name LIKE 'O%';

SELECT Module_Name FROM Module_Info WHERE Module_Name  IS NOT NULL;

/*Hands-on Exercise: MySQL Function */

SELECT Module_Name,ROUND(Module_Duration*3.334,2) FROM Module_Info;


SELECT Module_Id, CONCAT(UPPER(SUBSTRING(Module_Name,1,1)),LOWER(SUBSTRING(MODULE_NAME,2)))AS NAME FROM Module_Info;


SELECT Module_Id , datediff("2022-02-20",START_DATE) FROM Associate_Status;


SELECT concat("<",MODULE_NAME,"><",MODULE_ID,">") AS"<MODULE NAME><MODULE ID>" FROM Module_Info;


SELECT  UPPER(MODULE_NAME)  FROM Module_Info;


SELECT  SUBSTRING(MODULE_NAME,1,2)  FROM Module_Info;


select avg(coalesce(MODULE_DURATION, 0)) from Module_Info; 


SELECT * ,CAST( substr(Trainer_id,2,4)+100000 AS UNSIGNED) FROM Trainer_Info;


SELECT Module_Name, cast(Module_Duration as Char(5)) as "Base Fee" FROM Module_Info;


SELECT * FROM Module_Info;

