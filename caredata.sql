-- add resident data

INSERT INTO residents (resident_id, firstname, lastname, date_of_birth, gender, room_number, admission_date) VALUES
(1, 'John', 'Doe', '1930-05-14', 'M', 101, '2023-01-10'),
(2, 'Jane', 'Smith', '1942-11-02', 'F', 102, '2022-05-22'),
(3, 'William', 'Johnson', '1950-07-30', 'M', 103, '2023-03-18'),
(4, 'Robert', 'Brown', '1937-08-13', 'M', 104, '2022-04-10'),
(5, 'Michael', 'Jones', '1941-07-17', 'M', 105, '2022-05-14'),
(6, 'Emily', 'Davis', '1939-03-25', 'F', 106, '2022-06-19'),
(7, 'William', 'Miller', '1942-12-02', 'M', 107, '2022-07-21'),
(8, 'Elizabeth', 'Wilson', '1936-02-18', 'F', 108, '2022-08-23'),
(9, 'Charles', 'Moore', '1934-10-09', 'M', 109, '2022-09-25'),
(10, 'Mary', 'Taylor', '1943-04-03', 'F', 110, '2022-10-30'),
(11, 'James', 'Anderson', '1933-06-16', 'M', 111, '2022-11-12'),
(12, 'Patricia', 'Thomas', '1937-01-04', 'F', 112, '2022-12-14');


-- add fin_plan data

INSERT INTO fin_plan (fin_plan_id, resident_id, monthly_allowance, expense_details) VALUES
(1, 1, 1000.00, 'Medications: $300, Food: $200, Misc: $500'),
(2, 2, 1200.00, 'Medications: $400, Food: $300, Misc: $500'),
(3, 3, 1100.00, 'Medications: $350, Food: $250, Misc: $500'),
(4, 4, 1100.00, 'Medications: $250, Food: $350, Misc: $500'),
(5, 5, 1050.00, 'Medications: $220, Food: $330, Misc: $500'),
(6, 6, 1250.00, 'Medications: $300, Food: $450, Misc: $500'),
(7, 7, 1400.00, 'Medications: $400, Food: $500, Misc: $500'),
(8, 8, 950.00, 'Medications: $180, Food: $270, Misc: $500'),
(9, 9, 1150.00, 'Medications: $300, Food: $350, Misc: $500'),
(10, 10, 1200.00, 'Medications: $250, Food: $450, Misc: $500'),
(11, 11, 1300.00, 'Medications: $350, Food: $450, Misc: $500'),
(12, 12, 1000.00, 'Medications: $200, Food: $300, Misc: $500');


-- check resident table and add fin_plan_id to it as a foreign key
select * from residents;

ALTER TABLE carehome 
ADD COLUMN fin_plan_id INT;

UPDATE residents 
SET fin_plan_id = CASE
WHEN resident_id = 1 THEN 1
WHEN resident_id = 2 THEN 2
WHEN resident_id = 3 THEN 3
WHEN resident_id = 4 THEN 4
WHEN resident_id = 5 THEN 5
WHEN resident_id = 6 THEN 6
WHEN resident_id = 7 THEN 7
WHEN resident_id = 8 THEN 8
WHEN resident_id = 9 THEN 9
WHEN resident_id = 10 THEN 10
WHEN resident_id = 11 THEN 12
WHEN resident_id = 12 THEN 12
END
WHERE resident_id IN (1,2,3,4,5,6,7,8,9,10,11,12);


-- add staff table data

