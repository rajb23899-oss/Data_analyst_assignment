CREATE TABLE clinic_sales (
    oid VARCHAR(50) PRIMARY KEY,
    uid VARCHAR(50),
    cid VARCHAR(50),
    amount DECIMAL(10,2),
    datetime DATETIME,
    sales_channel VARCHAR(50),
    FOREIGN KEY (uid) REFERENCES customer(uid),
    FOREIGN KEY (cid) REFERENCES clinics(cid)
);
INSERT INTO clinic_sales VALUES
('ord-00100-00100', 'bk-09f3e-95hj', 'cnc-0100001', 24999, '2021-09-23 12:03:22', 'online'),
('ord-00200-00200', 'bk-11a2b-77kl', 'cnc-0100002', 15000, '2021-11-15 15:20:10', 'offline');