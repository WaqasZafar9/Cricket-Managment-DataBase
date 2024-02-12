
-- CRICKET TOUNAMENT DATABASE SYSTEM --

drop table country;
drop table City;
drop table stadium;
drop table TEAM;
drop table PLAYER;
drop table WICKET_KEEPER;
drop table UMPIRE;
drop table COACH;
drop table CAPTAIN;
drop table matchs;
drop table Scoreboard;
drop table UMPIRED_BY;



CREATE TABLE Country (
    country_id number(5) PRIMARY KEY,
    country_name varchar(20) NOT NULL
);

INSERT ALL
    INTO country (country_id, country_name)
    VALUES (1, 'Pakistan')
    INTO country (country_id, country_name)
    VALUES (2, 'India')
    INTO country (country_id, country_name)
    VALUES (3, 'Australia')
    INTO country (country_id, country_name)
    VALUES (4, 'England')
    INTO country (country_id, country_name)
    VALUES (5, 'South Africa')
     INTO country (country_id, country_name)
    VALUES (6, 'New Zealand')
    INTO country (country_id, country_name)
    VALUES (7, 'West Indies')
    INTO country (country_id, country_name)
    VALUES (8, 'Sri Lanka')
    INTO country (country_id, country_name)
    VALUES (9, 'Bangladesh')
    INTO country (country_id, country_name)
    VALUES (10, 'Afghanistan')
    INTO country (country_id, country_name)
    VALUES (11, 'Zimbabwe')
    INTO country (country_id, country_name)
    VALUES (12, 'Ireland')
    INTO country (country_id, country_name)
    VALUES (13, 'Netherlands')
    INTO country (country_id, country_name)
    VALUES (14, 'Scotland')
    INTO country (country_id, country_name)
    VALUES (15, 'United Arab Emirates')
SELECT * FROM dual;
select * from country;
-----------------------------------------------
CREATE TABLE City (
    city_ID number(5)PRIMARY KEY,
    country_id number(5) REFERENCES Country(country_ID),
    City_NAME varchar(20) NOT NULL
    
);

INSERT ALL
    INTO city (city_ID, country_id, City_NAME)
    VALUES (1, 1, 'Karachi')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (2, 1, 'Lahore')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (3, 1, 'Islamabad')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (4, 2, 'Mumbai')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (5, 2, 'Delhi')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (6, 2, 'Kolkata')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (7, 3, 'Sydney')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (8, 3, 'Melbourne')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (9, 3, 'Brisbane')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (10, 4, 'London')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (11, 4, 'Manchester')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (12, 4, 'Birmingham')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (13, 5, 'Cape Town')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (14, 5, 'Johannesburg')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (15, 5, 'Durban')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (16, 6, 'Auckland')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (17, 6, 'Wellington')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (18, 6, 'Christchurch')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (19, 7, 'Kingston')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (20, 1, 'Rawalpindi')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (21, 8, 'Colombo')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (22, 1, 'Multan')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (23, 1, 'Pehawar')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (24, 9, 'Dhaka')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (25, 9, 'Chittagong')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (26, 9, 'Sylhet')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (27, 10, 'Kabul')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (28, 10, 'Kandahar')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (29, 10, 'Herat')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (30, 11, 'Harare')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (31, 11, 'Bulawayo')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (32, 11, 'Mutare')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (33, 12, 'Dublin')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (34, 12, 'Cork')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (35, 12, 'Galway')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (36, 13, 'Amsterdam')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (37, 13, 'Rotterdam')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (38, 13, 'The Hague')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (39, 14, 'Edinburgh')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (40, 14, 'Glasgow')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (41, 14, 'Aberdeen')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (42, 15, 'Dubai')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (43, 15, 'abu dhabi')
    INTO city (city_ID, country_id, City_NAME)
    VALUES (44, 15, 'Sharjah')
SELECT * FROM dual;

select * from city ORDER BY COUNTRY_ID; 
-----------------------------------------------


create  table stadium(
    
    stadium_ID varchar(30) PRIMARY KEY,
    Stadium_name varchar(30) NOT NULL,
    city_ID NUMBER(5) REFERENCES City(city_ID),
    Hosting_Date Date NOT NULL
    
);

