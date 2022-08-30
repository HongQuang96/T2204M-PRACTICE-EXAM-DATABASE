--create table
create table Department (
	DepartId int identity(1,1) primary key,
	DepartName varchar(50) not null,
	Description varchar(100) not null
);

create table Employee (
	EmpCode char(6) primary key,
	FirstName varchar(30) not null,
	LastName varchar(30) not null,
	Birthday smalldatetime not null,
	Gender bit default 1,
	Address varchar(100),
	DepartId int not null foreign key references Department(DepartId),
	Salary money
);

--insert data
 
insert into Department(DepartName, Description) values 
('sale department','sales for the company'),
('marketing department','give all ideas to the company'),
('personnel department','Manage all employee issues in the company');

insert into Employee values
('EPAAA', 'Lionel', 'Messi', '19872406', '1', 'Barelona', 1, 200.05),
('EPAAB', 'Kylian', 'Mbappé', '19982012', '1', 'Manchester', 3, 200.35),
('EPAAC', 'Nguyen', 'Hong Quang', '20000506', '0', 'Nam Dinh', 2, 200.87),
('EPAAD', 'Cristiano', 'Ronaldo', '19870204', '1', 'Madrid', 1, 300.78)
--CÂU 3:
create index IX_DepartmentName on Department(DepartName)
--CÂU 4:
create index IX_DepartmentName on Department(DepartName)
--CÂU 7:
create procedure sp_getAllEmp @departmentId int as
select * from Employee where DepartId = @departmentId;