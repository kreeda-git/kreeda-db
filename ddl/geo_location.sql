DROP TABLE geo_location;

CREATE TABLE geo_location
(
    geo_location_id numeric NOT NULL,
    name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    details json,
    location geography NOT NULL,
    CONSTRAINT geo_location_pkey PRIMARY KEY (geo_location_id)
)
WITH (
    OIDS = FALSE
)