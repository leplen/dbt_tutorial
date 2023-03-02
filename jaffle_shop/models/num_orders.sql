{{
  config(
    materialized='view'
  )
}}
    SELECT avg(number_of_orders) as avg_orders, count(*) as cnt, last_name
    FROM `dbt-learn-379416`.`jaffle_shop`.`customers`
    GROUP BY last_name
