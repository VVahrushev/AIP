SELECT * FROM transaction FIRST, transaction SECOND
WHERE SECOND.id = FIRST.id+1
