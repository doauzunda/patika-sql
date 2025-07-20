-- 1) film tablosunda filmleri rating değerlerine göre grupla
SELECT rating, COUNT(*) AS film_sayisi
FROM film
GROUP BY rating
ORDER BY rating;

-- 2) replacement_cost göre gruplandır, 50'den fazla film olanları listele
SELECT replacement_cost, COUNT(*) AS film_sayisi
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_sayisi DESC;

-- 3) customer tablosunda store_id’ye göre müşteri sayısı
SELECT store_id, COUNT(*) AS musteri_sayisi
FROM customer
GROUP BY store_id
ORDER BY store_id;

-- 4) city tablosunda country_id’ye göre gruplandır, en çok şehir olanı ve sayısı
SELECT country_id, COUNT(*) AS sehir_sayisi
FROM city
GROUP BY country_id
ORDER BY sehir_sayisi DESC
LIMIT 1;
