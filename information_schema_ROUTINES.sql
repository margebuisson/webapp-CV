UPDATE information_schema.ROUTINES SET SPECIFIC_NAME = 'AddGeometryColumn', ROUTINE_CATALOG = 'def', ROUTINE_SCHEMA = 'mysql', ROUTINE_NAME = 'AddGeometryColumn', ROUTINE_TYPE = 'PROCEDURE', DATA_TYPE = '', CHARACTER_MAXIMUM_LENGTH = null, CHARACTER_OCTET_LENGTH = null, NUMERIC_PRECISION = null, NUMERIC_SCALE = null, DATETIME_PRECISION = null, CHARACTER_SET_NAME = null, COLLATION_NAME = null, DTD_IDENTIFIER = null, ROUTINE_BODY = 'SQL', ROUTINE_DEFINITION = 'begin
  set @qwe= concat(''ALTER TABLE '', t_schema, ''.'', t_name, '' ADD '', geometry_column,'' GEOMETRY REF_SYSTEM_ID='', t_srid); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end', EXTERNAL_NAME = null, EXTERNAL_LANGUAGE = null, PARAMETER_STYLE = 'SQL', IS_DETERMINISTIC = 'NO', SQL_DATA_ACCESS = 'CONTAINS SQL', SQL_PATH = null, SECURITY_TYPE = 'INVOKER', CREATED = '2019-09-10 12:39:16', LAST_ALTERED = '2019-09-10 12:39:16', SQL_MODE = '', ROUTINE_COMMENT = '', DEFINER = 'root@localhost', CHARACTER_SET_CLIENT = 'utf8', COLLATION_CONNECTION = 'utf8_general_ci', DATABASE_COLLATION = 'latin1_swedish_ci';
UPDATE information_schema.ROUTINES SET SPECIFIC_NAME = 'DropGeometryColumn', ROUTINE_CATALOG = 'def', ROUTINE_SCHEMA = 'mysql', ROUTINE_NAME = 'DropGeometryColumn', ROUTINE_TYPE = 'PROCEDURE', DATA_TYPE = '', CHARACTER_MAXIMUM_LENGTH = null, CHARACTER_OCTET_LENGTH = null, NUMERIC_PRECISION = null, NUMERIC_SCALE = null, DATETIME_PRECISION = null, CHARACTER_SET_NAME = null, COLLATION_NAME = null, DTD_IDENTIFIER = null, ROUTINE_BODY = 'SQL', ROUTINE_DEFINITION = 'begin
  set @qwe= concat(''ALTER TABLE '', t_schema, ''.'', t_name, '' DROP '', geometry_column); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end', EXTERNAL_NAME = null, EXTERNAL_LANGUAGE = null, PARAMETER_STYLE = 'SQL', IS_DETERMINISTIC = 'NO', SQL_DATA_ACCESS = 'CONTAINS SQL', SQL_PATH = null, SECURITY_TYPE = 'INVOKER', CREATED = '2019-09-10 12:39:16', LAST_ALTERED = '2019-09-10 12:39:16', SQL_MODE = '', ROUTINE_COMMENT = '', DEFINER = 'root@localhost', CHARACTER_SET_CLIENT = 'utf8', COLLATION_CONNECTION = 'utf8_general_ci', DATABASE_COLLATION = 'latin1_swedish_ci';