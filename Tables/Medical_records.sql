//Creating Medical_Records table 
CREATE TABLE Medical_Records (
    Record_ID INT PRIMARY KEY,
    Patient_ID INT REFERENCES Patients(Patient_ID),
    Visit_Date DATE,
    Diagnosis VARCHAR(255),
    Treatment VARCHAR(255),
    Prescription VARCHAR(255),
    Doctor_ID INT,
    Notes TEXT,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Medical_Records (Record_ID, Patient_ID, Visit_Date, Diagnosis, Treatment, Prescription, Doctor_ID, Notes)
VALUES 
(1, 1, '2024-08-10', 'Hypertension', 'Lisinopril 10mg daily', 'Lisinopril 10mg, once daily', 1, 'Patient advised to monitor blood pressure daily.'),
(2, 2, '2024-08-11', 'Migraine', 'Ibuprofen 400mg as needed', 'Ibuprofen 400mg, take as needed', 2, 'Patient advised to avoid triggers.'),
(3, 3, '2024-08-12', 'Osteoarthritis', 'Physical therapy, pain management', 'Acetaminophen 500mg as needed', 3, 'Patient referred to physical therapy.'),
(4, 4, '2024-08-13', 'Viral Fever', 'Rest, fluids, Paracetamol', 'Paracetamol 500mg, every 6 hours', 4, 'Patient advised to rest and hydrate.'),
(5, 5, '2024-08-14', 'Eczema', 'Topical steroid cream', 'Hydrocortisone 1% cream, twice daily', 5, 'Patient advised to avoid allergens.'),
(6, 6, '2024-08-15', 'Gallstones', 'Surgery recommended', 'N/A', 6, 'Patient scheduled for cholecystectomy.'),
(7, 7, '2024-08-16', 'GERD', 'Omeprazole 20mg daily', 'Omeprazole 20mg, once daily', 7, 'Patient advised to avoid spicy foods.'),
(8, 8, '2024-08-17', 'Breast Cancer', 'Chemotherapy', 'Doxorubicin, Cyclophosphamide', 8, 'Patient advised on side effects of chemotherapy.'),
(9, 9, '2024-08-18', 'Diabetes Mellitus Type 2', 'Metformin 500mg, diet modification', 'Metformin 500mg, twice daily', 9, 'Patient referred to nutritionist.'),
(10, 10, '2024-08-19', 'Generalized Anxiety Disorder', 'Cognitive Behavioral Therapy, SSRI', 'Sertraline 50mg, once daily', 10, 'Patient advised to follow up with mental health specialist.');
