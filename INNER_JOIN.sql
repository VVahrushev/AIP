SELECT * FROM currency 
INNER JOIN transaction ON currency.id = transaction.cur_id;
