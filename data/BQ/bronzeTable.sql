<<<<<<< HEAD
CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2-demo.bronze_dataset.orders`(
=======
CREATE EXTERNAL TABLE IF NOT EXISTS `anth-theater-450808-e2.bronze_dataset.orders`(
>>>>>>> 6e4fdfea0d6ea9568a1acdab9cc208b6c8fb7d1e
    order_id INT64,
    customer_id INT64,
    order_date STRING,
    total_amount FLOAT64,
    updated_at STRING
)
OPTIONS (
  format = 'JSON',
  uris = ['gs://gcpproject_bucket/landing/retailer_db/orders/*.json']
);

<<<<<<< HEAD
CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2-demo.bronze_dataset.customers`
=======
CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2.bronze_dataset.customers`
>>>>>>> 6e4fdfea0d6ea9568a1acdab9cc208b6c8fb7d1e
(
    customer_id INT64,
    name STRING,
    email STRING,
    updated_at STRING
)
OPTIONS (
    format = 'JSON',
    uris = ['gs://gcpproject_bucket/landing/retailer_db/customers/*.json']
);

<<<<<<< HEAD
CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2-demo.bronze_dataset.products`
=======
CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2.bronze_dataset.products`
>>>>>>> 6e4fdfea0d6ea9568a1acdab9cc208b6c8fb7d1e
(
    product_id INT64,
    name STRING,
    category_id INT64,
    price FLOAT64,
    updated_at STRING
)
OPTIONS (
    format = 'JSON',
    uris = ['gs://gcpproject_bucket/landing/retailer_db/products/*.json']
);

<<<<<<< HEAD
CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2-demo.bronze_dataset.categories`
=======
CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2.bronze_dataset.categories`
>>>>>>> 6e4fdfea0d6ea9568a1acdab9cc208b6c8fb7d1e
(
    category_id INT64,
    name STRING,
    updated_at STRING
)
OPTIONS (
    format = 'JSON',
<<<<<<< HEAD
    uris = ['gs://gcpproject_bucket/landing/retailer_db/categories/*.json']
);

CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2-demo.bronze_dataset.order_items`
=======
    uris = ['ggs://gcpproject_bucket/landing/retailer_db/categories/*.json']
);

CREATE EXTERNAL TABLE IF NOT EXISTS `anth-theater-450808-e2.bronze_dataset.order_items`
>>>>>>> 6e4fdfea0d6ea9568a1acdab9cc208b6c8fb7d1e
(
    order_item_id INT64,
    order_id INT64,
    product_id INT64,
    quantity INT64,
    price FLOAT64,
    updated_at STRING
)
OPTIONS (
    format = 'JSON',
    uris = ['gs://gcpproject_bucket/landing/retailer_db/order_items/*.json']
);
-------------------------------------------------------------------------------------------------------------
-- Suppliers Table
<<<<<<< HEAD
CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2-demo.bronze_dataset.suppliers` (
=======
CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2.bronze_dataset.suppliers` (
>>>>>>> 6e4fdfea0d6ea9568a1acdab9cc208b6c8fb7d1e
    supplier_id INT64,
    supplier_name STRING,
    contact_name STRING,
    phone STRING,
    email STRING,
    address STRING,
    city STRING,
    country STRING,
    created_at STRING
)
OPTIONS (
  format = 'JSON',
  uris = ['gs://gcpproject_bucket/landing/supplier-db/suppliers/*.json']
);

-- Product Suppliers Table (Mapping suppliers to products)
<<<<<<< HEAD
CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2-demo.bronze_dataset.product_suppliers` (
=======
CREATE EXTERNAL TABLE IF NOT EXISTS `nth-theater-450808-e2.bronze_dataset.product_suppliers` (
>>>>>>> 6e4fdfea0d6ea9568a1acdab9cc208b6c8fb7d1e
    supplier_id INT64,
    product_id INT64,
    supply_price FLOAT64,
    last_updated STRING
)
OPTIONS (
  format = 'JSON',
  uris = ['gs://gcpproject_bucket/landing/supplier-db/product_suppliers/*.json']
);

-------------------------------------------------------------------------------------------------------------

<<<<<<< HEAD
CREATE OR REPLACE EXTERNAL TABLE `nth-theater-450808-e2-demo.bronze_dataset.customer_reviews` (
=======
CREATE OR REPLACE EXTERNAL TABLE `nth-theater-450808-e2.bronze_dataset.customer_reviews` (
>>>>>>> 6e4fdfea0d6ea9568a1acdab9cc208b6c8fb7d1e
  id STRING,
  customer_id INT64,
  product_id INT64,
  rating INT64,
  review_text STRING,
  review_date STRING
)
OPTIONS (
  format = 'PARQUET',
  uris = ['gs://gcpproject_bucket/landing/customer_reviews/customer_reviews_*.parquet']
);

-------------------------------------------------------------------------------------------------------------