INSERT INTO staff (staff_id, firstname, lastname, date_of_birth, role, date_joined, training_status) VALUES
(1, 'Alice', 'Brown', '1985-09-23', 'Nurse', '2021-06-15', 'Completed'),
(2, 'Bob', 'Taylor', '1990-04-12', 'Care Assistant', '2022-02-28', 'Pending'),
(3, 'Eve', 'Wilson', '1982-11-05', 'Manager', '2019-11-01', 'Completed'),
(4, 'Emily', 'Davis', '1990-09-12', 'Nurse', '2021-07-22', 'Completed'),
(5, 'Robert', 'Johnson', '1975-02-20', 'Doctor', '2017-03-01', 'Completed'),
(6, 'Laura', 'Wilson', '1987-08-28', 'Nurse', '2019-12-05', 'Completed'),
(7, 'James', 'Martinez', '1980-01-14', 'Care Assistant', '2020-04-20', 'In Progress'),
(8, 'Patricia', 'Taylor', '1993-03-03', 'Therapist', '2021-08-11', 'In Progress'),
(9, 'Daniel', 'Anderson', '1982-12-18', 'Care Assistant', '2019-10-25', 'Completed'),
(10, 'Mary', 'Thomas', '1988-07-30', 'Nurse', '2020-11-07', 'Completed'),
(11, 'William', 'Jackson', '1976-06-02', 'Doctor', '2016-09-15', 'Completed'),
(12, 'Sophia', 'Harris', '1991-10-10', 'Therapist', '2021-05-19', 'In Progress'),
(13, 'Joseph', 'Lopez', '1984-04-25', 'Care Assistant', '2020-02-14', 'Completed'),
(14, 'Linda', 'Clark', '1986-11-17', 'Nurse', '2018-08-30', 'Completed'),
(15, 'Charles', 'Lewis', '1979-05-08', 'Care Assistant', '2019-07-13', 'In Progress'),
(16, 'Barbara', 'Walker', '1994-01-28', 'Therapist', '2021-12-01', 'In Progress'),
(17, 'Thomas', 'Hall', '1981-09-21', 'Care Assistant', '2020-06-18', 'Completed'),
(18, 'Elizabeth', 'Young', '1989-02-15', 'Nurse', '2020-09-24', 'Completed'),
(19, 'Christopher', 'King', '1977-03-27', 'Doctor', '2017-02-08', 'Completed'),
(20, 'Evelyn', 'Green', '1992-11-30', 'Therapist', '2021-10-22', 'In Progress');


-- add rota table data

INSERT INTO rota_mgt (rota_id, staff_id, shift_date, shift_start, shift_end, hours) VALUES
-- January 2024
(1, 1, '2024-08-12', '07:00', '15:00', 8),
(2, 2, '2024-08-12', '15:00', '23:00', 8),
(3, 3, '2024-08-12', '23:00', '07:00', 8),
(4, 4, '2024-01-01', '12:00', '20:00', 8),
(5, 5, '2024-01-01', '08:00', '18:00', 10),
(6, 6, '2024-01-02', '08:00', '16:00', 8),
(7, 7, '2024-01-02', '06:00', '14:00', 8),
(8, 8, '2024-01-02', '10:00', '18:00', 8),
(9, 9, '2024-01-02', '12:00', '20:00', 8),
(10, 10, '2024-01-02', '08:00', '18:00', 10),
(11, 11, '2024-01-03', '08:00', '20:00', 12),
(12, 12, '2024-01-03', '10:00', '16:00', 6),
(13, 13, '2024-01-03', '08:00', '16:00', 8),
(14, 14, '2024-01-03', '12:00', '20:00', 8),
(15, 15, '2024-01-03', '08:00', '18:00', 10),
(16, 16, '2024-01-04', '08:00', '16:00', 8),
(17, 17, '2024-01-04', '06:00', '14:00', 8),
(18, 18, '2024-01-04', '10:00', '18:00', 8),
(19, 19, '2024-01-04', '12:00', '20:00', 8),
(20, 20, '2024-01-04', '08:00', '20:00', 12),
-- February 2024
(21, 1, '2024-02-01', '08:00', '16:00', 8),
(22, 2, '2024-02-01', '06:00', '14:00', 8),
(23, 3, '2024-02-01', '10:00', '18:00', 8),
(24, 4, '2024-02-01', '12:00', '20:00', 8),
(25, 5, '2024-02-01', '08:00', '18:00', 10),
(26, 6, '2024-02-02', '08:00', '16:00', 8),
(27, 7, '2024-02-02', '06:00', '14:00', 8),
(28, 8, '2024-02-02', '10:00', '18:00', 8),
(29, 9, '2024-02-02', '12:00', '20:00', 8),
(30, 10, '2024-02-02', '08:00', '18:00', 10),
(31, 11, '2024-02-03', '08:00', '20:00', 12),
(32, 12, '2024-02-03', '10:00', '16:00', 6),
(33, 13, '2024-02-03', '08:00', '16:00', 8),
(34, 14, '2024-02-03', '12:00', '20:00', 8),
(35, 15, '2024-02-03', '08:00', '18:00', 10),
(36, 16, '2024-02-04', '08:00', '16:00', 8),
(37, 17, '2024-02-04', '06:00', '14:00', 8),
(38, 18, '2024-02-04', '10:00', '18:00', 8),
(39, 19, '2024-02-04', '12:00', '20:00', 8),
(40, 20, '2024-02-04', '08:00', '20:00', 12),

