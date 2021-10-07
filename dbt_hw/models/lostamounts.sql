-- 2) TASK
-- Requirement:
-- we want to find out per day the amount of money we have lost due to invalid credit cars
-- Following columns:
-- OrderDate
-- SUM(amount)
-- filtered: credit card is invalid according to Luhn's algorithm

select 
    o.orderdate,
    -- {{ Luhns(cc=c.credcard,n=c.len) }} as Valid, 
    -- I have tried many ways to call the macro, with '' and without, with cc= and without.. nothing works
    sum(o.totalamount) as Lost_Sum
from {{source("dells","orders")}} o
join (
    select customerid,creditcard::numeric as credcard, length(creditcard) as len
    from {{source("dells","customers")}} 
)c
on c.customerid=o.customerid
-- where Valid=0 -- invalid
group by 1 -- , 2