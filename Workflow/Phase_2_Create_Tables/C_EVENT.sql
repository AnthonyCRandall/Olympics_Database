DROP TABLE EVENT CASCADE CONSTRAINTS;
CREATE TABLE EVENT
(event_id INTEGER not null,
event_name VARCHAR (30),
event_date DATE, -- (EXAMPLE, TO_DATE('05-12-2024', 'MM-DD-YYYY');)
event_hour NUMBER(2), -- Hour (EXAMPLE, 05 OR 5)
event_minutes NUMBER(2), -- MINUTES (EXAMPLE, 45)
am_pm CHAR(2), -- AM/PM INDICATOR (EXAMPLE, 'AM')
team VARCHAR (60), --
gold_medal INTEGER,
silver_medal INTEGER,
bronze_medal INTEGER,
FOREIGN KEY (gold_medal) REFERENCES ATHLETE(athlete_id),
FOREIGN KEY (silver_medal) REFERENCES ATHLETE(athlete_id),
FOREIGN KEY (bronze_medal) REFERENCES ATHLETE(athlete_id),
check (event_id > 0),
check (am_pm IN ('AM', 'am', 'PM', 'pm')),
check (gold_medal > 0 AND silver_medal > 0 AND bronze_medal > 0),
PRIMARY KEY (event_id)
)