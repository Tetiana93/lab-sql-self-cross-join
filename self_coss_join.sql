select * from film_actor fa_1
join film_actor fa_2
on fa_1.film_id=fa_2.film_id
and fa_1.actor_id <> fa_2.actor_id
where fa_1.actor_id < fa_2.actor_id;
WITH rental_invent AS(select r.customer_id, i.film_id from rental r
					   join inventory i
                       on r.inventory_id=i.inventory_id)
                       select ri_1.customer_id,count(ri_1.film_id) as count_1, ri_2.customer_id,  count(ri_2.film_id) as count_2 from rental_invent ri_1
                       join rental_invent ri_2
                       on ri_1.film_id=ri_2.film_id
                       and ri_1.customer_id <> ri_2.customer_id
                       group by ri_1.customer_id, ri_2.customer_id
                       HAVING COUNT(ri_1.film_id) >= 3 AND COUNT(ri_2.film_id) >= 3;
select concat(first_name, ' ', last_name ) as actor, title as film from actor
cross join film;