INSERT ALL
    INTO stadium (stadium_ID, stadium_name, city_ID, hosting_date)
    VALUES ('STD007', 'Rawalpindi Cricket Stadium', 20, TO_DATE('1996-02-10', 'YYYY-MM-DD'))
    INTO stadium (stadium_ID, stadium_name, city_ID, hosting_date)
    VALUES ('STD008', 'Gaddafi Stadium', 2, TO_DATE('1970-02-15', 'YYYY-MM-DD'))
    INTO stadium (stadium_ID, stadium_name, city_ID, hosting_date)
    VALUES ('STD009', 'National Stadium', 1, TO_DATE('1955-02-20', 'YYYY-MM-DD'))
    INTO stadium (stadium_ID, stadium_name, city_ID, hosting_date)
    VALUES ('STD010', 'Multan Cricket Stadium', 2, TO_DATE('2003-02-25', 'YYYY-MM-DD'))
    INTO stadium (stadium_ID, stadium_name, city_ID, hosting_date)
    VALUES ('STD011', 'ZALMI CRICKET STADIUM', 23, TO_DATE('1999-03-02', 'YYYY-MM-DD'))
    INTO stadium (stadium_ID, stadium_name, city_ID, hosting_date)
    VALUES ('STD012', 'BURGER CRICKET STADIUM', 3, TO_DATE('2021-03-07', 'YYYY-MM-DD'))
SELECT * FROM dual;
SELECT * from stadium;

----------------------------------------------------------------


CREATE TABLE TEAM (
    team_id VARCHAR(30) PRIMARY KEY,
    team_name VARCHAR(20) NOT NULL,
    Home_Stdaium varchar(30) references stadium(stadium_ID)
);

INSERT ALL
    INTO TEAM (team_id, team_name, Home_Stdaium)
    VALUES ('T001', 'Islamabad United',  'STD012')
    INTO TEAM (team_id, team_name, Home_Stdaium)
    VALUES ('T002', 'Lahore Qalandars',  'STD008')
    INTO TEAM (team_id, team_name, Home_Stdaium)
    VALUES ('T003', 'Karachi Kings',  'STD009')
    INTO TEAM (team_id, team_name, Home_Stdaium)
    VALUES ('T004', 'Multan Sultans',  'STD010')
    INTO TEAM (team_id, team_name, Home_Stdaium)
    VALUES ('T005', 'Peshawar Zalmi',  'STD011')
    INTO TEAM (team_id, team_name, Home_Stdaium)
    VALUES ('T006', 'Quetta Gladiators', 'STD007')
SELECT * FROM dual;
select * from TEAM;

--------------------------------------------------------------

CREATE TABLE PLAYER (
    player_id VARCHAR(30) PRIMARY KEY,
    player_name varchar(30),
    City_ID number(5) REFERENCES city(City_ID),
    DATE_OF_BIRTH DATE,
    no_of_championship NUMBER(2),
    team_id VARCHAR(30) REFERENCES TEAM(team_id),
    Batting_Style varchar(30),
    Bowling_Style varchar(30)
    
);
select * from city ;
--For team T001 (Islamabad United):

INSERT ALL
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P001', 'John Smith', 4, TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'T001', 2, 'Right-handed', 'Right-arm medium')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P002', 'David Johnson', 7, TO_DATE('1992-09-21', 'YYYY-MM-DD'), 'T001', 1, 'Left-handed', 'Right-arm off-spin')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P003', 'Michael Brown', 1, TO_DATE('1988-07-08', 'YYYY-MM-DD'), 'T001', 0, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P004', 'Robert Wilson', 2, TO_DATE('1993-04-18', 'YYYY-MM-DD'), 'T001', 3, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P005', 'Christopher Lee', 3, TO_DATE('1991-11-05', 'YYYY-MM-DD'), 'T001', 2, 'Left-handed', 'Right-arm medium-fast')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P006', 'Daniel Harris', 4, TO_DATE('1989-03-27', 'YYYY-MM-DD'), 'T001', 1, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P007', 'Matthew Thompson', 4, TO_DATE('1994-08-12', 'YYYY-MM-DD'), 'T001', 0, 'Right-handed', 'Right-arm leg-spin')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P008', 'William Turner', 7, TO_DATE('1992-01-29', 'YYYY-MM-DD'), 'T001', 1, 'Left-handed', NULL)
SELECT 1 FROM DUAL;

SELECT 1 FROM DUAL;

--For team T002 (Lahore Qalandars):

