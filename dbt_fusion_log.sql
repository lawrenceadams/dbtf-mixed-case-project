-- created_at: 2025-10-06T18:42:15.079025+00:00
-- finished_at: 2025-10-06T18:42:15.164182+00:00
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01bf88c2-0000-c3a6-0000-f5a100f0704e
-- desc: execute adapter call
show terse schemas in database DBT_TEST
    limit 10000
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"dbtf_debug","target_name":"dev","connection_name":""} */;
-- created_at: 2025-10-06T18:42:15.164809+00:00
-- finished_at: 2025-10-06T18:42:15.290785+00:00
-- outcome: error
-- error vendor code: 2043
-- error message: Internal: [Snowflake] 002043 (02000): SQL compilation error:
Object does not exist, or operation cannot be performed.
-- dialect: snowflake
-- node_id: not available
-- query_id: not available
-- desc: execute adapter call
show terse schemas in database Mixed_Case_Source
    limit 10000
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"dbtf_debug","target_name":"dev","connection_name":""} */;
-- created_at: 2025-10-06T18:42:16.297241+00:00
-- finished_at: 2025-10-06T18:42:16.407784+00:00
-- outcome: error
-- error vendor code: 2003
-- error message: Internal: [Snowflake] 002003 (02000): SQL compilation error:
Database 'MIXED_CASE_SOURCE' does not exist or not authorized.
-- dialect: snowflake
-- node_id: not available
-- query_id: not available
-- desc: execute adapter call
create schema if not exists Mixed_Case_Source.public
/* {"app":"dbt","dbt_version":"2.0.0","profile_name":"dbtf_debug","target_name":"dev","connection_name":""} */;
