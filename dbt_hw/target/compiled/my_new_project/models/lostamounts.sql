select 
    o.orderdate,
    sum(o.totalamount) as Lost_Sum
from "dellstore"."public"."orders" o
join "dellstore"."public"."customers" c
on c.customerid=o.customerid
group by 1