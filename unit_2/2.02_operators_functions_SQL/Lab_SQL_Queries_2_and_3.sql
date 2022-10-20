-- Lab | SQL Queries 2

-- 1
select first_name as name from sakila.actor where first_name='Scarlett';

-- 2
select last_name as "Last Name" from sakila.actor where last_name='Johansson';

-- 3
select count(film_id) as 'Number of films' from sakila.film;

-- 4
select count(rental_id) as 'Rented' from sakila.rental;

-- 5
select max(datediff(convert(return_date, date),convert(rental_date, date))) as max_difference, 
min(datediff(convert(return_date, date),convert(rental_date, date))) as min_difference from sakila.rental;
-- debería haberlo hecho con la variable rental_duration de film
select min(rental_duration), max(rental_duration) from sakila.film;

-- 6
select max(length) as max_duration, min(length) as min_duration from sakila.film;

-- 7
select avg(length) from sakila.film;

-- 8
select avg(length)/60 as film_duration_avg from sakila.film;

-- 9
select count(length/60) as long_films from sakila.film where length/60 > 3;

-- 10
select max(length(title)) as longest_title from sakila.film;



