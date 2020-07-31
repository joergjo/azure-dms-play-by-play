ALTER TABLE public.address
DROP CONSTRAINT fk_address_city;

ALTER TABLE public.city
DROP CONSTRAINT fk_city;

ALTER TABLE public.customer
DROP CONSTRAINT customer_address_id_fkey;

ALTER TABLE public.film
DROP CONSTRAINT film_language_id_fkey;

ALTER TABLE public.film_actor
DROP CONSTRAINT film_actor_actor_id_fkey,
DROP CONSTRAINT film_actor_film_id_fkey;

ALTER TABLE public.film_category
DROP CONSTRAINT film_category_category_id_fkey,
DROP CONSTRAINT film_category_film_id_fkey;

ALTER TABLE public.inventory
DROP CONSTRAINT inventory_film_id_fkey;

ALTER TABLE public.payment
DROP CONSTRAINT payment_customer_id_fkey,
DROP CONSTRAINT payment_rental_id_fkey,
DROP CONSTRAINT payment_staff_id_fkey;

ALTER TABLE public.rental
DROP CONSTRAINT rental_customer_id_fkey,
DROP CONSTRAINT rental_inventory_id_fkey,
DROP CONSTRAINT rental_staff_id_key;

ALTER TABLE public.staff
DROP CONSTRAINT staff_address_id_fkey;

ALTER TABLE public.store
DROP CONSTRAINT store_address_id_fkey,
DROP CONSTRAINT store_manager_staff_id_fkey;

ALTER TABLE public.film_actor DISABLE TRIGGER last_updated;


ALTER TABLE public.film DISABLE TRIGGER film_fulltext_trigger;


ALTER TABLE public.language DISABLE TRIGGER last_updated;


ALTER TABLE public.film_category DISABLE TRIGGER last_updated;


ALTER TABLE public.actor DISABLE TRIGGER last_updated;


ALTER TABLE public.rental DISABLE TRIGGER last_updated;


ALTER TABLE public.country DISABLE TRIGGER last_updated;


ALTER TABLE public.staff DISABLE TRIGGER last_updated;


ALTER TABLE public.category DISABLE TRIGGER last_updated;


ALTER TABLE public.city DISABLE TRIGGER last_updated;


ALTER TABLE public.store DISABLE TRIGGER last_updated;


ALTER TABLE public.inventory DISABLE TRIGGER last_updated;


ALTER TABLE public.address DISABLE TRIGGER last_updated;


ALTER TABLE public.customer DISABLE TRIGGER last_updated;


ALTER TABLE public.film DISABLE TRIGGER last_updated;