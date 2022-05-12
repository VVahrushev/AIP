SELECT * FROM exchange_rate LEFT JOIN transaction 
ON exchange_rate.id = transaction.Exch_ID
