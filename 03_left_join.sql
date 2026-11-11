SELECT r.reader_id,
       r.last_name,
       r.first_name,
       a.loan_id,
       a.book_id,
       a.issue_date,
       a.return_date
FROM readers r
LEFT JOIN abonement a ON a.reader_id = r.reader_id
ORDER BY r.reader_id, a.loan_id;
