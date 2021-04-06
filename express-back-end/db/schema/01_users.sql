DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  service_class VARCHAR(255) NOT NULL,
  tracking_method BOOLEAN DEFAULT FALSE,
  homeyard VARCHAR(255) NOT NULL,
  certifcation_expiration TIMESTAMP, 
);
ALTER TABLE users OWNER TO labber;