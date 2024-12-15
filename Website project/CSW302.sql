Create database csw302;

use csw302;
CREATE TABLE USERS(

EMAIL varchar(120) UNIQUE NOT NULL,
FirstName varchar(50) NOT NULL,
LastName varchar(50), 
Pass_word varchar(100) not null,
DOB date not null,
Gender ENUM('MALE','FEMALE','OTHER') not null,
Created_at Timestamp default current_timestamp); 