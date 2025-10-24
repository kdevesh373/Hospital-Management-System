DROP DATABASE IF EXISTS hospital_db;
CREATE DATABASE hospital_db;
USE hospital_db;
CREATE TABLE Doctor (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    experience_years INT,
    consultation_fee DECIMAL(8,2)
);
CREATE TABLE Patient (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50)
);
CREATE TABLE Appointment (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    bill_amount DECIMAL(10,2),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);
INSERT INTO Doctor (name, specialization, experience_years, consultation_fee)
VALUES
('Dr. Meena Sharma', 'Cardiologist', 10, 700.00),
('Dr. Rahul Verma', 'Dermatologist', 8, 500.00),
('Dr. Priya Nair', 'Pediatrician', 6, 450.00),
('Dr. Arjun Singh', 'Orthopedic', 12, 800.00);

INSERT INTO Patient (name, age, gender, city)
VALUES
('Amit Patel', 34, 'Male', 'Delhi'),
('Neha Gupta', 28, 'Female', 'Mumbai'),
('Ravi Kumar', 45, 'Male', 'Bangalore'),
('Sanya Jain', 22, 'Female', 'Delhi'),
('Pooja Sharma', 30, 'Female', 'Pune');

INSERT INTO Appointment (patient_id, doctor_id, appointment_date, bill_amount)
VALUES
(1, 1, '2025-10-10', 1500.00),
(2, 2, '2025-10-11', 800.00),
(3, 1, '2025-10-12', 2000.00),
(4, 3, '2025-10-13', 600.00),
(5, 4, '2025-10-14', 1800.00),
(1, 2, '2025-10-15', 900.00);

SELECT COUNT(*) AS total_patients FROM Patient;
SELECT AVG(consultation_fee) AS avg_fee FROM Doctor;
SELECT 
    d.name AS doctor_name,
    SUM(a.bill_amount) AS total_earnings
FROM Appointment a
JOIN Doctor d ON a.doctor_id = d.doctor_id
GROUP BY d.name;

SELECT 
    p.city,
    AVG(a.bill_amount) AS avg_bill
FROM Appointment a
JOIN Patient p ON a.patient_id = p.patient_id
GROUP BY p.city;

SELECT 
    d.name AS doctor_name,
    SUM(a.bill_amount) AS total_income
FROM Appointment a
JOIN Doctor d ON a.doctor_id = d.doctor_id
GROUP BY d.name
HAVING total_income > 2000;

SELECT 
    MAX(bill_amount) AS highest_bill,
    MIN(bill_amount) AS lowest_bill
FROM Appointment;