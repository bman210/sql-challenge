--List the employee number, last name, first name, sex, and salary of each employee
select e.emp_no, e.last_name, e.first_name,e.sex, s.salary
from employees e
join salaries s
on (e.emp_no = s.emp_no);

--List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'; 

--List the manager of each department along with their department number, department name, employee number, last name, and first name
select m.emp_no, m.dept_no, d.dept_name, e.last_name, e.first_name
from dept_manager m
join departments d
on (m.dept_no = d.dept_no)
join employees e
on (m.emp_no = e.emp_no);

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select e.emp_no, e.last_name, e.first_name, q.dept_no, d.dept_name
from employees e
join dept_emp q
on (e.emp_no = q.emp_no)
join departments d
on (q.dept_no = d.dept_no);

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
select d.dept_name, q.emp_no, e.last_name, e.first_name
from departments d
join dept_emp q
on (d.dept_no = q.dept_no)
join employees e
on (q.emp_no = e.emp_no)
where d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select d.dept_name, q.emp_no, e.last_name, e.first_name
from departments d
join dept_emp q
on (d.dept_no = q.dept_no)
join employees e
on (q.emp_no = e.emp_no)
where d.dept_name = 'Sales' or d.dept_name ='Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
select count (last_name) as last_name_count, last_name
from employees
group by last_name
order by last_name_count DESC;