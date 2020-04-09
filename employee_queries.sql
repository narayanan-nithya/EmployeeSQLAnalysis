select * from departments

select * from employee_info

select * from employee_info Where hire_date LIKE '1986_%';

select dm.dept_no,dm.emp_no,dm.from_date,dm.to_date,ei.first_name, ei.last_name INTO manager_information
from employee_info ei
join dept_manager dm on
dm.emp_no = ei.emp_no;

select d.dept_no,d.dept_name,mi.emp_no, mi.from_date, mi.to_date,mi.first_name, mi.last_name INTO managers
from manager_information mi
join departments d ON
mi.dept_no = d.dept_no;

select * from managers

select de.emp_no, de.dept_no, ei.first_name,ei.last_name INTO emp
from employee_info ei
join dept_emp de ON
ei.emp_no =de.emp_no;

select e.first_name, e.last_name, e.emp_no, d.dept_name INTO employees
from emp e
join departments d ON
e.dept_no = d.dept_no;

select * from employees

select * from employee_info where first_name ='Hercules' AND last_name LIKE 'B%'

select * from employees where dept_name ='Sales';

select * from employees where dept_name IN('Sales','Development');

select last_name, count(*) from employee_info group by last_name ORDER BY count DESC;