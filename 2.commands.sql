--The full data for each Employee with their address as a string, department name, and manager name
select a.street + ' ' + a.city + ' ' + a.state as Address, d.name as Department_name, e.name as Manager_name
from employees e
left join address a
on e.address_id = a.a_id
left join department d
on a.a_id = d.d_id


--the 5 highest paid and lowest paid employees
select top 5 name, salary
from employees
order by salary desc

--lowest paid employees
select top 5 name, salary
from employees
order by salary;

--The total salary for each department, the manager's name, sorted by highest total
select q.manager_name, q.department_name, sum(salary)
from
(select e.*,m.name as manager_name, d.name as department_name
from employees e 
left join employees m 
on e.manager_id = m.e_id
left join department d
on e.e_id = d.d_id) q
group by manager_name, department_name


--each employee that lives in a given state (The state can be hard coded for now)
select e.name, a.state
from employees e
inner join address a
on e.e_id = a.a_id
