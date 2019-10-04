DROP TABLE IF EXISTS schedule_status CASCADE;

CREATE TABLE schedule_status (
    schedule_status_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    event_schedule_id INT NOT NULL REFERENCES event_schedule,
    status VARCHAR(100) NOT NULL,
	support_ticket_id VARCHAR(200),
	last_modified_at TIMESTAMP NOT NULL DEFAULT NOW(),
	active BOOLEAN DEFAULT TRUE
)