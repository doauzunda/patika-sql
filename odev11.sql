-- 1) actor ve customer first_name tüm veriler
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer;

-- 2) actor ve customer first_name kesişen veriler
SELECT first_name FROM actor
INTERSECT
SELECT first_name FROM customer;

-- 3) actor’da olup customer’da olmayan first_name
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer;

-- 4) tekrar eden (duplicate) veriler için UNION ALL, INTERSECT ALL ve EXCEPT ALL
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer;

SELECT first_name FROM actor
INTERSECT ALL
SELECT first_name FROM customer;

SELECT first_name FROM actor
EXCEPT ALL
SELECT first_name FROM customer;
