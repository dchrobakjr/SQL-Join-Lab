# SQL Join Lab

use sakila;


#1.

select
	*
from
	sakila.film;
    
select
	sakila.category.name, count(sakila.film_category.film_id) as 'Total Movies'
from
	sakila.category
join
	sakila.film_category
on
	sakila.category.category_id = sakila.film_category.category_id
group by
	sakila.category.name;
    
select
	*
from
	sakila.staff;
	
select
	*
from
	sakila.address;
    


#2.
    
select
	first_name, last_name, address.address
from
	sakila.staff
join
	sakila.address
on 
	sakila.address.address_id = sakila.staff.address_id;
    

#3.


select
	sakila.staff.staff_id, sum(sakila.payment.amount), sakila.payment.payment_date as 'Total Sales'
from 
	sakila.payment
join 
	sakila.staff
on 
	sakila.staff.staff_id = sakila.payment.staff_id
where 
	date_format(payment_date, '%Y-%M-%d') = '2005-August-01'
group by 
	sakila.staff.staff_id, sakila.payment.payment_date;
    


#4.


	
select
	sakila.film.title, count(*) actor_count
from
	sakila.film
join
	sakila.film_actor
on 
	sakila.film.film_id = sakila.film_actor.film_id
group by
		sakila.film.film_id;
        
        

#5.
	
    
    select
		sakila.customer.last_name, sum(sakila.payment.amount) as Payment_Total
	from
		sakila.payment
	join
		sakila.customer
	on 
		sakila.customer.customer_id = sakila.payment.customer_id
    group by
		sakila.payment.customer_id
	order by
		1;