-- March 2024
(41, 1, '2024-03-01', '08:00', '16:00', 8),
(42, 2, '2024-03-01', '06:00', '14:00', 8),
(43, 3, '2024-03-01', '10:00', '18:00', 8),
(44, 4, '2024-03-01', '12:00', '20:00', 8),
(45, 5, '2024-03-01', '08:00', '18:00', 10),
(46, 6, '2024-03-02', '08:00', '16:00', 8),
(47, 7, '2024-03-02', '06:00', '14:00', 8),
(48, 8, '2024-03-02', '10:00', '18:00', 8),
(49, 9, '2024-03-02', '12:00', '20:00', 8),
(50, 10, '2024-03-02', '08:00', '18:00', 10),
(51, 11, '2024-03-03', '08:00', '20:00', 12),
(52, 12, '2024-03-03', '10:00', '16:00', 6),
(53, 13, '2024-03-03', '08:00', '16:00', 8),
(54, 14, '2024-03-03', '12:00', '20:00', 8),
(55, 15, '2024-03-03', '08:00', '18:00', 10),
(56, 16, '2024-03-04', '08:00', '16:00', 8),
(57, 17, '2024-03-04', '08:00', '16:00', 8),
(58, 18, '2024-03-04', '08:00', '16:00', 8),
(59, 19, '2024-03-04', '08:00', '16:00', 8),
(60, 20, '2024-03-04', '08:00', '16:00', 8);


-- check staff table and update the rota_id column

SELECT * FROM staff;

UPDATE staff
SET rota_id = CASE 
WHEN staff_id = 4 THEN 4
WHEN staff_id = 5 THEN 5
WHEN staff_id = 6 THEN 6
WHEN staff_id = 7 THEN 7
WHEN staff_id = 8 THEN 8
WHEN staff_id = 9 THEN 9
WHEN staff_id = 10 THEN 10
WHEN staff_id = 11 THEN 11
WHEN staff_id = 12 THEN 12
WHEN staff_id = 13 THEN 13
WHEN staff_id = 14 THEN 14
WHEN staff_id = 15 THEN 15
WHEN staff_id = 16 THEN 16
WHEN staff_id = 17 THEN 17
WHEN staff_id = 18 THEN 18
WHEN staff_id = 19 THEN 19
WHEN staff_id = 20 THEN 20
END
WHERE staff_id IN (4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);

select * from rota_mgt;

-- add activity data 

INSERT INTO activity (activity_id, activity, date, staff_id, resident_id) VALUES
(1, 'Morning Exercise', '2024-08-12', 1, 1),
(2, 'Art Class', '2024-08-12', 2, 2),
(3, 'Music Therapy', '2024-08-12', 3, 3),
(4, 'Music Therapy', '2024-01-12', 4, 4),
(5, 'Art Class', '2024-01-14', 5, 5),
(6, 'Morning Exercise', '2024-01-17', 6, 6),
(7, 'Reading Session', '2024-01-20', 7, 7),
(8, 'Board Games', '2024-01-23', 8, 8),
(9, 'Music Therapy', '2024-01-25', 9, 9),
(10, 'Art Class', '2024-01-28', 10, 10),
(11, 'Morning Exercise', '2024-01-31', 11, 11),
(12, 'Reading Session', '2024-02-02', 12, 12),
(13, 'Morning Exercise', '2024-01-05', 1, 1),
(14, 'Reading Session', '2024-01-07', 2, 2),
(15, 'Board Games', '2024-01-10', 3, 3),
(16, 'Board Games', '2024-02-05', 1, 1),
(17, 'Art Class', '2024-03-30', 10, 10);


