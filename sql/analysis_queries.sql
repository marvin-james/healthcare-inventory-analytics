-- Total usage cost by department
SELECT
    department,
    SUM(quantity_used * unit_cost) AS total_usage_cost
FROM inventory
GROUP BY department
ORDER BY total_usage_cost DESC;

-- Identify items below restock level
SELECT
    item_name,
    department,
    quantity_in_stock,
    restock_level
FROM inventory
WHERE quantity_in_stock < restock_level;

-- Most used medical supplies
SELECT
    item_name,
    SUM(quantity_used) AS total_used
FROM inventory
GROUP BY item_name
ORDER BY total_used DESC;