INSERT ALL
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P0010', 'Robert Wilson', 1, TO_DATE('1991-02-28', 'YYYY-MM-DD'), 'T002', 3, 'Left-handed', 'Left-arm orthodox')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P0011', 'William Thompson', 9, TO_DATE('1993-11-12', 'YYYY-MM-DD'), 'T002', 0, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P0012', 'Daniel Davis', 11, TO_DATE('1989-04-18', 'YYYY-MM-DD'), 'T002', 1, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P0013', 'James Anderson', 13, TO_DATE('1990-09-05', 'YYYY-MM-DD'), 'T002', 2, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P0014', 'Joseph Roberts', 11, TO_DATE('1992-07-15', 'YYYY-MM-DD'), 'T002', 1, 'Right-handed', 'Right-arm leg-spin')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P0015', 'Thomas Harris', 12, TO_DATE('1994-03-20', 'YYYY-MM-DD'), 'T002', 0, 'Left-handed', 'Left-arm medium')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P016', 'Samuel Turner', 15, TO_DATE('1993-06-10', 'YYYY-MM-DD'), 'T002', 2, 'Right-handed', 'Right-arm fast')
SELECT 1 FROM DUAL;

--For team T003 (Karachi Kings):

INSERT ALL
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P017', 'Christopher Lee', 16, TO_DATE('1990-08-20', 'YYYY-MM-DD'), 'T003', 2, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P018', 'Andrew Clark', 16, TO_DATE('1992-03-10', 'YYYY-MM-DD'), 'T003', 1, 'Left-handed', 'Right-arm off-spin')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P019', 'Matthew Turner', 26, TO_DATE('1988-12-05', 'YYYY-MM-DD'), 'T003', 0, 'Right-handed', 'Right-arm fast')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P020', 'Broad', 35, TO_DATE('1990-09-05', 'YYYY-MM-DD'), 'T003', 2, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P021', 'HAFIZA', 23, TO_DATE('1992-07-15', 'YYYY-MM-DD'), 'T003', 1, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P022', 'Harris', 2, TO_DATE('1994-03-20', 'YYYY-MM-DD'), 'T003', 0, 'Left-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P023', 'Turner', 15, TO_DATE('1993-06-10', 'YYYY-MM-DD'), 'T003', 2, 'Right-handed', 'Right-arm fast')
SELECT 1 FROM DUAL;


--For team T004 (Multan Sultans):

INSERT ALL
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, Batting_Style, Bowling_Style)
VALUES ('P024', 'Babar Azam', 5, TO_DATE('1991-06-02', 'YYYY-MM-DD'), 'T004', 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, Batting_Style, Bowling_Style)
VALUES ('P025', 'Mohammad Hafeez', 5, TO_DATE('1993-01-25', 'YYYY-MM-DD'), 'T004', 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, Batting_Style, Bowling_Style)
VALUES ('P026', 'Shaheen Afridi', 5, TO_DATE('1989-07-14', 'YYYY-MM-DD'), 'T004', 'Left-handed', 'Left-arm fast')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, Batting_Style, Bowling_Style)
VALUES ('P027', 'Shadab Khan', 15, TO_DATE('1992-04-10', 'YYYY-MM-DD'), 'T004', 'Right-handed', 'Right-arm leg-spin')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, Batting_Style, Bowling_Style)
VALUES ('P028', 'Fakhar Zaman', 25, TO_DATE('1994-03-15', 'YYYY-MM-DD'), 'T004', 'Left-handed', 'Slow left-arm orthodox')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, Batting_Style, Bowling_Style)
VALUES ('P029', 'Imad Wasim', 35, TO_DATE('1990-09-05', 'YYYY-MM-DD'), 'T004', 'Left-handed', 'Slow left-arm orthodox')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, Batting_Style, Bowling_Style)
VALUES ('P030', 'Hasan Ali', 43, TO_DATE('1995-12-18', 'YYYY-MM-DD'), 'T004', 'Right-handed', NULL)
SELECT 1 FROM DUAL;

--For team T005 (Peshawar Zalmi):


INSERT ALL
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P031', 'Joshua Hill', 42, TO_DATE('1990-04-07', 'YYYY-MM-DD'), 'T005', 1, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P032', 'Christopher Lewis', 5, TO_DATE('1992-10-18', 'YYYY-MM-DD'), 'T005', 0, 'Left-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P033', 'Benjamin Turner', 4,TO_DATE( '1988-06-23', 'YYYY-MM-DD'), 'T005', 2, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P034', 'Saeed Ahmed', 41, TO_DATE('1993-09-02', 'YYYY-MM-DD'), 'T005', 1, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P035', 'Imran Ali', 40, TO_DATE('1990-07-14', 'YYYY-MM-DD'), 'T005', 0, 'Left-handed', 'Right-arm medium-fast')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P036', 'Nadeem Khan', 43, TO_DATE('1987-12-28', 'YYYY-MM-DD'), 'T005', 3, 'Right-handed', 'Right-arm fast')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P037', 'Ali Raza', 42, TO_DATE('1991-05-10', 'YYYY-MM-DD'), 'T005', 2, 'Left-handed', 'Left-arm orthodox')