-- add medication_mgt data

INSERT INTO medication_mgt (medication_id, resident_id, medication, dosage, administration_time, dispensed_by) VALUES
(1, 1, 'Aspirin', '100mg', '08:00', 'Alice Brown'),
(2, 2, 'Lisinopril', '10mg', '08:00', 'Bob Taylor'),
(3, 3, 'Metformin', '500mg', '08:00', 'Eve Wilson'),
(4, 2, 'Lipitor', '20mg', '21:00', 'Emily Davis'),
(5, 3, 'Metformin', '500mg', '08:00', 'Robert Johnson'),
(6, 3, 'Metformin', '500mg', '20:00', 'Michael Brown'),
(7, 4, 'Lisinopril', '10mg', '07:00', 'Sarah White'),
(8, 4, 'Lisinopril', '10mg', '19:00', 'Laura Wilson'),
(9, 5, 'Simvastatin', '40mg', '09:00', 'David Black'),
(10, 5, 'Simvastatin', '40mg', '21:00', 'Emily Davis'),
(11, 6, 'Warfarin', '5mg', '08:00', 'Robert Johnson'),
(12, 6, 'Warfarin', '5mg', '20:00', 'Michael Brown'),
(13, 7, 'Amlodipine', '10mg', '07:00', 'Sarah White'),
(14, 7, 'Amlodipine', '10mg', '19:00', 'Laura Wilson'),
(15, 8, 'Omeprazole', '20mg', '08:00', 'David Black'),
(16, 8, 'Omeprazole', '20mg', '20:00', 'Emily Davis'),
(17, 9, 'Metformin', '500mg', '08:00', 'Robert Johnson'),
(18, 9, 'Metformin', '500mg', '20:00', 'Michael Brown'),
(19, 10, 'Lisinopril', '10mg', '07:00', 'Sarah White'),
(20, 10, 'Lisinopril', '10mg', '19:00', 'Laura Wilson'),
(21, 11, 'Simvastatin', '40mg', '09:00', 'David Black'),
(22, 11, 'Simvastatin', '40mg', '21:00', 'Emily Davis'),
(23, 12, 'Warfarin', '5mg', '08:00', 'Robert Johnson'),
(24, 12, 'Warfarin', '5mg', '20:00', 'Michael Brown'),
(25, 1, 'Aspirin', '100mg', '08:00', 'Sarah White'),
(26, 1, 'Aspirin', '100mg', '20:00', 'Laura Wilson'),
(27, 2, 'Lipitor', '20mg', '09:00', 'David Black'),
(28, 2, 'Lipitor', '20mg', '21:00', 'Emily Davis'),
(29, 3, 'Metformin', '500mg', '08:00', 'Robert Johnson'),
(30, 3, 'Metformin', '500mg', '20:00', 'Michael Brown'),
(31, 4, 'Lisinopril', '10mg', '07:00', 'Sarah White'),
(32, 4, 'Lisinopril', '10mg', '19:00', 'Laura Wilson'),
(33, 5, 'Simvastatin', '40mg', '09:00', 'David Black'),
(34, 5, 'Simvastatin', '40mg', '21:00', 'Emily Davis'),
(35, 6, 'Warfarin', '5mg', '08:00', 'Robert Johnson'),
(36, 6, 'Warfarin', '5mg', '20:00', 'Michael Brown'),
(37, 7, 'Amlodipine', '10mg', '07:00', 'Sarah White'),
(38, 7, 'Amlodipine', '10mg', '19:00', 'Laura Wilson'),
(39, 8, 'Omeprazole', '20mg', '08:00', 'David Black'),
(40, 8, 'Omeprazole', '20mg', '20:00', 'Emily Davis'),
(41, 9, 'Metformin', '500mg', '08:00', 'Robert Johnson'),
(42, 9, 'Metformin', '500mg', '20:00', 'Michael Brown'),
(43, 10, 'Lisinopril', '10mg', '07:00', 'Sarah White'),
(44, 10, 'Lisinopril', '10mg', '19:00', 'Laura Wilson'),
(45, 11, 'Simvastatin', '40mg', '09:00', 'David Black'),
(46, 11, 'Simvastatin', '40mg', '21:00', 'Emily Davis'),
(47, 12, 'Warfarin', '5mg', '08:00', 'Robert Johnson'),
(48, 12, 'Warfarin', '5mg', '20:00', 'Michael Brown'),
(49, 1, 'Aspirin', '100mg', '08:00', 'Sarah White'),
(50, 1, 'Aspirin', '100mg', '20:00', 'Laura Wilson'),
(51, 2, 'Lipitor', '20mg', '09:00', 'David Black'),
(52, 2, 'Lipitor', '20mg', '21:00', 'Emily Davis'),
(53, 3, 'Metformin', '500mg', '08:00', 'Robert Johnson'),
(54, 3, 'Metformin', '500mg', '20:00', 'Michael Brown'),
(55, 4, 'Lisinopril', '10mg', '07:00', 'Sarah White'),
(56, 4, 'Lisinopril', '10mg', '19:00', 'Laura Wilson'),
(57, 5, 'Simvastatin', '40mg', '09:00', 'David Black'),
(58, 5, 'Simvastatin', '40mg', '21:00', 'Emily Davis'),
(59, 6, 'Warfarin', '5mg', '08:00', 'Robert Johnson'),
(60, 6, 'Warfarin', '5mg', '20:00', 'Michael Brown'),
(61, 7, 'Amlodipine', '10mg', '07:00', 'Sarah White'),
(62, 7, 'Amlodipine', '10mg', '19:00', 'Laura Wilson'),
(63, 8, 'Omeprazole', '20mg', '08:00', 'David Black'),
(64, 8, 'Omeprazole', '20mg', '20:00', 'Emily Davis'),
(65, 9, 'Metformin', '500mg', '08:00', 'Robert Johnson'),
(66, 9, 'Metformin', '500mg', '20:00', 'Michael Brown'),
(67, 10, 'Lisinopril', '10mg', '07:00', 'Sarah White'),
(68, 10, 'Lisinopril', '10mg', '19:00', 'Laura Wilson'),
(69, 11, 'Simvastatin', '40mg', '09:00', 'David Black'),
(70, 11, 'Simvastatin', '40mg', '21:00', 'Emily Davis'),
(71, 12, 'Warfarin', '5mg', '08:00', 'Robert Johnson'),
(72, 12, 'Warfarin', '5mg', '20:00', 'Michael Brown');

