# Subqueries

You may use zero or more tables or queries to form an intermediary dataset from which to select attributes.

Follow this progression of single-table sub-queries as each iteration nests one level further:

```` sql
SELECT *
FROM (
    SELECT '1-Oct-14' AS order_date
) AS my_table_view
````

```` sql
SELECT my_table_view.*
FROM (
    SELECT '1-Oct-14' AS order_date
) AS my_table_view
````

```` sql
SELECT my_table_view.order_date
FROM (
    SELECT '1-Oct-14' AS order_date
) AS my_table_view
````

```` sql
SELECT
  mtv.order_date_string
  ,SUBSTRING_INDEX(mtv.order_date_string, '-', -1) AS two_digit_order_year
  ,SUBSTRING_INDEX(
      SUBSTRING_INDEX(mtv.order_date_string, '-', -2), '-', 1
  ) AS order_month_abbrev
  ,SUBSTRING_INDEX(mtv.order_date_string, '-', 1) AS day_number
FROM (
    SELECT '1-Oct-14' AS order_date_string
) AS mtv
````

```` sql
SELECT
  mtv2.order_date_string
  ,mtv2.two_digit_order_year
  ,mtv2.order_month_abbrev
  ,mtv2.day_number
  ,concat(
    '20'
    ,mtv2.two_digit_order_year
    ,'-'
    ,mtv2.order_month_abbrev
    ,'-'
    ,mtv2.day_number
  ) AS order_date_string_formatted
FROM (
    -- my table view #2 (a.k.a. mtv2)
    SELECT
      mtv.order_date_string
      ,SUBSTRING_INDEX(mtv.order_date_string, '-', -1) AS two_digit_order_year
      ,SUBSTRING_INDEX(
          SUBSTRING_INDEX(mtv.order_date_string, '-', -2), '-', 1
      ) AS order_month_abbrev
      ,SUBSTRING_INDEX(mtv.order_date_string, '-', 1) AS day_number
    FROM (
        -- my table view (a.k.a. mtv)
        SELECT '1-Oct-14' AS order_date_string
    ) AS mtv
) AS mtv2
````

```` sql
SELECT
  mtv3.order_date_string
  ,str_to_date(mtv3.order_date_string_formatted, '%Y-%b-%d') AS order_date
FROM (
    -- my table view #3 (a.k.a. mtv3)
    SELECT
      mtv2.order_date_string
      ,mtv2.two_digit_order_year
      ,mtv2.order_month_abbrev
      ,mtv2.day_number
      ,concat(
        '20'
        ,mtv2.two_digit_order_year
        ,'-'
        ,mtv2.order_month_abbrev
        ,'-'
        ,mtv2.day_number
      ) AS order_date_string_formatted
    FROM (
        -- my table view #2 (a.k.a. mtv2)
        SELECT
          mtv.order_date_string
          ,SUBSTRING_INDEX(mtv.order_date_string, '-', -1) AS two_digit_order_year
          ,SUBSTRING_INDEX(
              SUBSTRING_INDEX(mtv.order_date_string, '-', -2), '-', 1
          ) AS order_month_abbrev
          ,SUBSTRING_INDEX(mtv.order_date_string, '-', 1) AS day_number
        FROM (
            -- my table view (a.k.a. mtv)
            SELECT purchase_orders.order_date as order_date_string
            -- for demonstration, use instead:  `SELECT '1-Oct-14' AS order_date_string`
        ) AS mtv
    ) AS mtv2
) mtv3
````

```` sql
SELECT
  '1-Oct-14' AS order_date_messy_string
  ,str_to_date(
      concat(
              concat("20",SUBSTRING_INDEX('1-Oct-14', '-', -1)),
              "-",
              SUBSTRING_INDEX(SUBSTRING_INDEX('1-Oct-14', '-', -2), '-', 1),
              "-",
              SUBSTRING_INDEX('1-Oct-14', '-', 1)
      ), '%Y-%b-%d'
  ) AS order_date
````

What is the difference between the last two queries?
