-- 1. INNER JOIN: Find out who borrowed which book
SELECT m.name AS Member_Name, b.title AS Book_Title, l.loan_date
FROM loans l
JOIN members m ON l.member_id = m.id
JOIN books b ON l.book_id = b.id;

-- 2. LEFT JOIN: Find members who have never borrowed a book
SELECT m.name
FROM members m
LEFT JOIN loans l ON m.id = l.member_id
WHERE l.id IS NULL;

-- 3. AGGREGATION: Count books per member (Active Users)
SELECT m.name, COUNT(l.book_id) AS total_books
FROM members m
JOIN loans l ON m.id = l.member_id
GROUP BY m.id
HAVING total_books > 0;

-- 4. TRANSACTION: Returning a book safely
/* START TRANSACTION;
DELETE FROM loans WHERE book_id = 1;
UPDATE books SET is_borrowed = 0 WHERE id = 1;
COMMIT;
*/
