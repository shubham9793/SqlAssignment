use sqlassignment1;



/*—Exercise 2.1*/

UPDATE `sqlassignment1`.`Trainer_Info` SET `Trainer_Password` = 'nn4@123' WHERE (`Trainer_Id` = 'F004');

DELETE FROM Associate_Status WHERE Associate_Id ="AOO3" AND Module_Id="J2EE" AND Batch_Info="B004" AND Trainer_Info="F004" AND Start_Date ="2005-12-01" AND End_Date="2005-12-25";

SELECT * FROM Trainer_Info ORDER BY Trainer_Experiance limit 5;


INSERT INTO Login_Details VALUES ("U001","Admin1@123");
INSERT INTO Login_Details VALUES ("'U002' ","Admin2@123");

CREATE USER ‘dummy_user’@‘localhost' IDENTIFIED BY 'password';

GRANT CREATE, SELECT ON sqlassignment1. * TO ‘dummy_user’@‘localhost';

REVOKE PERMISSION_TYPE ON sqlassignment1.* FROM ‘dummy_user’@‘localhost’;

DROP TABLE Login_Details ;
