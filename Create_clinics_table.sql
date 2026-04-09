CREATE TABLE clinics (
    cid VARCHAR(50) PRIMARY KEY,
    clinic_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);
INSERT INTO clinics VALUES
('cnc-0100001', 'XYZ Clinic', 'Bangalore', 'Karnataka', 'India'),
('cnc-0100002', 'ABC Clinic', 'Mysore', 'Karnataka', 'India');