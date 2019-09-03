CREATE DATABASE db_personnel;

USE db_personnel


CREATE TABLE tbl_employee (
		employee_id INT PRIMARY KEY NOT null IDENTITY (1,4653), 
		employee_name  CHAR (25) NOT Null,
		employee_status CHAR (20) Null,
		job_role CHAR (15) NULL,
);

CREATE TABLE tbl_info(
	info_id INT PRIMARY KEY NOT NULL IDENTITY (1,113),
	info_residence CHAR (20),
	info_age SMALLINT,
	info_employee INT NOT NULL CONSTRAINT fk_employee_id FOREIGN KEY REFERENCES tbl_employee(employee_id)ON UPDATE CASCADE ON DELETE CASCADE,
	
);
 INSERT INTO tbl_employee(employee_name,employee_status,job_role)
	VALUES 
		('John Wick','Retired','Hitman'),
		('Gandalf Gray','Active','Wizard'),
		('Tony Stark','KIA','Enforcer'),
		('Harry Potter','Active','Wizard'),
		('Han Solo','KIA', 'Bounty Hunter'),
		('Chewbacca','Active','Pet')
  ;
  

 INSERT INTO tbl_info(info_residence,info_age)
	VALUES
		('New York','45'),
		('Middle Earth','1030'),
		('Los Angeles','40'),
		('London','20'),
		('Correlia','60'),
		('Kashyyyk','200')
;

SELECT tbl_employee.employee_name, tbl_employee.employee_status,tbl_info.info_residence
FROM tbl_employee
FULL OUTER JOIN tbl_info ON  employee_id=info_employee
ORDER BY tbl_employee.employee_name;
