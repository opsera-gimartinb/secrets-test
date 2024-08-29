-- secrets.sql
-- This file contains sensitive information. Do not store secrets in SQL files.

-- Creating a user with a hardcoded password (not recommended)
CREATE USER 'test_user'@'localhost' IDENTIFIED BY 'SuperSecretPassword123!';

-- Inserting API keys into a table (sensitive data example)
INSERT INTO api_keys (service_name, api_key)
VALUES 
    ('GoogleMaps', 'AIzaSyD9v-SecretKeyExample'),
    ('Twilio', 'SK1234567890abcdef1234567890abcdef');

-- Storing sensitive data in a table (e.g., private API key)
CREATE TABLE credentials (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,  -- Avoid storing passwords in plaintext
    secret_key VARCHAR(255)          -- Avoid storing secrets in plaintext
);

-- Example insert statement with sensitive data
INSERT INTO credentials (username, password, secret_key)
VALUES 
    ('admin', 'AdminPass123!', 'SecretKeyExample12345');

-- Never store secrets like this in production databases!

