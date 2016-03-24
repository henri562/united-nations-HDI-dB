Rem
Rem cs457_12861_create.sql
Rem
Rem   NAME
Rem     cs457_12861_create.sql - Create data objects for CS457_12861 schema
Rem
Rem   DESCRIPTION
Rem     This script creates four tables, associated constraints,
Rem     indexes and synonyms in the CS457_12861 schema.
Rem
Rem   NOTES
Rem
Rem   CREATED by Mengchuan Lin - 11/27/2015
Rem

REM ***********************************************************************
REM Create the UN_REGIONS table to hold region information for countries
REM CS457_12861.UN_COUNTRIES table has a foreign key to this table.

Prompt ****** Creating UN_REGIONS table ....

CREATE TABLE un_regions
  ( region_id     NUMBER
    CONSTRAINT un_region_id_nn NOT NULL
  , region_name   VARCHAR2(15)
  );

CREATE UNIQUE INDEX un_reg_id_pk
ON un_regions (region_id);

ALTER TABLE un_regions
ADD ( CONSTRAINT un_reg_id_pk
            PRIMARY KEY (region_id)
    );

REM ***************************************************************************
REM Create the UN_COUNTRIES table to hold country information for UN_HDI_2013
REM CS457_12861.UN_HDI_2013 and CS457_12861.UN_GDP_2013 tables have a foreign
REM key to this table.

Prompt ****** Creating UN_COUNTRIES table ....

CREATE TABLE un_countries
    ( country_id    CHAR(2)
      CONSTRAINT  un_country_id_nn NOT NULL
    , country_name  VARCHAR2(40)
	, indep_date	DATE
    , region_id     NUMBER
    , CONSTRAINT   un_country_c_id_pk
                PRIMARY KEY (country_id)
    );

ALTER TABLE un_countries
ADD ( CONSTRAINT un_country_reg_fk
            FOREIGN KEY (region_id)
             REFERENCES un_regions(region_id)
    );

REM ********************************************************************
REM Create the UN_HDI_2013 table to hold HDI information for the UN.

Prompt ****** Creating UN_HDI_2013 ....

CREATE TABLE un_hdi_2013
    ( hdi_rank         NUMBER DEFAULT 0
      CONSTRAINT hdi_rank_2013_nn NOT NULL
    , hdi_rank_change  CHAR(1)
    , hdi              NUMBER(4,3)
	  CONSTRAINT check_hdi
		CHECK (hdi < 1.0)
    , hdi_change       NUMBER(4,3)
    , development      VARCHAR2(10)
	, country_id       CHAR(2)
	, updated_date     DATE
	, updated_by       VARCHAR2(15)
    );

ALTER TABLE un_hdi_2013
ADD ( CONSTRAINT hdi_rank_2013_pk
            PRIMARY KEY (hdi_rank)
    , CONSTRAINT un_hdi_country_id_fk
            FOREIGN KEY (country_id)
             REFERENCES un_countries(country_id)
    );

REM ***************************************************************************
REM Create the UN_GDP_2013 table to hold GDP information for the UN.

Prompt ****** Creating UN_GDP_2013 ....

CREATE TABLE un_gdp_2013
	( gdp_rank				NUMBER
	  CONSTRAINT gdp_rank_2013_nn NOT NULL
	, gdp_per_capita_rank	NUMBER
	  CONSTRAINT gdp_pc_rank_2013_nn NOT NULL
	, gdp_nominal			NUMBER(8,0)
	, gdp_per_capita		NUMBER(6,0)
	, country_id			CHAR(2)
	);

ALTER TABLE un_gdp_2013
ADD ( CONSTRAINT gdp_r_gdp_pc_r_cpk
			PRIMARY KEY (gdp_rank, gdp_per_capita_rank)
	, CONSTRAINT un_gdp_country_id_fk
			FOREIGN KEY (country_id)
			 REFERENCES un_countries(country_id)
	);

REM ***************************************************************************
REM Create the UN_HDI_DETAILS_VIEW that joins the un_regions, un_countries,
REM un_hdi_2013 and un_gdp_2013 tables to provide details about HDI

Prompt ****** Creating UN_HDI_DETAILS_VIEW ....

CREATE OR REPLACE VIEW un_hdi_details_view
AS SELECT
	  c.region_id
	, r.region_name
	, h.country_id
	, c.country_name
	, h.hdi_rank
	, h.hdi_rank_change
	, h.hdi
	, h.development
	, g.gdp_rank
	, g.gdp_nominal
	, g.gdp_per_capita_rank
	, g.gdp_per_capita
FROM
	un_hdi_2013 h
	INNER JOIN un_countries c ON h.country_id = c.country_id
	INNER JOIN un_regions r ON c.region_id = r.region_id
	INNER JOIN un_gdp_2013 g ON c.country_id = g.country_id;

CREATE OR REPLACE PUBLIC SYNONYM un_hdi_details_view
FOR CS457_12861.un_hdi_details_view;

COMMIT;
