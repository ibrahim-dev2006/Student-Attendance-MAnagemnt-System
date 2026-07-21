-- =====================================
-- 1. DATABASE
-- =====================================

-- =====================================
-- 2. TABLES
-- =====================================

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    gender VARCHAR(10),
    department VARCHAR(50),
    sa_status VARCHAR(5) DEFAULT 'OK'
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(100),
    specialization VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

CREATE TABLE Enrollment (
    enroll_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    attendance_date DATE,
    status VARCHAR(10)
);

-- =====================================
-- 3. TEACHERS
-- =====================================
INSERT INTO Teachers VALUES
(1, 'Dr. Hassan Raza', 'Artificial Intelligence'),
(2, 'Ms. Ayesha Malik', 'Software Engineering'),
(3, 'Mr. Bilal Ahmed', 'Data Science'),
(4, 'Dr. Nimra Shah', 'Cyber Security');

-- =====================================
-- 4. COURSES
-- =====================================
INSERT INTO Courses VALUES
(101, 'Machine Learning', 1),
(102, 'Software Design', 2),
(103, 'Data Analytics', 3),
(104, 'Network Security', 4);

-- =====================================
-- 5. STUDENTS (100 RECORDS)
-- =====================================
INSERT INTO Students (student_id, student_name, gender, department) VALUES
(1, 'Ali Hamza', 'Male', 'CS'),
(2, 'Ayesha Khan', 'Female', 'IT'),
(3, 'Usman Tariq', 'Male', 'SE'),
(4, 'Fatima Noor', 'Female', 'AI'),
(5, 'Muhammad Bilal', 'Male', 'CS'),
(6, 'Hina Ahmed', 'Female', 'IT'),
(7, 'Zain Ali', 'Male', 'SE'),
(8, 'Sana Malik', 'Female', 'AI'),
(9, 'Ahmed Raza', 'Male', 'CS'),
(10, 'Laiba Iqbal', 'Female', 'IT'),

(11, 'Hamza Siddiqui', 'Male', 'SE'),
(12, 'Mariam Khan', 'Female', 'AI'),
(13, 'Abdullah Jutt', 'Male', 'CS'),
(14, 'Areeba Shah', 'Female', 'IT'),
(15, 'Saad Ali', 'Male', 'SE'),
(16, 'Eman Fatima', 'Female', 'AI'),
(17, 'Omar Farooq', 'Male', 'CS'),
(18, 'Noor Fatima', 'Female', 'IT'),
(19, 'Talha Amin', 'Male', 'SE'),
(20, 'Zoya Khan', 'Female', 'AI'),

(21, 'Hassan Tariq', 'Male', 'CS'),
(22, 'Iqra Naveed', 'Female', 'IT'),
(23, 'Fahad Aziz', 'Male', 'SE'),
(24, 'Maryam Noor', 'Female', 'AI'),
(25, 'Daniyal Ali', 'Male', 'CS'),
(26, 'Hafsa Riaz', 'Female', 'IT'),
(27, 'Shayan Malik', 'Male', 'SE'),
(28, 'Komal Aslam', 'Female', 'AI'),
(29, 'Waqas Ahmed', 'Male', 'CS'),
(30, 'Rabia Khan', 'Female', 'IT'),

(31, 'Saif Ullah', 'Male', 'SE'),
(32, 'Alina Shah', 'Female', 'AI'),
(33, 'Faisal Qureshi', 'Male', 'CS'),
(34, 'Sadia Noor', 'Female', 'IT'),
(35, 'Imran Ali', 'Male', 'SE'),
(36, 'Anum Zafar', 'Female', 'AI'),
(37, 'Noman Haider', 'Male', 'CS'),
(38, 'Iqra Bano', 'Female', 'IT'),
(39, 'Arslan Khan', 'Male', 'SE'),
(40, 'Mahnoor Fatima', 'Female', 'AI'),

(41, 'Bilal Shah', 'Male', 'CS'),
(42, 'Hira Asif', 'Female', 'IT'),
(43, 'Ali Raza', 'Male', 'SE'),
(44, 'Sumbul Khan', 'Female', 'AI'),
(45, 'Zeeshan Ali', 'Male', 'CS'),
(46, 'Aiman Tariq', 'Female', 'IT'),
(47, 'Mudassar Hussain', 'Male', 'SE'),
(48, 'Sahar Malik', 'Female', 'AI'),
(49, 'Kashif Riaz', 'Male', 'CS'),
(50, 'Amna Farooq', 'Female', 'IT'),

(51, 'Usman Ghani', 'Male', 'SE'),
(52, 'Laiba Hassan', 'Female', 'AI'),
(53, 'Rizwan Ahmed', 'Male', 'CS'),
(54, 'Sana Javed', 'Female', 'IT'),
(55, 'Farhan Ali', 'Male', 'SE'),
(56, 'Ayesha Zain', 'Female', 'AI'),
(57, 'Shahzaib Khan', 'Male', 'CS'),
(58, 'Noor Ul Ain', 'Female', 'IT'),
(59, 'Hamza Qadir', 'Male', 'SE'),
(60, 'Hania Amir', 'Female', 'AI'),

