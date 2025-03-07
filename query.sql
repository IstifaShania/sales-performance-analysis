--Fixed customerID data type: replace .o then convert to int
ALTER TABLE salesretail 
ALTER COLUMN "Customer" TYPE INTEGER 
USING CAST(REPLACE("Customer", '.0', '') AS INTEGER);


--Replace null customerID into default -1
SELECT * FROM salesretail 
WHERE "Customer" IS NULL;

UPDATE salesretail 
SET "Customer" = -1 
WHERE "Customer" IS NULL;



-- 1. Total Penjualan per Tahun
SELECT 
    EXTRACT(YEAR FROM "InvoiceDate") AS year, 
    SUM("Quantity" * "Price") AS total_revenue
FROM salesretail
GROUP BY year
ORDER BY year ASC;


-- 2. Produk Terlaris
SELECT 
    "StockCode", 
    "Description", 
    SUM("Quantity") AS total_sold
FROM salesretail
GROUP BY "StockCode", "Description"
ORDER BY total_sold DESC
LIMIT 10;


-- 3. Pelanggan dengan total belanja terbanyak
SELECT 
    "Customer", 
    SUM("Quantity" * "Price") AS total_spent
FROM salesretail
WHERE "Customer" <> -1
GROUP BY "Customer"
ORDER BY total_spent DESC
LIMIT 10;






