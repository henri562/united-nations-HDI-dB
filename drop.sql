Rem
Rem cs457_12861_drop.sql
Rem
Rem   NAME
Rem     cs457_12861_drop.sql - Drop objects from CS457_12861 schema
Rem
Rem   DESCRIPTION
Rem     This script drops four tables, associated constraints,
Rem     views and synonyms from the CS457_12861 schema.
Rem
Rem   NOTES
Rem
Rem   CREATED by Mengchuan Lin - 11/27/2015
Rem

DROP PUBLIC SYNONYM un_hdi_details_view;

DROP VIEW un_hdi_details_view;

DROP TABLE un_regions		CASCADE CONSTRAINTS;
DROP TABLE un_countries		CASCADE CONSTRAINTS;
DROP TABLE un_hdi_2013		CASCADE CONSTRAINTS;
DROP TABLE un_gdp_2013		CASCADE CONSTRAINTS;

COMMIT;
