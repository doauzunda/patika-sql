-- 1) employee tablosu oluşturma
CREATE TABLE employee (
  id INTEGER PRIMARY KEY,
  name VARCHAR(50),
  birthday DATE,
  email VARCHAR(100)
);

-- 2) Mockaroo'dan 50 kayıt ekleyin (manüel ya da INSERT INTO kullanarak)

-- 3) 5 farklı UPDATE işlemi örneği
UPDATE employee SET name = 'Updated Name' WHERE id = 1;
UPDATE employee SET birthday = '1990-01-01' WHERE name = 'John Doe';
UPDATE employee SET email = 'newemail@example.com' WHERE birthday = '1985-05-05';
UPDATE employee SET name = 'Name Changed' WHERE email LIKE '%@test.com';
UPDATE employee SET birthday = CURRENT_DATE WHERE id = 2;

-- 4) 5 farklı DELETE işlemi örneği
DELETE FROM employee WHERE id = 3;
DELETE FROM employee WHERE name = 'Delete Me';
DELETE FROM employee WHERE birthday < '1980-01-01';
DELETE FROM employee WHERE email LIKE '%@spam.com';
DELETE FROM employee WHERE id > 45;