(61, 'Saad Rauf', 'Male', 'CS'),
(62, 'Iqra Saeed', 'Female', 'IT'),
(63, 'Ali Shan', 'Male', 'SE'),
(64, 'Areej Fatima', 'Female', 'AI'),
(65, 'Zubair Ahmed', 'Male', 'CS'),
(66, 'Misha Khan', 'Female', 'IT'),
(67, 'Usama Khalid', 'Male', 'SE'),
(68, 'Hina Raza', 'Female', 'AI'),
(69, 'Rameez Raja', 'Male', 'CS'),
(70, 'Maria Noor', 'Female', 'IT'),

(71, 'Bilal Javed', 'Male', 'SE'),
(72, 'Esha Khan', 'Female', 'AI'),
(73, 'Hassan Ali', 'Male', 'CS'),
(74, 'Sana Akram', 'Female', 'IT'),
(75, 'Danish Raza', 'Male', 'SE'),
(76, 'Aiman Ali', 'Female', 'AI'),
(77, 'Nabeel Khan', 'Male', 'CS'),
(78, 'Komal Riaz', 'Female', 'IT'),
(79, 'Faraz Ahmed', 'Male', 'SE'),
(80, 'Zainab Noor', 'Female', 'AI'),

(81, 'Saqlain Ali', 'Male', 'CS'),
(82, 'Laiba Asghar', 'Female', 'IT'),
(83, 'Arham Khan', 'Male', 'SE'),
(84, 'Hira Fatima', 'Female', 'AI'),
(85, 'Shahmeer Ali', 'Male', 'CS'),
(86, 'Maryam Zain', 'Female', 'IT'),
(87, 'Talha Riaz', 'Male', 'SE'),
(88, 'Anaya Khan', 'Female', 'AI'),
(89, 'Waleed Ahmed', 'Male', 'CS'),
(90, 'Hafsa Noor', 'Female', 'IT'),

(91, 'Furqan Ali', 'Male', 'SE'),
(92, 'Iqra Ahmed', 'Female', 'AI'),
(93, 'Ahsan Raza', 'Male', 'CS'),
(94, 'Sonia Khan', 'Female', 'IT'),
(95, 'Hamza Khalid', 'Male', 'SE'),
(96, 'Alishba Noor', 'Female', 'AI'),
(97, 'Usman Shah', 'Male', 'CS'),
(98, 'Mahnoor Ali', 'Female', 'IT'),
(99, 'Saad Khan', 'Male', 'SE'),
(100, 'Ayesha Rauf', 'Female', 'AI');

-- =====================================
-- 6. ENROLLMENT
-- =====================================
INSERT INTO Enrollment (student_id, course_id)
SELECT student_id, 101 FROM Students;

INSERT INTO Enrollment (student_id, course_id)
SELECT student_id, 102 FROM Students;

INSERT INTO Enrollment (student_id, course_id)
SELECT student_id, 103 FROM Students;

INSERT INTO Enrollment (student_id, course_id)
SELECT student_id, 104 FROM Students;

-- =====================================
-- 7. SAMPLE ATTENDANCE DATA
-- =====================================
INSERT INTO Attendance (student_id, course_id, attendance_date, status)
VALUES
(1, 101, '2026-06-01', 'Present'),
(2, 101, '2026-06-01', 'Absent'),
(3, 102, '2026-06-01', 'Present'),
(4, 103, '2026-06-01', 'Present'),
(5, 104, '2026-06-01', 'Absent');

-- =====================================
-- 8. SA RULE (ABSENT > 25)
-- =====================================
UPDATE Students s
JOIN (
    SELECT student_id,
           SUM(CASE WHEN status = 'Absent' THEN 1 ELSE 0 END) AS absents
    FROM Attendance
    GROUP BY student_id
) a ON s.student_id = a.student_id
SET s.sa_status = CASE
    WHEN a.absents > 25 THEN 'SA'
    ELSE 'OK'
END;

-- =====================================
-- 9. ATTENDANCE REPORT
-- =====================================
SELECT 
    s.student_id,
    s.student_name,
    COUNT(a.attendance_id) AS total_classes,
    SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) AS presents,
    SUM(CASE WHEN a.status = 'Absent' THEN 1 ELSE 0 END) AS absents,

    ROUND(
        (SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) / COUNT(a.attendance_id)) * 100,
        2
    ) AS attendance_percentage,

    s.sa_status
FROM Students s
LEFT JOIN Attendance a ON s.student_id = a.student_id
GROUP BY s.student_id, s.student_name, s.sa_status
ORDER BY attendance_percentage DESC;