-- add health_condition data

INSERT INTO health_condition (condition_id, condition_name, description, resident_id) VALUES
(1, 'Hypertension', 'High blood pressure', 1),
(2, 'Diabetes', 'Type 2 diabetes', 2),
(3, 'Arthritis', 'Joint pain and stiffness', 3),
(4, 'Osteoporosis', 'Bone thinning disease', 4),
(5, 'Arthritis', 'Inflammation of the joints', 5),
(6, 'Heart Disease', 'Condition affecting heart function', 6),
(7, 'Parkinson’s Disease', 'Neurodegenerative disorder', 7),
(8, 'Stroke', 'Cerebrovascular accident', 8),
(9, 'Chronic Kidney Disease', 'Progressive loss of kidney function', 9),
(10, 'Chronic Obstructive Pulmonary Disease (COPD)', 'Lung condition causing breathing problems', 10),
(11, 'Alzheimer’s Disease', 'Progressive brain disorder', 11),
(12, 'Epilepsy', 'Neurological disorder causing seizures', 12),
(13, 'Asthma', 'Chronic respiratory condition', 5);


-- add incident_mgt data

INSERT INTO incident_mgt (incident_id, resident_id, staff_id, incident_date, incident_type, description, action_taken) VALUES
(1, 1, 1, '2024-08-10', 'Fall', 'Resident fell in the bathroom', 'Medical assessment and monitoring'),
(2, 2, 2, '2024-08-11', 'Aggression', 'Resident became agitated during meal time', 'Calm the resident and notify family'),
(3, 3, 3, '2024-08-12', 'Medication error', 'Resident received incorrect dosage', 'Notify doctor and monitor resident'),
(4, 2, 4, '2024-01-20', 'Fall', 'Resident slipped while getting out of bed', 'Medical assessment and adjust fall prevention plan'),
(5, 3, 5, '2024-02-01', 'Aggression', 'Resident became aggressive during a group activity', 'Isolate resident and inform family'),
(6, 3, 6, '2024-02-05', 'Medication error', 'Resident missed a dose of medication', 'Re-administer medication and monitor for effects'),
(7, 4, 7, '2024-02-10', 'Fall', 'Resident tripped over a loose rug', 'Medical evaluation and secure the area'),
(8, 4, 8, '2024-02-15', 'Aggression', 'Resident was hostile during a visit', 'Calm the resident and notify management'),
(9, 5, 9, '2024-03-01', 'Medication error', 'Resident received incorrect medication', 'Contact doctor and adjust medication'),
(10, 5, 10, '2024-03-05', 'Fall', 'Resident fell while walking in the garden', 'Medical check-up and update fall risk assessment'),
(11, 6, 11, '2024-03-10', 'Aggression', 'Resident shouted at staff during mealtime', 'De-escalate situation and review behavior plan'),
(12, 6, 12, '2024-03-15', 'Medication error', 'Resident received expired medication', 'Dispose of expired medication and notify pharmacy'),
(13, 7, 1, '2024-01-08', 'Fall', 'Resident fell from a wheelchair', 'Immediate medical assessment and review wheelchair safety'),
(14, 7, 2, '2024-01-25', 'Aggression', 'Resident was disruptive during a social event', 'Handle situation calmly and report incident'),
(15, 8, 3, '2024-02-01', 'Medication error', 'Resident was given a wrong prescription', 'Contact doctor and monitor resident'),
(16, 8, 4, '2024-02-15', 'Fall', 'Resident fell in the dining area', 'Medical assistance and secure dining area'),
(17, 9, 5, '2024-03-01', 'Aggression', 'Resident refused to participate in activities', 'Encourage participation and document behavior'),
(18, 9, 6, '2024-03-10', 'Medication error', 'Resident received medication at incorrect time', 'Adjust medication schedule and monitor'),
(19, 10, 7, '2024-01-20', 'Fall', 'Resident fell while using the bathroom', 'Medical evaluation and bathroom safety review'),
(20, 10, 8, '2024-01-30', 'Aggression', 'Resident was verbally aggressive towards staff', 'De-escalate situation and review care plan'),
(21, 11, 9, '2024-02-10', 'Medication error', 'Resident’s medication was lost', 'Replace medication and track inventory'),
(22, 11, 10, '2024-02-20', 'Fall', 'Resident fell while walking in the hallway', 'Medical check-up and update walking aids'),
(23, 12, 11, '2024-03-05', 'Aggression', 'Resident displayed aggressive behavior during group session', 'Handle situation and inform supervisor'),
(24, 12, 12, '2024-03-15', 'Medication error', 'Resident’s medication was administered incorrectly', 'Notify doctor and correct dosage');


-- Questions
-- Identify residents with specific health conditions
-- Find residents with a monthly allowance above a certain threshold
-- List all activities for a specific resident
-- Find the most frequent activities
-- List all staff members and their roles
-- Find staff members who have not completed their training
-- Calculate total hours worked by each staff member within a time frame
-- Find residents who are on a specific medication
-- List all incidents that occurred in the first quarter of 2024
-- Find out which staff member is most frequently involved in incidents
-- Identify any trends or patterns in the incidents
-- Find the average monthly allowance for residents with a specific condition