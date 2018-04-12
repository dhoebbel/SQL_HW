#1a
USE sakila;
select first_name, last_name from actor;
#1b
select CONCAT(first_name," ",last_name) as First_Last_Name from actor;

#2a
select actor_id, first_name, last_name
from actor
where first_name = 'Joe';
#2b
select actor_id, first_name, last_name
from actor
where last_name like '%gen%';
#2c
select actor_id, last_name, first_name
from actor
where last_name like '%LI%';
#2d
select country_id, country
from country
where country IN ('Afghanistan','Bangladesh','China');

#3a
Alter Table actor;
add column middle_name varchar after first_name;
#3b
ALTER TABLE actor
ADD [COLUMN] middle_name blob
#3c
ALTER TABLE actor
DROP [COLUMN] middle_name varchar

#4a
SELECT last_name, count(*) as number_of_actors FROM actors GROUP BY last_name
#4b
SELECT last_name, count(*) as number_of_actors FROM actors GROUP BY last_name HAVING number_of_actors > 1
#4c
UPDATE actors SET first_name=’HARPO’ WHERE last_name=’WILLIAMS’ AND first_name=’GROUCHO’
#4d
UPDATE actors SET 
CASE WHEN first_name=’HARPO’ THEN ‘GROUCHO’
ELSE ‘MUCHO GROUCHO’
WHERE last_name=’WILLIAMS’

#5a

#6a
SELECT first_name, last_name, address from staff
JOIN address ON staff.staff_id = address.staff_id 
#6b
#6c
SELECT film, count(actor_id) FROM film
INNER JOIN film_actor.film_id = film.film_id
#6d
#6e
SELECT customer, SUM(price) FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
ORDER BY customer.last_name

#7a
SELECT film_name FROM
(SELECT * FROM film WHERE language = ‘English’)
WHERE film_name = ‘K%’ OR film_name = ‘Q%’
#7b
#7c
#7d
#7e
#7f
#7g
#7h

#8a
#8b
#8c