# DBT Fusion Regression Demo Repo

Repository to show differing activity between `dbt run` and `dbt test` versus `dbt build`.

## Core of Issue

`dbt-fusion` attempts to create sources, whereas `dbt-core` does not.

## Setup

```sql
create database DBT_TEST;
create database "Mixed_Case_Source";
create table "Mixed_Case_Source".PUBLIC.dud_table as (SELECT 1 as val);
```

## Issue

When using `dbt run && dbt test` the functionality is as expected, *however* - when using `dbt build` the run fails, as shown below:

![image.png](Image with cli output)

----

## Regression

This does not occur with [dbt_core.log](./dbt_core.log). 

Compare to [dbt_fusion.log](./dbt_fusion_log.sql)

## Cause

 - `dbt fusion` attempts to build a non-existent source
 - The source does not (appear) to exist because the engine does not quote the mixed case database name.
 - As such, dbt build fails in fusion.
