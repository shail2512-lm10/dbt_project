WITH raw_hostings AS (
    SELECT * FROM {{ source('airbnb', 'hosts') }}
)
SELECT
id AS host_id,
host_name,
is_superhost,
created_at,
updated_at
FROM raw_hostings