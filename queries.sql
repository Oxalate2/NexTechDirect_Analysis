-- What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 

SELECT DATE_TRUNC(purchase_ts, quarter) AS purchase_quarter,
  COUNT(orders.id) AS order_count,
  ROUND(SUM(orders.usd_price), 2) AS total_sales,
  ROUND(AVG(orders.usd_price), 2) AS aov
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup
  ON geo_lookup.country_code = customers.country_code
WHERE region = 'NA'
AND LOWER(product_name) LIKE '%macbook%'
GROUP BY 1
ORDER by 1 DESC;

-- What is the average quarterly order count and total sales for Macbooks sold in North America?

WITH quarterly_metrics AS (
  SELECT DATE_TRUNC(orders.purchase_ts, quarter) AS purchase_quarter,
    COUNT(DISTINCT orders.id) AS order_count,
    ROUND(SUM(orders.usd_price), 2) AS total_sales
  FROM core.orders
  LEFT JOIN core.customers
    ON orders.customer_id = customers.id
  LEFT JOIN core.geo_lookup
    ON geo_lookup.country_code = customers.country_code
  WHERE LOWER(orders.product_name) LIKE '%macbook%'
    AND region = 'NA'
  GROUP BY 1
  ORDER BY 1 DESC
)

SELECT AVG(order_count) AS avg_quarter_orders,
  AVG(total_sales) AS avg_quaters_sales,
FROM quarterly_metrics;


-- For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver? 

SELECT region,
  AVG(DATE_DIFF(order_status.delivery_ts, order_status.purchase_ts, day)) AS avg_days_to_deliver
FROM core.order_status
LEFT JOIN core.orders
  ON order_status.order_id = orders.id
LEFT JOIN core.customers
  ON customers.id = orders.customer_id
LEFT JOIN core.geo_lookup
  ON customers.country_code = geo_lookup.country_code
WHERE EXTRACT(year FROM order_status.purchase_ts) = 2022
  AND orders.purchase_platform = 'website'
  OR orders.purchase_platform = 'mobile app'
GROUP BY 1
ORDER BY 2 DESC;

-- What was the refund rate and refund count for each product overall? 

SELECT CASE WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE product_name END AS product_clean,
  SUM(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_count,
  AVG(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_rate
FROM core.orders
LEFT JOIN core.order_status
  ON order_status.order_id = orders.id
GROUP BY 1
ORDER BY 3 DESC;

-- Within each region, what is the most popular product?

WITH order_count_cte AS (
  SELECT geo_lookup.region,
    CASE WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE product_name END AS product_clean,
    COUNT(DISTINCT orders.id) AS order_count
  FROM core.orders
  LEFT JOIN core.customers
    ON orders.customer_id = customers.id
  LEFT JOIN core.geo_lookup
    ON geo_lookup.country_code = customers.country_code
  GROUP BY 1, 2
  )



  SELECT *,
    ROW_NUMBER() OVER (PARTITION BY region ORDER BY order_count DESC) AS ranking -- seperate column that ranks product by order_count
  FROM order_count_cte
  QUALIFY ROW_NUMBER() OVER (PARTITION BY region ORDER BY order_count DESC) = 1 -- only select the ones that have ranking of 1
  ORDER BY 3 DESC;

  

-- How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 

SELECT loyalty_program,
  ROUND(AVG(DATE_DIFF(orders.purchase_ts, created_on, day)), 2) AS avg_time_to_purchase_days,
  ROUND(AVG(DATE_DIFF(orders.purchase_ts, created_on, month)), 2) AS avg_time_to_purchase_months
FROM core.orders
LEFT JOIN core.customers
  ON customers.id = orders.customer_id
LEFT JOIN core.order_status
  ON order_status.order_id = orders.id
GROUP BY 1;

