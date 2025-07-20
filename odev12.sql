-- 1) length ortalamasından uzun film sayısı
SELECT COUNT(*) FROM film WHERE length > (SELECT AVG(length) FROM film);

-- 2) en yüksek rental_rate değerine sahip film sayısı
SELECT COUNT(*) FROM film WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- 3) en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmler
SELECT * FROM film WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- 4) payment tablosunda en çok alışveriş yapan müşteriler
SELECT customer_id, COUNT(*) AS purchase_count FROM payment GROUP BY customer_id ORDER BY purchase_count DESC;
