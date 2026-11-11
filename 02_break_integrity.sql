ALTER TABLE abonement DROP CONSTRAINT fk_abonement_reader;

INSERT INTO abonement (loan_id, reader_id, book_id, issue_date, return_date) VALUES
 (12, 101, 2, '2026-11-03', NULL),
 (13, 102, 5, '2026-11-05', '2026-11-09');
