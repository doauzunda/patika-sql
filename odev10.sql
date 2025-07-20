-- 1) city ve country tabloları LEFT JOIN ile şehir ve ülke isimleri
SELECT city.city, country.country FROM city LEFT JOIN country ON city.country_id = country.country_id;

-- 2) customer ve payment tabloları RIGHT JOIN ile payment_id ve müşteri isimleri
SELECT payment.payment_id, customer.first_name, customer.last_name FROM payment RIGHT JOIN customer ON payment.customer_id = customer.customer_id;

-- 3) customer ve rental tabloları FULL JOIN ile rental_id ve müşteri isimleri
SELECT rental.rental_id, customer.first_name, customer.last_name FROM rental FULL JOIN customer ON rental.customer_id = customer.customer_id;
