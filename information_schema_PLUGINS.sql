UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'binlog', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'STORAGE ENGINE', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'MySQL AB', PLUGIN_DESCRIPTION = 'This is a pseudo storage engine to represent the binlog in a transaction', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'mysql_native_password', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'AUTHENTICATION', PLUGIN_TYPE_VERSION = '2.2', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'R.J.Silk, Sergei Golubchik', PLUGIN_DESCRIPTION = 'Native MySQL authentication', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'mysql_old_password', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'AUTHENTICATION', PLUGIN_TYPE_VERSION = '2.2', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'R.J.Silk, Sergei Golubchik', PLUGIN_DESCRIPTION = 'Old MySQL-4.0 authentication', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'wsrep', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'REPLICATION', PLUGIN_TYPE_VERSION = '2.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Codership Oy', PLUGIN_DESCRIPTION = 'Wsrep replication plugin', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'CSV', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'STORAGE ENGINE', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Brian Aker, MySQL AB', PLUGIN_DESCRIPTION = 'Stores tables as CSV files', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'MEMORY', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'STORAGE ENGINE', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'MySQL AB', PLUGIN_DESCRIPTION = 'Hash based, stored in memory, useful for temporary tables', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'Aria', PLUGIN_VERSION = '1.5', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'STORAGE ENGINE', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'MariaDB Corporation Ab', PLUGIN_DESCRIPTION = 'Crash-safe tables with MyISAM heritage. Used for internal temporary tables and privilege tables', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.5';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'MyISAM', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'STORAGE ENGINE', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'MySQL AB', PLUGIN_DESCRIPTION = 'Non-transactional engine with good performance and small data footprint', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'MRG_MyISAM', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'STORAGE ENGINE', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'MySQL AB', PLUGIN_DESCRIPTION = 'Collection of identical MyISAM tables', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'CLIENT_STATISTICS', PLUGIN_VERSION = '2.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Percona and Sergei Golubchik', PLUGIN_DESCRIPTION = 'Client Statistics', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '2.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INDEX_STATISTICS', PLUGIN_VERSION = '2.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Percona and Sergei Golubchik', PLUGIN_DESCRIPTION = 'Index Statistics', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '2.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'TABLE_STATISTICS', PLUGIN_VERSION = '2.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Percona and Sergei Golubchik', PLUGIN_DESCRIPTION = 'Table Statistics', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '2.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'USER_STATISTICS', PLUGIN_VERSION = '2.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Percona and Sergei Golubchik', PLUGIN_DESCRIPTION = 'User Statistics', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '2.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'SQL_SEQUENCE', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'STORAGE ENGINE', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'jianwei.zhao @ Aliyun & Monty @ MariaDB corp', PLUGIN_DESCRIPTION = 'Sequence Storage Engine for CREATE SEQUENCE', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'InnoDB', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'STORAGE ENGINE', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'Supports transactions, row-level locking, foreign keys and encryption for tables', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_TRX', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB transactions', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_LOCKS', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB conflicting locks', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_LOCK_WAITS', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB which lock is blocking which', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_CMP', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'Statistics for the InnoDB compression', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_CMP_RESET', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'Statistics for the InnoDB compression; reset cumulated counts', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_CMPMEM', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'Statistics for the InnoDB compressed buffer pool', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_CMPMEM_RESET', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'Statistics for the InnoDB compressed buffer pool; reset cumulated counts', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_CMP_PER_INDEX', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'Statistics for the InnoDB compression (per index)', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_CMP_PER_INDEX_RESET', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'Statistics for the InnoDB compression (per index); reset cumulated counts', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_BUFFER_PAGE', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB Buffer Page Information', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_BUFFER_PAGE_LRU', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB Buffer Page in LRU', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_BUFFER_POOL_STATS', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB Buffer Pool Statistics Information ', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_METRICS', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB Metrics Info', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_FT_DEFAULT_STOPWORD', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'Default stopword list for InnoDB Full Text Search', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_FT_DELETED', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'INNODB AUXILIARY FTS DELETED TABLE', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_FT_BEING_DELETED', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'INNODB AUXILIARY FTS BEING DELETED TABLE', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_FT_CONFIG', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'INNODB AUXILIARY FTS CONFIG TABLE', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_FT_INDEX_CACHE', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'INNODB AUXILIARY FTS INDEX CACHED', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_FT_INDEX_TABLE', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'INNODB AUXILIARY FTS INDEX TABLE', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_SYS_TABLES', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_TABLES', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_SYS_TABLESTATS', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_TABLESTATS', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_SYS_INDEXES', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_INDEXES', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_SYS_COLUMNS', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_COLUMNS', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_SYS_FIELDS', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_FIELDS', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_SYS_FOREIGN', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_FOREIGN', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_SYS_FOREIGN_COLS', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_FOREIGN_COLS', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_SYS_TABLESPACES', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_TABLESPACES', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_SYS_DATAFILES', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_DATAFILES', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_SYS_VIRTUAL', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_VIRTUAL', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_MUTEXES', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Oracle Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_DATAFILES', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_SYS_SEMAPHORE_WAITS', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'MariaDB Corporation', PLUGIN_DESCRIPTION = 'InnoDB SYS_SEMAPHORE_WAITS', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_TABLESPACES_ENCRYPTION', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Google Inc', PLUGIN_DESCRIPTION = 'InnoDB TABLESPACES_ENCRYPTION', PLUGIN_LICENSE = 'BSD', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'INNODB_TABLESPACES_SCRUBBING', PLUGIN_VERSION = '10.4', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Google Inc', PLUGIN_DESCRIPTION = 'InnoDB TABLESPACES_SCRUBBING', PLUGIN_LICENSE = 'BSD', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '10.4.7';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'PERFORMANCE_SCHEMA', PLUGIN_VERSION = '0.1', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'STORAGE ENGINE', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Marc Alff, Oracle', PLUGIN_DESCRIPTION = 'Performance Schema', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'FORCE', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '5.6.40';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'SEQUENCE', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'STORAGE ENGINE', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Sergei Golubchik', PLUGIN_DESCRIPTION = 'Generated tables filled with sequential values', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '0.1';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'unix_socket', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'AUTHENTICATION', PLUGIN_TYPE_VERSION = '2.2', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Sergei Golubchik', PLUGIN_DESCRIPTION = 'Unix Socket based authentication', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'FEEDBACK', PLUGIN_VERSION = '1.1', PLUGIN_STATUS = 'DISABLED', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Sergei Golubchik', PLUGIN_DESCRIPTION = 'MariaDB User Feedback Plugin', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'OFF', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.1';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'user_variables', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'INFORMATION SCHEMA', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Sergey Vojtovich', PLUGIN_DESCRIPTION = 'User-defined variables', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';
UPDATE information_schema.PLUGINS SET PLUGIN_NAME = 'partition', PLUGIN_VERSION = '1.0', PLUGIN_STATUS = 'ACTIVE', PLUGIN_TYPE = 'STORAGE ENGINE', PLUGIN_TYPE_VERSION = '100407.0', PLUGIN_LIBRARY = null, PLUGIN_LIBRARY_VERSION = null, PLUGIN_AUTHOR = 'Mikael Ronstrom, MySQL AB', PLUGIN_DESCRIPTION = 'Partition Storage Engine Helper', PLUGIN_LICENSE = 'GPL', LOAD_OPTION = 'ON', PLUGIN_MATURITY = 'Stable', PLUGIN_AUTH_VERSION = '1.0';