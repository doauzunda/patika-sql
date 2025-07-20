-- 1) film tablosunda rental_rate ortalaması
SELECT AVG(rental_rate) FROM film;

-- 2) film tablosunda 'C' ile başlayan film sayısı
SELECT COUNT(*) FROM film WHERE title LIKE 'C%';

-- 3) rental_rate 0.99 ve en uzun filmin uzunluğu
SELECT MAX(length) FROM film WHERE rental_rate = 0.99;

-- 4) uzunluğu 150’den büyük filmlerde farklı replacement_cost sayısı
SELECT COUNT(DISTINCT replacement_cost) FROM film WHERE length > 150;
