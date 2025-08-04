# Write your MySQL query statement below
with CTE as(

select managerID,
count(managerId) as reports
from employee
group by managerID
)
Select name
from employee as e
join CTE
on
CTE.managerID=e.id
where reports>=5


;