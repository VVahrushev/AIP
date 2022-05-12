(
    SELECT currency.id as left_table_id, exchange_rate.cur_id FROM currency
    INNER JOIN exchange_rate ON currency.id = exchange_rate.cur_id
)
UNION
(
    SELECT currency.id as left_table_id, NULL FROM currency
    WHERE NOT EXISTS(SELECT 1 FROM exchange_rate WHERE exchange_rate.cur_id = currency.id)
)
ORDER BY left_table_id
