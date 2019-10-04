DROP TABLE IF EXISTS event_schedule CASCADE;

CREATE TABLE event_schedule
(
    event_schedule_id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    event_id INT NOT NULL REFERENCES EVENT,
	price NUMERIC(6, 2) NOT NULL,
    start_time TIMESTAMP NOT NULL,
    duration INT,
    end_time TIMESTAMP,
    recurrence BOOLEAN DEFAULT FALSE, 
    details JSONB,
    active BOOLEAN DEFAULT TRUE
);