SELECT 1 FROM DUAL;

--For team T006 (Quetta Gladiators):

INSERT ALL
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P038', 'William Evans', 9, TO_DATE('1991-09-12', 'YYYY-MM-DD'), 'T006', 0, 'Left-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P039', 'David Thompson', 9, TO_DATE('1993-04-05', 'YYYY-MM-DD'), 'T006', 1, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P040', 'Michael Carter', 4, TO_DATE('1989-11-29', 'YYYY-MM-DD'), 'T006', 3, 'Right-handed', NULL)
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P041', 'Mohammad Khan', 6, TO_DATE('1992-03-05', 'YYYY-MM-DD'), 'T006', 1, 'Right-handed', 'Right-arm off-spin')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P042', 'Ali Ahmed', 6, TO_DATE('1994-09-16', 'YYYY-MM-DD'), 'T006', 0, 'Left-handed', 'Right-arm medium-fast')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P043', 'Usman Khan', 12, TO_DATE('1989-05-08', 'YYYY-MM-DD'), 'T006', 3, 'Right-handed', 'Right-arm fast')
INTO PLAYER (player_id, player_name, City_ID, DATE_OF_BIRTH, team_id, no_of_championship, Batting_Style, Bowling_Style)
VALUES ('P044', 'Ahmed Raza', 16, TO_DATE('1991-12-12', 'YYYY-MM-DD'), 'T006', 2, 'Left-handed', 'Left-arm orthodox')
SELECT 1 FROM DUAL;

select * from player order by TEAM_ID;
------------------------------------------------------

CREATE TABLE WICKET_KEEPER (
    team_id VARCHAR(30) REFERENCES TEAM(team_id),
    player_ID VARCHAR(30) REFERENCES Player(PLayer_id)
);

INSERT ALL
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T001', 'P005')
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T001', 'P003')
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T002', 'P0012')
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T002', 'P0013')
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T003', 'P019')
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T003', 'P020')
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T004', 'P025')
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T004', 'P027')
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T005', 'P033')
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T005', 'P034')
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T006', 'P040')
INTO WICKET_KEEPER (team_id, player_id) VALUES ('T006', 'P041')

SELECT 1 FROM DUAL;
select * from WICKET_KEEPER;

------------------------------------------------------
CREATE TABLE UMPIRE (
    umpire_id VARCHAR(30) PRIMARY KEY,
    umpire_name VARCHAR(30),
    country_id number(5) references city(city_ID),
    DATE_OF_BIRTH DATE
);

INSERT ALL
    INTO UMPIRE (umpire_id, umpire_name, country_id, DATE_OF_BIRTH)
    VALUES ('U001', 'Simon Taufel', 3, TO_DATE('1971-01-21', 'YYYY-MM-DD'))
    INTO UMPIRE (umpire_id, umpire_name, country_id, DATE_OF_BIRTH)
    VALUES ('U002', 'Aleem Dar', 2, TO_DATE('1968-06-06', 'YYYY-MM-DD'))
    INTO UMPIRE (umpire_id, umpire_name, country_id, DATE_OF_BIRTH)
    VALUES ('U003', 'Richard Kettleborough', 21, TO_DATE('1973-06-27', 'YYYY-MM-DD'))
    INTO UMPIRE (umpire_id, umpire_name, country_id, DATE_OF_BIRTH)
    VALUES ('U004', 'Kumar Dharmasena', 41, TO_DATE('1971-04-24', 'YYYY-MM-DD'))
    INTO UMPIRE (umpire_id, umpire_name, country_id, DATE_OF_BIRTH)
    VALUES ('U005', 'Marais Erasmus', 43, TO_DATE('1964-02-22', 'YYYY-MM-DD'))
SELECT 1 FROM DUAL;

select * from umpire;

------------------------------------------------------

CREATE TABLE COACH (
    coach_id VARCHAR(30) PRIMARY KEY,
    team_id VARCHAR(30) REFERENCES TEAM(team_id),
    coach_name VARCHAR(30),
    City_ID number(5) references city(CITY_ID),
    DATE_OF_BIRTH DATE
);


