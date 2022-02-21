USE sqlassignment1;

/*
	Exercise 1
Problem Statement: 1
Write a query to display trainer IDs for all associates whose names contain the letter 'i'. Note: Use sub-query to achieve this.

*/
select Trainer_id from trainer_info where Trainer_Name in (select Trainer_name from trainer_info where Trainer_name like '%i%');

/*
	Problem Statement: 2 
Write a query to display trainer IDs for all associates whose names do not contain the letter 'i'.
Note: Use sub-query to achieve this.
*/

select Trainer_id,Trainer_Name from trainer_info where Trainer_Name not in
 (select Trainer_name from trainer_info where Trainer_name like  '%i%');
 
 /*
	Problem Statement:3
Write a query to display trainer ID and trainer rating for the trainers who handled J2EE module. 
Hint: Use trainer_feedback and associate status tables.
Note: Use sub-query to achieve this.*/

select trainer_info, Trainer_Rating  FROM Associate_Status , Trainer_Feedback 
where Associate_Status.Trainer_Info= any (Select Trainer_Id from Trainer_Feedback ) ;



/*
	Problem Statement: 4
Write a query to pick up the maximum marks secured in the subject “EI05IP” 
and display the student name and registration number of the student who has secured it.*/

select S_name,Reg_no from student where subject="EI05IP" LIMIT 1;

select S_name,Reg_no from student where subject="EI05IP" LIMIT 1,1;




select * from trainer_feedback;
select * from associate_status;
select * from trainer_info;
select * from questions;
select * from module_info;




/*=========================================   join ==================================*/

/*
Exercise 1
Problem Statement:
Write a query to display trainer_id and batch_id details in such a way that we get all possible combinations of trainer IDs and batch IDs.
Hint: Use Trainer_Info and Batch_Info tables.


*/


select trainer_info.trainer_id,batch_info.batch_id from trainer_info cross join  batch_info;

/*
	Problem Statement:
Write a query to display the records from all columns of tables associate_status and batch_info, 
wherever the batch_id in the two tables matches.

*/

select associate_status.*,batch_info.* from associate_status inner join 
batch_info on associate_status.batch_id = batch_info.batch_id;
 
 
 /*
 
 Problem Statement:
Write a query to display the associate IDs of the associates tagged to trainers 
and all the trainer IDs irrespective of whether there are any associates tagged 
to them or not. Hint: Use associate_status and trainer_info tables.
Note: Use Left Outer Join

 */

select trainer_info.trainer_id, associate_status.Associate_Id from trainer_info
left outer join associate_status on Trainer_info.trainer_id = associate_status.trainer_id;




select * from batch_info;
select * from trainer_info;

select * from trainer_feedback;
select * from associate_status;
select * from trainer_info;
select * from questions;
select * from module_info;
select * from login_details;
