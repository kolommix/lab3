SELECT r.reader_id,
       r.last_name,
       r.first_name,
       a.loan_id,
       a.reader_id AS loan_reader_id,
       a.book_id,
       a.issue_date,
       a.return_date
FROM readers r
RIGHT JOIN abonement a ON a.reader_id = r.reader_id
ORDER BY a.loan_id;
