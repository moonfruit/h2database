-- Copyright 2004-2023 H2 Group. Multiple-Licensed under the MPL 2.0,
-- and the EPL 1.0 (https://h2database.com/html/license.html).
-- Initial Developer: H2 Group
--

SELECT CHAR_LENGTH(CAST(RANDOM_UUID() AS VARCHAR));
>> 36

SELECT RANDOM_UUID() = RANDOM_UUID();
>> FALSE

SELECT NEWID();
> exception FUNCTION_NOT_FOUND_1

SELECT SYS_GUID();
> exception FUNCTION_NOT_FOUND_1

SET MODE MSSQLServer;
> ok

SELECT CHAR_LENGTH(CAST(NEWID() AS VARCHAR));
>> 36

SET MODE Oracle;
> ok

SELECT SYS_GUID() IS OF (RAW);
>> TRUE

SELECT OCTET_LENGTH(SYS_GUID());
>> 16

SET MODE PostgreSQL;
> ok

SELECT CHAR_LENGTH(CAST(GEN_RANDOM_UUID() AS VARCHAR));
>> 36

SET MODE Regular;
> ok