INSERT ALL
    INTO COACH (coach_id, team_id, coach_name, City_ID, DATE_OF_BIRTH)
    VALUES ('C1', 'T001', 'John Doe', 7, TO_DATE('1980-01-01', 'YYYY-MM-DD'))
    INTO COACH (coach_id, team_id, coach_name, City_ID, DATE_OF_BIRTH)
    VALUES ('C2', 'T002', 'Jane Smith', 11, TO_DATE('1975-05-10', 'YYYY-MM-DD'))
    INTO COACH (coach_id, team_id, coach_name, City_ID, DATE_OF_BIRTH)
    VALUES ('C3', 'T003', 'Michael Johnson', 3, TO_DATE('1985-12-15', 'YYYY-MM-DD'))
    INTO COACH (coach_id, team_id, coach_name, City_ID, DATE_OF_BIRTH)
    VALUES ('C4', 'T004', 'Sarah Adams', 13, TO_DATE('1978-08-20', 'YYYY-MM-DD'))
    INTO COACH (coach_id, team_id, coach_name, City_ID, DATE_OF_BIRTH)
    VALUES ('C5', 'T005', 'Robert Brown', 21, TO_DATE('1982-04-05', 'YYYY-MM-DD'))
    INTO COACH (coach_id, team_id, coach_name, City_ID, DATE_OF_BIRTH)
    VALUES ('C6', 'T006', 'Emily Davis', 33, TO_DATE('1990-07-25', 'YYYY-MM-DD'))
    
SELECT 1 FROM DUAL;

select * from coach;

select c.coach_NAME,c.DATE_OF_BIRTH,i.city_NAME,t.country_NAME from coach c INNER JOIN CITY i  ON c.city_ID=i.CIty_ID INNER JOIN COUNTRY t on i.COUNTRY_ID=t.country_ID ;
------------------------------------------------------


CREATE TABLE CAPTAIN (
    captain_id VARCHAR(30) PRIMARY KEY,
    player_id VARCHAR(30) references Player(Player_id)
);


INSERT ALL
    INTO CAPTAIN (captain_id, player_id)
    VALUES ('CA1', 'P003')
    INTO CAPTAIN (captain_id, player_id)
    VALUES ('CA2', 'P0013')
    INTO CAPTAIN (captain_id, player_id)
    VALUES ('CA3', 'P022')
    INTO CAPTAIN (captain_id, player_id)
    VALUES ('CA4', 'P024')
    INTO CAPTAIN (captain_id, player_id)
    VALUES ('CA5', 'P035')
    INTO CAPTAIN (captain_id, player_id)
    VALUES ('CA6', 'P041')
    
    
SELECT 1 FROM DUAL;

select * from CAPTAIN;
------------------------------------------------------


create table matchs(
    match_id VARCHAR(30)PRIMARY KEY,
    match_time TIMESTAMP(0),
    match_date DATE,
    stadium varchar(30) REFERENCES stadium(stadium_ID),
    team_1 VARCHAR(30)  REFERENCES TEAM(team_id),
    team_2 VARCHAR(30)  REFERENCES TEAM(team_id )
);
INSERT ALL 
     INTO matchs(match_id,match_time,match_date,stadium,team_1,team_2)
        VALUES('M001', TO_TIMESTAMP('2023-06-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-06-01', 'YYYY-MM-DD'),'STD008','T001','T002')
     INTO matchs(match_id,match_time,match_date,stadium,team_1,team_2)
        VALUES('M002', TO_TIMESTAMP('2023-06-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2023-06-03', 'YYYY-MM-DD'),'STD009','T003','T004' )
     INTO matchs(match_id,match_time,match_date,stadium,team_1,team_2)
        VALUES ('M003',TO_TIMESTAMP('2023-06-02 18:00:00', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2023-06-02', 'YYYY-MM-DD'),'STD010','T005','T006' )
        SELECT * FROM dual;
        select * from matchs;
------------------------------------------------------------------------


select * from player;
CREATE TABLE Scoreboard (
    match_id VARCHAR(30)REFERENCES matchs(match_id) ,
    player_id VARCHAR(30) REFERENCES Player(player_id),
    runs_scored NUMBER(3),
    balls_bowled NUMBER(3),
    no_balls NUMBER(2),
    wides NUMBER(2),
    leg_byes NUMBER(2),
    wickets_taken NUMBER(2),
    PRIMARY KEY (match_id, player_id)
    
);

 INSERT ALL
    -- Match 1 Details
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P002', 34, 40, 0, 2, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P004', 47, 60, 0, 3, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P003', 19, 30, 0, 1, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P006', 8, 20, 0, 2, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P007', 37, 40, 0, 1, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P008', 13, 15, 0, 1, 0, 2)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P0010', 52, 50, 0, 0, 0, 1)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P0011', 34, 45, 0, 1, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P0013', 21, 30, 0, 2, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P0014', 19, 40, 0, 0, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P0015', 8, 30, 0, 1, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M001', 'P016', 37, 50, 0, 2, 0, 0)
SELECT * FROM dual;


