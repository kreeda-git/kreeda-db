DROP TABLE IF EXISTS transaction_audit CASCADE;

CREATE TABLE transaction_audit (
    transaction_audit_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    entity_id INT NOT NULL,
	entity_name VARCHAR(200) NOT NULL,
    transaction_by INT NOT NULL,
	transaction_date TIMESTAMP NOT NULL DEFAULT NOW(),
	transaction_type VARCHAR(50) NOT NULL
)