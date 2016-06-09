INSERT INTO ${dest_table}
SELECT
    date_trunc('month', created_at)::date AS month,
    count(*) AS num_new_users
  FROM users
  GROUP BY month
;
