CREATE DATABASE Employment;
USE Employment;

SET GLOBAL local_infile = 1;

DROP TABLE IF EXISTS df2_status;
DROP TABLE IF EXISTS df3_place;

CREATE TABLE df2_status (
	isco08 VARCHAR(20),
    `Complete (ISCO-08)` VARCHAR(100),
    wstatus VARCHAR(20),
    `Labour force and employment status` VARCHAR(100),
    age VARCHAR(20),
    sex VARCHAR(5),
    geo VARCHAR(10),
    `Geopolitical Entity` VARCHAR(100),
    TIME_PERIOD INT,
    OBS_VALUE FLOAT
);

CREATE TABLE df3_place (
    isco08 VARCHAR(20),
    `Complete (ISCO-08)` VARCHAR(100),
    workplace VARCHAR(20),
    `Place of work` VARCHAR(100),
    age VARCHAR(20),
    sex VARCHAR(5),
    geo VARCHAR(10),
    `Geopolitical Entity` VARCHAR(100),
    TIME_PERIOD INT,
    OBS_VALUE FLOAT
);

-- ============================================================
-- IMPORTING DATA FROM CSV
-- WARNING! INSERT FILE-PATH HERE
-- EXAMPLE FOR Windows: 'D:/GITHUB/PROJECT 2/CSV_clean/df2_clean.csv'
-- EXAMPLE FOR Mac/Linux: '/home/user/project/CSV_clean/df2_clean.csv'
-- ============================================================


LOAD DATA LOCAL INFILE 'D:/GITHUB/PROJECT 2/CSV_clean/df2_clean.csv' -- INSERT YOUR PATH HERE
INTO TABLE df2_status
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'D:/GITHUB/PROJECT 2/CSV_clean/df3_clean.csv' -- INSERT YOUR PATH HERE
INTO TABLE df3_place
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