SELECT * FROM DUAL;

  

  -- Match 2 Details
  INSERT ALL
    -- Match 2 Details
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P017', 27, 35, 0, 1, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P018', 42, 50, 0, 2, 0, 0)
    -- Add more player details for Match 2
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P020', 56, 70, 0, 3, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P021', 9, 15, 0, 1, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P022', 33, 45, 0, 2, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P023', 62, 80, 0, 1, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P024', 14, 20, 0, 0, 1, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P026', 22, 30, 0, 0, 0, 1)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P027', 7, 10, 0, 1, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P028', 31, 40, 0, 0, 1, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P029', 12, 15, 0, 1, 0, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M002', 'P030', 39, 55, 0, 2, 0, 0)
SELECT * FROM dual;
SELECT * FROM DUAL;


  -- Match 3 Details
   INSERT ALL
    -- Match 3 Details
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P031', 39, 45, 0, 1, 0, 0 )
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P032', 19, 25, 1, 2, 0, 0 )
    -- Add more player details for Match 3
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P034', 12, 18, 0, 0, 1, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P035', 34, 30, 0, 1, 0, 1 )
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P036', 25, 20, 0, 0, 0, 0 )
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P037', 48, 35, 0, 2, 1, 0)
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P038', 13, 22, 1, 0, 0, 0 )
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P039', 39, 40, 0, 1, 1, 0 )
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P041', 63, 55, 0, 2, 0, 0 )
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P042', 21, 25, 0, 1, 0, 0 )
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P043', 36, 30, 0, 0, 1, 1 )
    INTO Scoreboard (match_id, player_id, runs_scored, balls_bowled, no_balls, wides, leg_byes, wickets_taken)
    VALUES ('M003', 'P044', 8, 10, 1, 0, 0, 0 )
SELECT * FROM DUAL;

SELECT 1 FROM DUAL;

------------------------------------------------------------------------


CREATE TABLE UMPIRED_BY (
    match_id VARCHAR(20) REFERENCES matchs(match_id),
    umpire_id VARCHAR(30) REFERENCES UMPIRE(umpire_id),
    Poosition varchar(30),
    PRIMARY KEY (match_id, umpire_id)
);
INSERT ALL
    INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M001', 'U001','FIRST')
    INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M001', 'U002','Second')
     INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M001', 'U003','Third')
    INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M001', 'U004','Fourth')
 
    INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M002', 'U001','FIRST')
    INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M002', 'U002','Second')
    INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M002', 'U003','Third')
    INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M002', 'U005','Fourth')
    
    INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M003', 'U002','FIRST')
    INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M003', 'U003','Second')
    INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M003', 'U004','Third')
    INTO UMPIRED_BY (match_id, umpire_id,Poosition) VALUES ('M003', 'U005','Fourth')
    
SELECT 1 FROM DUAL;

select * from UMPIRED_BY;

------------------------------------------------------------------------
------------------------------------------------------------------------
------------------------------------------------------------------------

---QUERIES TO RUN


--Retrieve the total number of matches played by each team:

SELECT t.team_name, COUNT(*) AS total_matches
FROM TEAM t
JOIN matchs m ON t.team_id = m.team_1 OR t.team_id = m.team_2
GROUP BY t.team_name;


--Retrieve all players who have scored more than 50 runs in a match:
SELECT p.player_name, s.runs_scored, s.match_id
FROM PLAYER p
JOIN Scoreboard s ON p.player_id = s.player_id
WHERE s.runs_scored > 50;


--Retrieve the names of all stadiums along with the cities they are located in:
SELECT s.stadium_name, c.city_name
FROM stadium s
INNER JOIN City c ON s.city_id = c.city_id;

--Retrieve the names of all players who are wicket-keepers for EACH team:
SELECT p.player_name, t.team_name
FROM PLAYER p
JOIN WICKET_KEEPER w ON p.player_id = w.player_id 
INNER JOIN TEAM t ON p.team_ID=t.team_ID;

