drop table if exists supplier;
CREATE TABLE supplier (  s_suppkey       int NOT NULL,
                             s_name        VARCHAR(25) NOT NULL,
                             s_address     VARCHAR(40) NOT NULL,
                             s_nationkey   int NOT NULL,
                             s_phone       VARCHAR(15) NOT NULL,
                             s_acctbal     decimal(15, 2) NOT NULL,
                             s_comment     VARCHAR(101) NOT NULL)
ENGINE=OLAP
DUPLICATE KEY(`s_suppkey`)
COMMENT "OLAP"
DISTRIBUTED BY HASH(`s_suppkey`) BUCKETS 12
PROPERTIES (
    "replication_num" = "1",
    "in_memory" = "false",
    "storage_format" = "DEFAULT"
);
