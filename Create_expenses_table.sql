CREATE TABLE expenses (
    eid VARCHAR(50) PRIMARY KEY,
    cid VARCHAR(50),
    description TEXT,
    amount DECIMAL(10,2),
    datetime DATETIME,
    FOREIGN KEY (cid) REFERENCES clinics(cid)
);
INSERT INTO expenses VALUES
('exp-0100-00100', 'cnc-0100001', 'first-aid supplies', 557, '2021-09-23 07:36:48'),
('exp-0200-00200', 'cnc-0100002', 'equipment maintenance', 2000, '2021-11-15 09:00:00');