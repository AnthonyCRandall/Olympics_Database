DROP TABLE STADIUM CASCADE CONSTRAINTS;
CREATE TABLE STADIUM
(stadium_id INTEGER not null,
stadium_name VARCHAR (50),
stadium_capacity INTEGER,
stadium_roof VARCHAR (10),
check (stadium_id > 0),
check (stadium_capacity > 0),
check (stadium_roof IN ('opened', 'closed', 'adjustable')),
PRIMARY KEY (stadium_id)
)