--Retrieve the names of all coaches and their respective teams:
SELECT c.coach_name, t.team_name
FROM COACH c
JOIN TEAM t ON c.team_id = t.team_id;

--Retrieve the total number of matches officiated by each umpire:
SELECT u.umpire_name, COUNT(*) AS total_matches
FROM UMPIRE u
JOIN UMPIRED_BY ub ON u.umpire_id = ub.umpire_id
GROUP BY u.umpire_name;

--Retrieve the names of all teams along with their respective captains:
SELECT t.team_name, p.player_name AS captain_name
FROM TEAM t
JOIN PLAYER p ON t.team_id = p.team_id
JOIN CAPTAIN c ON c.player_id = p.player_id;
select * from player;


--Retrieve the average runs scored by each player in all matches:
SELECT p.player_name, AVG(s.runs_scored) AS average_runs
FROM PLAYER p
JOIN Scoreboard s ON p.player_id = s.player_id
GROUP BY p.player_name;


--Retrieve the player names and their ages (in years):
SELECT player_name, EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM DATE_OF_BIRTH) AS age
FROM PLAYER;


--Retrieve the stadium names and the dates on which matches are scheduled:
SELECT s.stadium_name, m.match_date
FROM stadium s
JOIN matchs m ON s.stadium_ID = m.stadium;


--TO DISPLAY SCOREBOARD OF MATCHES

SELECT  t1.team_name AS team1, t2.team_name AS team2, p.player_name, s.runs_scored, s.balls_bowled, (s.no_balls + s.wides + s.leg_byes) AS extras,
       (SELECT SUM(runs_scored + no_balls + wides + leg_byes) FROM Scoreboard WHERE match_id = m.match_id) AS total_score,
       (SELECT SUM(runs_scored + no_balls + wides + leg_byes) FROM Scoreboard WHERE match_id = m.match_id AND player_id IN (select player_id from player ss INNER JOIN TEAM tt ON ss.team_ID=ss.team_id where ss.team_ID=t1.team_id)) AS team1_score,
       (SELECT SUM(runs_scored + no_balls + wides + leg_byes) FROM Scoreboard WHERE match_id = m.match_id AND player_id IN (select player_id from player ss INNER JOIN TEAM tt ON ss.team_ID=ss.team_id where ss.team_ID=t2.team_id)) AS team2_score,
       CASE WHEN (SELECT SUM(runs_scored) FROM Scoreboard WHERE match_id = m.match_id AND player_id LIKE CONCAT(t1.team_id, '%')) >
                 (SELECT SUM(runs_scored) FROM Scoreboard WHERE match_id = m.match_id AND player_id LIKE CONCAT(t2.team_id, '%'))
            THEN t1.team_name
            ELSE t2.team_name
       END AS winning_team
FROM matchs m
JOIN TEAM t1 ON m.team_1 = t1.team_id
JOIN TEAM t2 ON m.team_2 = t2.team_id
JOIN Scoreboard s ON m.match_id = s.match_id
JOIN PLAYER p ON s.player_id = p.player_id;

--BATSMAN RANKING 
SELECT ss.player_id, pp.player_name,pp.team_ID,tt.team_name, AVG(runs_scored) AS average_score
FROM Scoreboard ss
INNER JOIN PlAYER pp ON ss.player_ID =pp.player_id
INNER JOIN team tt on pp.team_ID=tt.team_ID
GROUP BY ss.player_id, pp.player_name,pp.team_ID,tt.team_name
HAVING  AVG(runs_scored)>0
ORDER BY average_score DESC FETCH FIRST 10 ROWS ONLY;


--BOWLER_RANKING
SELECT ss.player_id, pp.player_name,pp.team_ID,tt.team_name, AVG(wickets_taken) AS average_score
FROM Scoreboard ss
INNER JOIN PlAYER pp ON ss.player_ID =pp.player_id
INNER JOIN team tt on pp.team_ID=tt.team_ID
GROUP BY ss.player_id, pp.player_name,pp.team_ID,tt.team_name
HAVING  AVG(wickets_taken)>0
ORDER BY average_score DESC FETCH FIRST 10 ROWS ONLY ;


--DISPLAY PLAYERS WHO ARE IN BOTH BATTING AND BOWLING RANKING

