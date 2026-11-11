SELECT a.*
FROM readers r
RIGHT JOIN abonement a ON a.reader_id = r.reader_id
WHERE r.reader_id IS NULL;

SELECT r.reader_id, r.last_name, r.first_name
FROM readers r
LEFT JOIN abonement a ON a.reader_id = r.reader_id
WHERE a.loan_id IS NULL;
