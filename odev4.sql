-- 1) film tablosunda replacement_cost sütunundaki birbirinden farklı değerler
SELECT DISTINCT replacement_cost FROM film ORDER BY replacement_cost;

-- 2) film tablosunda replacement_cost sütununda kaç farklı veri var?
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- 3) film tablosunda title 'T' ile başlayıp rating 'G' olan film sayısı
SELECT COUNT(*) FROM film WHERE title LIKE 'T%' AND rating = 'G';

-- 4) country tablosunda 5 karakter uzunluğunda ülke sayısı
SELECT COUNT(*) FROM country WHERE LENGTH(country) = 5;

-- 5) city tablosunda şehir isimleri 'R' veya 'r' ile bitenlerin sayısı
SELECT COUNT(*) FROM city WHERE city LIKE '%R' OR city LIKE '%r';
