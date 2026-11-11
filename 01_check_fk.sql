SELECT conname AS constraint_name,
       conrelid::regclass  AS child_table,
       confrelid::regclass AS parent_table,
       pg_get_constraintdef(oid) AS definition
FROM pg_constraint
WHERE contype = 'f'
  AND conrelid = 'abonement'::regclass;
