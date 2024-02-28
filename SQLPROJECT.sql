create database HOSPITAL;

use HOSPITAL;

CREATE TABLE PatientRecords (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(255) NOT NULL,
    Reason VARCHAR(255) NOT NULL,
    DateOfAdmission DATE NOT NULL,
    DateOfDischarge DATE
); # query 1

INSERT INTO PatientRecords (PatientID, PatientName, Reason, DateOfAdmission, DateOfDischarge)
VALUES
    (1, 'Affan', 'Fever', '2023-09-01', '2023-09-10'),
    (2, 'Vishal', 'Broken Arm', '2023-09-02', '2023-09-08'),
    (3, 'Siddhesh', 'Appendicitis', '2023-09-03', '2023-09-07'),
    (4, 'Jawad', 'Influenza', '2023-09-04', '2023-09-11'),
    (5, 'Sachin', 'Heart Surgery', '2023-09-05', NULL),
    (6, 'Aquib', 'Fractured Leg', '2023-09-06', '2023-09-09'),
    (7, 'Rohit', 'Pneumonia', '2023-09-07', '2023-09-12'),
    (8, 'Nazmin', 'Migraine', '2023-09-08', '2023-09-10'),
    (9, 'Samiksha', 'Appendicitis', '2023-09-09', '2023-09-14'),
    (10, 'Shreyash', 'COVID-19', '2023-09-10', NULL),
    (11, 'Jayesh', 'Fractured Arm', '2023-09-11', NULL),
    (12, 'Irum', 'Allergic Reaction', '2023-09-12', '2023-09-13'); -- query 2
    
    desc PatientRecords; -- query 3
    
    show tables; -- query 4

    drop table PatientRecords; -- query 5
    
    CREATE TABLE PatientRecords (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(255) NOT NULL,
    Reason VARCHAR(255) NOT NULL,
    DateOfAdmission DATE NOT NULL,
    DateOfDischarge DATE
);

INSERT INTO PatientRecords (PatientID, PatientName, Reason, DateOfAdmission, DateOfDischarge)
VALUES
    (1, 'Affan', 'Fever', '2023-09-01', '2023-09-10'),
    (2, 'Vishal', 'Broken Arm', '2023-09-02', '2023-09-08'),
    (3, 'Siddhesh', 'Appendicitis', '2023-09-03', '2023-09-07'),
    (4, 'Jawad', 'Influenza', '2023-09-04', '2023-09-11'),
    (5, 'Sachin', 'Heart Surgery', '2023-09-05', NULL),
    (6, 'Aquib', 'Fractured Leg', '2023-09-06', '2023-09-09'),
    (7, 'Rohit', 'Pneumonia', '2023-09-07', '2023-09-12'),
    (8, 'Nazmin', 'Migraine', '2023-09-08', '2023-09-10'),
    (9, 'Samiksha', 'Appendicitis', '2023-09-09', '2023-09-14'),
    (10, 'Shreyash', 'COVID-19', '2023-09-10', NULL),
    (11, 'Jayesh', 'Fractured Arm', '2023-09-11', NULL),
    (12, 'Irum', 'Allergic Reaction', '2023-09-12', '2023-09-13');
    
    rename table PatientRecords to Patients; -- query 6
    
    desc Patients;
    
    alter table Patients
    add contact int(10); -- query 7
    
    alter table Patients
    add age int(5) after PatientName; -- query 8
    
    alter table Patients
    change column PatientName Name varchar(50); -- query 9
    
    desc Patients;
    
    alter table Patients
    modify column Reason varchar(100); -- query 10
    
    alter table Patients
    drop column contact; -- query 11
    
    select * from Patients; -- query 12
    
    truncate table Patients; -- query 13
    
    update Patients
    set DateOfAdmission = 2023-07-01
    where PatientId = 1; -- query 13
    
    update Patients
    set PatientName = 'Sameer',Reason = 'Malaria'
    where PatientID = 3; -- query 14
    
    delete from Patients
    where PatientID = 12; -- query 15
    
    delete from Patients; -- query 16
    
    select Name
    from Patients; -- query 17
    
    select Name,Reason
    from Patients; -- query 18
    
    select PatientID,Name,Reason,DateOfAdmission
    from Patients; -- query 19
    
    select 9+3; -- query 20
    
    select 9-3; -- query 21
    
    select 9*3; -- query 22
    
    select 9/3; -- query 23
    
    select 9%3; -- query 24
    
    create table temporary(
a int,
b int); -- query 25

