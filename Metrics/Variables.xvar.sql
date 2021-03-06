﻿-- External variable database definition for H2 
-- Generated 12/21/15 6:35 AM
-- Descriptor: Metrics/Variables.xvar (currently edited)
-- External variable ExcerciseProject
DROP TABLE IF EXISTS ExcerciseProject;
CREATE TABLE ExcerciseProject (EXCERCISE_ID INTEGER, DEPARTMENTID INTEGER, PROJECT_ID INTEGER, NAME VARCHAR(250), RESPONSIBLE VARCHAR(250), TARGET_BUDGET FLOAT, NOTES VARCHAR(250), CREATED_ON TIMESTAMP, UPDATED_ON TIMESTAMP, PROCESS VARCHAR(250), PID INTEGER, LASTYEARBUDGET FLOAT, BUDGET FLOAT, PRIORITY VARCHAR(250), STARTEXECUTION TIMESTAMP, ENDEXECUTION TIMESTAMP, NEWPROJECT BOOLEAN, DESCRIPTION VARCHAR(250), JUSTIFICATION VARCHAR(250), REQUESTEDDATE TIMESTAMP, DEFINEDDATE VARCHAR(250), INCLUDED BOOLEAN, APPROVED BOOLEAN);
CREATE INDEX ExcerciseProject_KEYS ON ExcerciseProject (EXCERCISE_ID, DEPARTMENTID, PROJECT_ID);
-- External variable ExcerciseDepartment
DROP TABLE IF EXISTS ExcerciseDepartment;
CREATE TABLE ExcerciseDepartment (EXCERCISE_ID INTEGER, DEPARTMENTID INTEGER, CREATED_ON TIMESTAMP, UPDATED_ON TIMESTAMP, PROCESS VARCHAR(250), PID TIMESTAMP, REQUESTEDDATE TIMESTAMP, RECIEVEDDATE TIMESTAMP);
CREATE INDEX ExcerciseDepartment_KEYS ON ExcerciseDepartment (EXCERCISE_ID, DEPARTMENTID);
-- External variable BudgetingVar
DROP TABLE IF EXISTS BudgetingVar;
CREATE TABLE BudgetingVar (EXCERCISE_ID INTEGER, FISCAL_YEAR INTEGER, TARGET_EXPENSES NUMERIC, EXPECTED_INCREASE NUMERIC, NEW_INVESTMENTS VARCHAR(250), TARGET_SUBMISSION TIMESTAMP, TARGET_APPROVAL TIMESTAMP, CREATED_ON TIMESTAMP, UPDATED_ON TIMESTAMP, PROCESS VARCHAR(250), PID INTEGER);
CREATE INDEX BudgetingVar_KEYS ON BudgetingVar (EXCERCISE_ID);

