-- question 1. 
select last_name from actor 
where last_name like 'Wahlberg';
--answer: 2


-- question 2.

select amount from payment
where amount >= 3.99 and amount <=5.99;
-- answer: 5602

--question 3:What film does the store have the most of? (search in inventory) 
select film_id, count(film_id) as value_occurrence
from inventory
group by film_id
order by value_occurrence desc
limit 1;
-- answer: 350, 8

--question 4:
select last_name from customer_
where last_name = 'William';
-- answer: 0

--question 5:
select staff_id, count(staff_id) as value_occurrence from rental
group by staff_id 
order by value_occurrence desc 
limit 1;
--answer: staff_id: 1, occurrence: 8040

--question 6:
select district from address;
-- answer 603

-- question 7:
select film_id, count(actor_id) as value_occurrence from film_actor
group by film_id
order by value_occurrence desc
limit 1;
-- answer: film_id: 508, actors: 15

-- question 8: 
select store_id,last_name from customer
where last_name like '%es'
order by store_id;
-- answer: 13 names

-- question 9:
select *
from payment
where customer_id > 380 and customer_id < 430
group by payment_id
having amount = sum(4.99) or sum(amount) = 5.99
order by customer_id desc
-- answer: 384

-- question 10:
select count(distinct rating) as value_occurrence from film
order by value_occurrence;
select rating, count(rating) as value_occurrence from film
group by rating
order by value_occurrence desc;
-- answer: 5 rating categories, PG-13, with 223
