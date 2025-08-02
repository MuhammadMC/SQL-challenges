# Write your MySQL query statement below
with s as
(
    select *,
    a.timestamp as start
    from activity as a
    where activity_type ='start'
)
,
e as 
(
    select *,
    a.timestamp as end
    from activity as a
    where activity_type ='end'
)
select 
s.machine_id,
round(avg(end-start),3) as processing_time
from s
join e
on s.machine_id=e.machine_id
and s.process_id=e.process_id
group by machine_id

;