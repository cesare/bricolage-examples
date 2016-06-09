INSERT INTO ${dest_table}
SELECT
    date_trunc('month', created_at)::date AS month,
    sum(amount) AS amount
  FROM purchases
  GROUP BY month
;
