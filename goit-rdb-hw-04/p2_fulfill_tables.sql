-- Заповнення таблиці авторів
INSERT INTO LibraryManagement.authors (author_name) VALUES
('Сергій Жадан'),
('Юрій Андрухович');

-- Заповнення таблиці жанрів
INSERT INTO LibraryManagement.genres (genre_name) VALUES
('Проза'),
('Драма');

-- Заповнення таблиці книг
INSERT INTO LibraryManagement.books (title, publication_year, author_id, genre_id) VALUES
('Швидкість', 2010, 1, 1),
('Мусимо', 2004, 2, 2);

-- Заповнення таблиці користувачів
INSERT INTO LibraryManagement.users (username, email) VALUES
('Іван Петров', 'ivan.petrov@gmail.com'),
('Марія Шевченко', 'maria.shevchenko@gmail.com');

-- Заповнення таблиці позичених книг
INSERT INTO LibraryManagement.borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2025-12-01', '2026-01-15'),
(2, 2, '2026-01-20', NULL);

-- Запит для отримання інформації про позичені книги
SELECT 
    bb.borrow_id,
    b.book_id,
    b.title AS 'Назва книги',
    b.publication_year AS 'Рік видання',
    a.author_name AS 'Автор',
    g.genre_name AS 'Жанр',
    u.user_id,
    u.username AS 'Користувач',
    u.email AS 'Email',
    bb.borrow_date AS 'Дата позичення',
    bb.return_date AS 'Дата повернення'
FROM LibraryManagement.borrowed_books bb
INNER JOIN LibraryManagement.books b ON bb.book_id = b.book_id
INNER JOIN LibraryManagement.authors a ON b.author_id = a.author_id
INNER JOIN LibraryManagement.genres g ON b.genre_id = g.genre_id
INNER JOIN LibraryManagement.users u ON bb.user_id = u.user_id
ORDER BY bb.borrow_id;