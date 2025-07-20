-- 1) city ve country tablolarında şehir ve ülke isimleri
SELECT city.city, country.country
FROM city
INNER JOIN country ON city.country_id = country.country_id;

-- 2) customer ve payment tablolarında payment_id ve müşteri isimleri
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id;

-- 3) customer ve rental tablolarında rental_id ve müşteri isimleri
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id;
