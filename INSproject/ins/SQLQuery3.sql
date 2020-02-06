create database insdatabase
go

use insdatabase

create table customer
(c_id int identity(1,1) constraint pk primary key,
 c_username varchar(20),
 c_password varchar(20),
 c_email varchar(20),
 c_phonenumber bigint,
 c_firstname varchar(20),
 c_lastname varchar(20),
 c_institutionname varchar(20),
 c_role varchar(20),
 c_state varchar(20),
)
go

select * from customer


alter table customer
drop constraint un 

sp_help 'sys.objects'



delete from customer
where c_id=5

alter table customer
add constraint un unique (c_username)

delete from customer
where c_id=2

alter table customer
drop column c_state

select * from customer

create table policy
(p_id int identity(1,1) constraint pk_p primary key,
 p_institutionname varchar(20),
 p_role varchar(20),
 p_state varchar(20),
 p_specialization varchar(40),
 p_policytype varchar(40),
 p_premium varchar(20),
 c_id int references customer(c_id) 
)

select * from policy
drop table policy

create table policy
(p_id int identity(1,1) constraint pk_p primary key,
 p_institutionname varchar(20),
 p_role varchar(20),
 p_state varchar(20),
 p_specialization varchar(40),
 p_policytype varchar(40),
 p_premium varchar(20),
 c_id int constraint fk_c foreign key references customer(c_id)
)

alter table policy 
alter column c_id int null 
select * from policy
select * from customer

alter table policy
add p_insureamount varchar(40)

alter table policy
add p_insuretime varchar(20)

update policy
set p_insureamount=500000
where p_id=4

update policy
set p_insuretime=20
where p_id=4

update policy
set p_insuretime=20,p_insureamount=300000
where p_id=5

update policy
set p_insuretime=15,p_insureamount=500000
where p_id=6

select * from policy
select * from customer

delete from policy
where p_id=8

create table payment
(pay_id int identity(1,1) constraint pk_pay primary key,
 c_name varchar(20),
 acc_no varchar(20),
 bank varchar(20),
 isfc varchar(20),
 paydate date,
 payment varchar(20),
 c_id int constraint fk_cus foreign key references customer(c_id),
 p_id int constraint fk_pol foreign key references policy(p_id)
)

select * from customer
select * from policy
select * from payment

alter table payment
add yr_count int 
alter table payment
add ins_amount_left varchar(40) 

alter table payment
drop column ins_amount_left

alter table policy
add total_amount varchar(20)

select * from customer
select * from policy
select * from payment

ALTER TABLE table_name ALTER COLUMN column_name datatype
alter table payment 
alter column payment varchar(60)

update policy
set total_amount=400000
where p_id=7

select * from policy

create Table claim
(claim_id int identity(100,1) constraint pk_claim primary key,
 c_id int constraint fk_cus2 foreign key references customer(c_id),
 p_id int constraint fk_pol2 foreign key references policy(p_id),
 institutionname varchar(40),
 claimtype varchar(40),
 insure_amount varchar(40),
 claimable_amount varchar(60)
)

select * from customer
select * from policy
select * from payment
select * from claim

alter table policy
add claim_status varchar(20)

alter table claim
add claim_date date

alter table payment 
alter column payment varchar(60)

alter table claim
drop column c_id

alter table claim
add name varchar(20)

select * from claim
select * from payment
select * from customer

create table contactus
(Name varchar(20),
Email varchar(40),
Message varchar(70)
)

select * from contactus

create table agent
(a_id int identity(50,1) constraint pka primary key,
 a_username varchar(20) unique,
 a_password varchar(20),
 a_email varchar(20),
 a_phonenumber bigint,
 a_firstname varchar(20),
 a_lastname varchar(20),
)

select * from customer
select * from payment
select * from claim
select * from agent
select * from policy
select * from contactus

alter table contactus
add reply varchar(50)

delete from policy
where p_id=13

alter table contactus
add number int identity(500,1)
