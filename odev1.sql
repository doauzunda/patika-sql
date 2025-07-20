-- film tablosunda title ve description sütunları
SELECT title, description
FROM film
ORDER BY title;

-- film uzunluğu (length) 60’dan büyük ve 75’ten küçük olan tüm sütunlar
SELECT *
FROM film
WHERE length > 60 AND length < 75
ORDER BY length;

-- rental_rate 0.99 ve replacement_cost 12.99 veya 28.99 olan tüm sütunlar
SELECT *
FROM film
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99)
ORDER BY replacement_cost;

-- first_name sütunu 'Mary' olan müşterinin last_name sütunu
SELECT last_name
FROM customer
WHERE first_name = 'Mary';

-- uzunluğu 50’den büyük OLMAYAN ve rental_rate 2.99 veya 4.99 OLMAYAN filmler
SELECT *
FROM film
WHERE length <= 50 AND rental_rate NOT IN (2.99, 4.99)
ORDER BY length, rental_rate;
