{{config(materialized='ephemeral')}}

select department_id,avg(salary) as dept_avg_sal from raw_data.employee group by department_id
