Create  database SqlAssignment1;
use SqlAssignment1;

/* 1 ====================================================  Trainer_Info==========================================*/



CREATE TABLE Trainer_Info (
  Trainer_Id varchar(20) primary key,
  Salutation varchar(7),
  Trainer_Name varchar(30),
  Trainer_Location varchar(30),
  Trainer_Track varchar(15),
  Trainer_Qualification varchar(100),
  Trainer_Experiance integer,
  Trainer_Email varchar(100),
  Trainer_Password varchar(20) 
);




select * from Trainer_Info;
desc Trainer_Info;


/* 2 ====================================================  Batch_Info  ==========================================*/



create table Batch_Info(
  Batch_Id	varchar(20) primary key,
  Batch_Owner	varchar(30),
  Batch_BU_Name	varchar(30)
);

desc Batch_Info;
select * from Batch_info;

/* 3 ====================================================  Module_info  ==========================================*/


create table Module_Info(
  Module_Id	varchar(20) primary key,
  Module_Name	varchar(40),
  Module_Duration	integer(20)
);

desc module_info;

/* 4 ====================================================  Associate_Info  ==========================================*/

create table Associate_Info(
  Associate_Id	varchar(20) primary key,
  Salutation	varchar(7),
  Associate_Name varchar(30),
  Associate_Location	varchar(30),
  Associate_Track	varchar(15),
  Associate_Qualification	varchar(200),
  Associate_Email	varchar(100),
  Associate_Password varchar(20)
);
 
 
 desc Associate_Info;
 
 /* 5 ====================================================  Questions  ==========================================*/
 
create table Questions(
  Question_Id	varchar(20) primary key,
  Module_Id	varchar(20),
  Question_Text	varchar(900)
);

desc Questions;

/* 6 ====================================================  Associate_Status  ==========================================*/

create table Associate_Status(
  Associate_Id varchar(20) ,
  Module_Id	varchar(20),
  Batch_Id varchar(20),
  Trainer_Id varchar(20),
  Start_Date	varchar(20),
  End_Date	varchar(20)
 
);
desc Associate_Status;

/* 7  ====================================================  Trainer_feedback  ==========================================*/


create table Trainer_Feedback(
  Trainer_Id	varchar(20) primary key,
  Question_Id	varchar(20),
  Batch_Id varchar(20),
  Module_Id	varchar(20),
  Trainer_Rating integer(20)
);

desc Trainer_Feedback;

/* 8 ====================================================  Associate_Feddback  ==========================================*/

create table Associate_Feedback (
  Associate_Id varchar(20) primary key,
  Question_Id	varchar(20),
  Module_Id	varchar(20),
  Associate_Rating Integer(20)
);

desc Associate_Feedback;

/* 9 ====================================================  Login_Details  ==========================================*/

create table Login_Details(
  User_Id	varchar(20) primary key,
  User_Password	varchar(20)
);

desc Login_Details;




desc associate_feedback;
desc associate_info;
desc associate_status;
desc batch_info;
desc login_details;
desc module_info;
desc Questions;
desc trainer_feedback;
desc trainer_info;


















