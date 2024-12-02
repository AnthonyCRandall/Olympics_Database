DROP TABLE TICKET CASCADE CONSTRAINTS;
CREATE TABLE TICKET
(ticket_id INTEGER not null,
event_id INTEGER,
ticket_type VARCHAR (30),
ticket_price NUMBER (7,2),
ticket_name VARCHAR (50),
ticket_date DATE,
stadium_id INTEGER,
check (ticket_id > 0),
check (event_id > 0),
check (stadium_id > 0),
PRIMARY KEY (ticket_id)
)