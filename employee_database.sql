create table departments(dept_no varchar PRIMARY KEY,
						 dept_name varchar(100));
select * from departments

create table dept_manager(dept_no varchar(100),
						 emp_no integer, 
						 from_date date,
						 to_date date,
						 FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
						 FOREIGN KEY(emp_no) REFERENCES employee_info(emp_no));			 
select * from dept_manager
		 
create table employee_info(emp_no integer PRIMARY KEY NOT NULL,
						  birth_date date, 
						  first_name varchar(100),
						  last_name varchar(100),
						  gender varchar(10),
						  hire_date varchar);
select * from employee_info

create table dept_emp(emp_no integer,
					 dept_no varchar(100),
					 from_date date,
					 to_date date,
					 FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
					 FOREIGN KEY(emp_no) REFERENCES employee_info(emp_no));
					 
select * from dept_emp		 
create table salaries(emp_no integer,
					 salary integer,
					 from_date date,
					 to_date date,
					 FOREIGN KEY(emp_no) REFERENCES employee_info(emp_no));
					 
select * from salaries

create table emp_titles(emp_no integer,
				 title varchar(100),
				 from_date date,
				 to_date date,
				 FOREIGN KEY(emp_no) REFERENCES employee_info(emp_no));
select * from emp_titles