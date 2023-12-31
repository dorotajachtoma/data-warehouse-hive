CREATE DATABASE IF NOT EXISTS DATA_WAREHOUSE;
USE DATA_WAREHOUSE;
CREATE EXTERNAL TABLE IF NOT EXISTS EMPLOYEE (
    EID INT,
    E_NAME STRING,
    AGE INT,
    JOB_TYPE STRING,
    STORE_ID INT,
    STORE_LOCATION STRING,
    SALARY BIGINT,
    YRS_OF_EXP INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE LOCATION 'hdfs://namenode:8020/user/hive/warehouse/data_warehouse.db/employee';