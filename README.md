# 🎓 Student Attendance Management & Short-Attendance (SA) Tracking System

Developed for the **Database Systems Lab (CC2141L)** at the **University of Management and Technology (UMT), Lahore**, this project provides a fully normalized, relational MySQL database engine designed to digitalize daily academic attendance and automate institutional policy enforcement[cite: 1].

---

## 📌 Problem & Purpose

Traditional academic attendance tracking relies on manual paper rosters and delayed end-of-semester calculations[cite: 1]. This database replaces administrative bottlenecks with real-time query executions, serving as a central repository for student profiles, faculty assignments, course enrollments, and transactional attendance logs while dynamically flagging students who breach short-attendance thresholds[cite: 1].

---

## 🏛️ Database Architecture & Normalization

The system strictly adheres to **Third Normal Form (3NF)** standards to eliminate data redundancies and maintain referential integrity across 5 core entities[cite: 1]:

* **`Students`**: Stores profile information, department classifications, and derived `sa_status` flags[cite: 1].
* **`Teachers`**: Tracks instructor details and academic specializations[cite: 1].
* **`Courses`**: Maps subject catalogs to assigned faculty members[cite: 1].
* **`Enrollment`**: Resolves the many-to-many relationship between Students and Courses[cite: 1].
* **`Attendance`**: Transactional log capturing daily student presence/absence per course[cite: 1].

---

## ⚡ Key System Features

* **Algorithmic Short-Attendance (SA) Rules:** Automatically identifies and updates `sa_status` to `'SA'` for any student accumulating more than 25 total absences[cite: 1].
* **Multi-Table Analytical Reporting:** Features aggregated multi-join queries that calculate real-time attendance percentages rounded to 2 decimal places[cite: 1].
* **Advanced Database Objects:** 
  * **Views:** Built-in `v_short_attendance_roster` for instant access to flagged students[cite: 1].
  * **Stored Procedures:** `sp_GetDepartmentAttendance` to generate automated department-level reports[cite: 1].
  * **Indexes:** Performance-optimized composite index (`idx_attendance_search`) over query-heavy search columns[cite: 1].

---

## 🛠️ Stack & Implementation

* **Database Engine:** MySQL Community Server v8.0[cite: 1]
* **Design & Modeling:** MySQL Workbench[cite: 1]
* **SQL Constructs Used:** Outer/Inner Joins, `GROUP BY`, `HAVING`, `CASE` statements, DDL/DML, Foreign Key Cascade Constraints[cite: 1].
