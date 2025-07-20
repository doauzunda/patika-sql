-- 1) Title 'n' ile biten en uzun 5 film
SELECT *
FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

-- 2) Title 'n' ile biten en kısa 6-10. film (offset kullanarak)
SELECT *
FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
LIMIT 5 OFFSET 5;

-- 3) store_id 1 olan müşteri tablosunda last_name azalan sırada ilk 4 kayıt
SELECT *
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
