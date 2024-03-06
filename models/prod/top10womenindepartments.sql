SELECT id, name, category, department, CEIL(SUM(cost)) AS total_cost
FROM 
    {{ ref("stgProducts") }}
WHERE department = "Women"
GROUP BY 
    1, 2, 3, 4
ORDER BY 
    total_cost DESC
LIMIT 10