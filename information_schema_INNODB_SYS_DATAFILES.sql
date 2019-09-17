UPDATE information_schema.INNODB_SYS_DATAFILES SET SPACE = 1, PATH = './mysql/innodb_table_stats.ibd';
UPDATE information_schema.INNODB_SYS_DATAFILES SET SPACE = 2, PATH = './mysql/innodb_index_stats.ibd';
UPDATE information_schema.INNODB_SYS_DATAFILES SET SPACE = 3, PATH = './mysql/transaction_registry.ibd';
UPDATE information_schema.INNODB_SYS_DATAFILES SET SPACE = 4, PATH = './mysql/gtid_slave_pos.ibd';
UPDATE information_schema.INNODB_SYS_DATAFILES SET SPACE = 5, PATH = './defaultdb/users.ibd';