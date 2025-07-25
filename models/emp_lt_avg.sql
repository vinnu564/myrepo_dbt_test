{{config(materialized='table',
         alias='employee_avg_lt')}}

select t1.* from RAW_DATA.EMPLOYEE t1 ,{{ref('employee_avg')}} t2
where t1.department_id=t2.department_id and t1.salary<t2.dept_avg_sal