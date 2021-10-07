

  create  table "dellstore"."public"."firstnames__dbt_tmp"
  as (
    -- 1) TASK
-- Requirements:
-- create a table with following columns:
-- first name of the actor/actress
-- number of movies where such first name has been an actor
-- sum of the price of the movies where such first name has been an actor

-- Use dbt - models, sources, snapshotting
-- try inserting a new row into the products table + running the snapshot again

-- table


-- select
select first_name as id, count(distinct title) title_count, sum(price) price_sum from "dellstore"."public"."products" p
join (
	select distinct concat(split_part(actor, ' ', 1),'%') first_name from "dellstore"."public"."products"
) b
on p.actor like b.first_name
group by 1
order by 1


-- changes I tried with results in snapshot:

-- insert into products
-- values (0, 2, 'NO SUCH MOVIE', 'AAPO EESTLANE', 100.00, 0, 6633)
-- -- new row was added to snapshot

-- update products
-- set price = 1.22
-- where prod_id = 392
-- -- price_sum changed in snapshot

-- delete from products
-- where prod_id = 392
-- -- title_count (also price_sum) changed in snapshot
  );