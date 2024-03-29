DROP TABLE IF EXISTS event_schedule;

CREATE TABLE event_schedule
(
    event_schedule_id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    event_id INT NOT NULL REFERENCES EVENT,
    start_time TIMESTAMP NOT NULL,
    duration INT,
    end_time TIMESTAMP,
    recurrence BOOLEAN DEFAULT FALSE, 
    details JSONB,
    active BOOLEAN DEFAULT TRUE, 
	created_by INT NOT NULL,
	created_date TIMESTAMP NOT NULL DEFAULT NOW(),
	last_modified_by INT NOT NULL,
	last_modified_date TIMESTAMP NOT NULL DEFAULT NOW()
);