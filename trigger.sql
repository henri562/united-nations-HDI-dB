Rem
Rem cs457_12861_trigger.sql
Rem
Rem    NAME
Rem      cs457_12861_trigger.sql - Create procedural objects for CS457_12861 schema
Rem
Rem    DESCRIPTION
Rem      Create a row level trigger on the UN_HDI_2013 table
Rem      that stores the username and date of update in the
Rem      updated_by and updated_date columns before updates
Rem      are made to any other rows in the table.
Rem
Rem    NOTES
Rem
Rem    CREATED by Mengchuan Lin - 11/27/15
Rem

REM **************************************************************************

CREATE OR REPLACE TRIGGER un_hdi_2013_before_update
BEFORE UPDATE
	ON un_hdi_2013
	FOR EACH ROW

DECLARE
	v_username varchar2(15);

BEGIN

	-- Find username of person performing UPDATE on the table
	SELECT user INTO v_username
	FROM dual;

	-- Update updated_date field to current system date
	:new.updated_date := sysdate;

	-- Update updated_by field to the username of the person performing the update
	:new.updated_by := v_username;

END;
/

COMMIT;