insert into temporary
values(1,5),(8,4),(2,9),(7,3); -- query 26

select a,b,a+b
from temporary; -- query 27

select a,b,a+b as addition
from temporary; -- query 28

select a,b,a-b as subtraction
from temporary; -- query 29

select a,b,a*b as multiplication
from temporary; -- query 30

select a,b,a/b as division
from temporary; -- query 31

select a,b,a%b as modulus
from temporary; -- query 32

select a,b,a+b as addition,
a-b as subtraction,
a*b as multiplication,
a/b as division,
a%b as modulus
from temporary; -- query 33

create table Doctors(
id int primary key auto_increment,
name varchar(50),
age int not null check(age>=25),
salary int default 0,
city varchar(50) not null,
contact int(20) not null); -- query 34

insert into Doctors(name,age,salary,city,contact)
values('Hassan',26,50000,'Bhwandi',1111111),
('Adnan',27,30000,'Mumbai',2222222),
('Prathmesh',25,35000,'Bhandup',3333333),
('Mudassir',28,40000,'Powai',4444444),
('Palak',30,25000,'Parel',5555555),
('Mehwish',29,45000,'Mulund',6666666),
('Shifa',26,35000,'Ambernath',7777777); -- query 35

select *
from Doctors
where age != 25; -- query 36

select *
from Doctors
where salary >= 30000; -- query 37

select * 
from Doctors 
where salary <= 40000; -- query 38

select *
from Doctors
where city = 'Mumbai' and salary = 30000; -- query 39

select *
from Doctors
where city = 'Ambernath' or salary = 35000; -- query 40

select *
from Doctors
where city = 'Mumbai' or city = 'Bhiwandi' or city = 'Mulund'; -- query 41

select *
from Doctors
where not city = 'Bhandup'; -- query 42

select distinct city
from Doctors; -- query 43

select * 
from Doctors
where name like 'a%'; -- query 44

select *
from Doctors
limit 4; -- query 45

select *
from emp 
order by salary; -- query 46

select concat('Affan','Ansari'); -- query 47

select lower('JAWAD'); -- query 48

select upper('siddhesh'); -- query 49

select replace('Have a nice day','a','u'); -- query 50

select substring('Embarassing',3,8); -- query 51

select length('Industrialization'); -- query 52

select trim('     Cristiano     '); -- query 53

select abs(-4576); -- query 54

select ceil(466.2); -- query 55

select floor(466.2); -- query 56
    
select pow(144,3); -- query 57

select sqrt(225); -- query 58
  
select Patient.ID as patient_id,Doctors.ID as doctor_id
from Patients
join Doctors
on Patients.PatientID =  Doctors.ID; -- query 59

select Patient.ID as patient_id,Doctors.ID as doctor_id
from Patients
left join Doctors
on Patients.PatientID =  Doctors.ID; -- query 60   
    
select Patient.ID as patient_id,Doctors.ID as doctor_id
from Patients
right join Doctors
on Patients.PatientID =  Doctors.ID; -- query 61
    
select Patient.ID as patient_id,Doctors.ID as doctor_id
from Patients
left join Doctors
on Patients.PatientID =  Doctors.ID  
union
select Patient.ID as patient_id,Doctors.ID as doctor_id
from Patients
right join Doctors
on Patients.PatientID =  Doctors.ID; -- query 62
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
