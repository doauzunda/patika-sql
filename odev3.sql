-- 1) Ülke isimleri 'A' ile başlayıp 'a' ile bitenler
SELECT country
FROM country
WHERE country LIKE 'A%a'
ORDER BY country;

-- 2) En az 6 karakterli ve sonu 'n' ile biten ülke isimleri
SELECT country
FROM country
WHERE LENGTH(country) >= 6 AND country LIKE '%n'
ORDER BY country;

-- 3) Title içinde en az 4 tane 'T' veya 't' bulunan filmler (büyük küçük harf farketmez)
SELECT title
FROM film
WHERE (LENGTH(title) - LENGTH(REPLACE(LOWER(title), 't', ''))) >= 4
ORDER BY title;

-- 4) Title 'C' ile başlayıp uzunluğu 90’dan büyük ve rental_rate 2.99 olan tüm sütunlar
SELECT *
FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99
ORDER BY title;