SELECT ss.player_id, pp.player_name, pp.team_ID, tt.team_name, AVG(wickets_taken) AS average_score
FROM Scoreboard ss
INNER JOIN Player pp ON ss.player_ID = pp.player_id
INNER JOIN Team tt ON pp.team_ID = tt.team_ID
GROUP BY ss.player_id, pp.player_name, pp.team_ID, tt.team_name
HAVING AVG(wickets_taken) > 0
INTERSECT
SELECT ss.player_id, pp.player_name, pp.team_ID, tt.team_name, AVG(runs_scored) AS average_score
FROM Scoreboard ss
INNER JOIN Player pp ON ss.player_ID = pp.player_id
INNER JOIN Team tt ON pp.team_ID = tt.team_ID
GROUP BY ss.player_id, pp.player_name, pp.team_ID, tt.team_name
HAVING AVG(runs_scored) > 0
ORDER BY average_score DESC;

--ALL ROUNDERS OF ALL TEAMS
SELECT p.player_name, t.team_name, AVG(s.runs_scored) AS average_runs, AVG(s.wickets_taken) AS average_wickets
FROM Player p
JOIN Team t ON p.team_id = t.team_id
JOIN Scoreboard s ON p.player_id = s.player_id
GROUP BY p.player_id, p.player_name, t.team_name
HAVING AVG(s.runs_scored) > 0 AND AVG(s.wickets_taken) > 0
ORDER BY (AVG(s.runs_scored) + AVG(s.wickets_taken)) DESC;



--TO DISPLAY SCOREBOARD OF MATCHES

SELECT DISTINCT t1.team_name AS team1, t2.team_name AS team2,
       (SELECT SUM(no_balls + wides + leg_byes) FROM Scoreboard WHERE match_id = m.match_id) AS total_extras,
       (SELECT SUM(runs_scored + no_balls + wides + leg_byes) FROM Scoreboard WHERE match_id = m.match_id) AS total_score,
       (SELECT SUM(runs_scored + no_balls + wides + leg_byes) FROM Scoreboard WHERE match_id = m.match_id AND player_id IN (select player_id from player ss INNER JOIN TEAM tt ON ss.team_ID=ss.team_id where ss.team_ID=t1.team_id)) AS team1_score,
       (SELECT SUM(runs_scored + no_balls + wides + leg_byes) FROM Scoreboard WHERE match_id = m.match_id AND player_id IN (select player_id from player ss INNER JOIN TEAM tt ON ss.team_ID=ss.team_id where ss.team_ID=t2.team_id)) AS team2_score,
       CASE WHEN (SELECT SUM(runs_scored) FROM Scoreboard WHERE match_id = m.match_id AND player_id LIKE CONCAT(t1.team_id, '%')) >
                 (SELECT SUM(runs_scored) FROM Scoreboard WHERE match_id = m.match_id AND player_id LIKE CONCAT(t2.team_id, '%'))
            THEN t1.team_name
            ELSE t2.team_name
       END AS winning_team
FROM matchs m
JOIN TEAM t1 ON m.team_1 = t1.team_id
JOIN TEAM t2 ON m.team_2 = t2.team_id
JOIN Scoreboard s ON m.match_id = s.match_id
JOIN PLAYER p ON s.player_id = p.player_id where m.match_id='M001';



--DISPLAY SCORE BOARD OF PLAYERS

--DISPLAY PLAYER SCORES FOR EACH TEAM


SELECT
    p.player_name,
    s.runs_scored,
    s.balls_bowled,
    s.wickets_taken,
    t.team_name AS team_Name,
    
    CASE
        WHEN t.team_name = w.winning_team THEN 'Winning Player'
        ELSE 'Loosing Player'
    END AS result
FROM
    PLAYER p
JOIN
    Scoreboard s ON p.player_id = s.player_id
JOIN
    TEAM t ON p.team_id = t.team_id
JOIN
    (
        SELECT
            m.match_id,
            CASE
                WHEN (
                    SELECT SUM(runs_scored) 
                    FROM Scoreboard 
                    WHERE match_id = m.match_id AND player_id LIKE CONCAT(t1.team_id, '%')
                ) > (
                    SELECT SUM(runs_scored) 
                    FROM Scoreboard 
                    WHERE match_id = m.match_id AND player_id LIKE CONCAT(t2.team_id, '%')
                ) THEN t1.team_name
                ELSE t2.team_name
            END AS winning_team
        FROM
            matchs m
        JOIN
            TEAM t1 ON m.team_1 = t1.team_id
        JOIN
            TEAM t2 ON m.team_2 = t2.team_id
    ) w ON s.match_id = w.match_id where s.match_id='M001' order by t.team_ID;
    
    
    

