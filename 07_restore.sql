DELETE FROM abonement a
WHERE NOT EXISTS (SELECT 1 FROM readers r WHERE r.reader_id = a.reader_id);

ALTER TABLE abonement
    ADD CONSTRAINT fk_abonement_reader FOREIGN KEY (reader_id) REFERENCES readers (reader_id);

SELECT COUNT(*) AS violations
FROM abonement a
LEFT JOIN readers r ON r.reader_id = a.reader_id
WHERE r.reader_id IS NULL;
