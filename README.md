# Data wrangling assignment
Using the dellstore database in Postgres from the data wrangling / dbt practice session.
You can view some of the last minutes of the recording for hint on which tables to use.
The submission should ideally be a public git repository, eg on GitHub, containing your dbt project.
Alternatively, zip the dbt project folder and add it as attachment.


## 1) TASK

Requirements: create a table with following columns:
1. first name of the actor/actress
2. number of movies where such first name has been an actor
3. sum of the price of the movies where such first name has been an actor

Use dbt - models, sources, snapshotting

Try inserting a new row into the products table + running the snapshot again


## 2) TASK

Requirement: we want to find out per day the amount of money we have lost due to invalid credit cars

Following columns:
1. OrderDate
2. SUM(amount)

Filtered: credit card is invalid according to Luhn's algorithm

# My Comment:
TASK 1 I managed to finish successfully, but with TASK 2, there were issues with creating macro with Jinja.
