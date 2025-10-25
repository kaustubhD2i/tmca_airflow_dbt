-- models/staging/amappn00_gcp_rename.sql
{{ config(
    materialized='view',
    persist_docs={'columns': true, 'relation': true}
) }}

SELECT
    *
FROM {{ source('bronze_source', 'GEOGRAPHY') }}
