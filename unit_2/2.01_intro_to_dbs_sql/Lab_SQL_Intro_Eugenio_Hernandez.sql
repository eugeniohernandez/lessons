-- Lab | SQL Intro

-- 2
select * from sakila.customer, sakila.film, sakila.actor;

-- 3
select title from sakila.film;

-- 4

select distinct name as language from sakila.language;

-- 5

select count(distinct(store_id)) from sakila.store;
select count(distinct(staff_id)) as people from sakila.staff;
select first_name as name from sakila.staff;