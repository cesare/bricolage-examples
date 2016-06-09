INSERT INTO ${dest_table}
SELECT
    s.month AS month,
    s.amount AS sales_amount,
    u.num_new_users AS num_new_users
  FROM monthly_sales AS s
    LEFT OUTER JOIN user_registrations AS u ON s.month = u.month
;
