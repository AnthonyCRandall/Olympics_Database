DROP TABLE ATHLETE CASCADE CONSTRAINTS;
CREATE TABLE ATHLETE
(name VARCHAR (40),
athlete_id INTEGER not null,
age NUMBER (2,0), -- (EXAMPLE, 34)
nationality VARCHAR (25),
birthdate DATE, -- (EXAMPLE, TO_DATE('10-15-2000', 'MM-DD-YYYY');)
height_inches NUMBER (5,2), -- (EXAMPLE, 99.99)
weight_pounds NUMBER (6,2), -- (EXAMPLE, 230.35)
check (athlete_id > 0),
check (age > 0),
check (height_inches > 0),
check (weight_pounds > 0),
PRIMARY KEY (athlete_id)
)