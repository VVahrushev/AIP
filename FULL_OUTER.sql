(
    SELECT * FROM employee LEFT JOIN transaction 
    ON employee.id = transaction.Emp_ID
    WHERE transaction.Emp_ID IS NULL
)
UNION
(
    SELECT * FROM employee RIGHT JOIN transaction 
    ON employee.id = transaction.Emp_ID
    WHERE employee.id IS NULL
)
