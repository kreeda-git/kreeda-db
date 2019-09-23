CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
-- if you want to install tiger geocoder --
CREATE EXTENSION fuzzystrmatch;
CREATE EXTENSION postgis_tiger_geocoder;
-- if you installed with pcre
-- you should have address standardizer extension as well
CREATE EXTENSION address_standardizer;