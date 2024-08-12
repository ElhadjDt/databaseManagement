# Academic Database Management System

## Overview

This project provides a comprehensive database schema and SQL queries designed for managing academic information. The schema includes tables for time slots, buildings, faculties, departments, students, courses, sections, instructors, and their relationships. Please note that the code and SQL queries are written in French.

## Features

- **Time Slot Management**: Insert and manage time slots for classes.
- **Building Information**: Manage building details where classes and departments are located.
- **Faculty and Department Management**: Insert and manage faculty and department data.
- **Student Records**: Insert and manage student information.
- **Course and Section Management**: Manage courses and their respective sections.
- **Instructor Data**: Insert and manage instructor details and their employment information.
- **Course Enrollment**: Track which students are enrolled in which courses and sections.

## Database Schema

The database includes the following tables:

- **`trame`**: Time slots for classes.
- **`edifice`**: Buildings where classes are held.
- **`faculte`**: Faculties within the institution.
- **`departement`**: Departments within each faculty.
- **`etudiant`**: Student information.
- **`cours`**: Courses offered.
- **`section`**: Sections of each course.
- **`instructeur`**: Instructor details.
- **`info_instructeur`**: Additional information about instructors.
- **`enseigne`**: Records of which instructors teach which sections.
- **`prend`**: Records of student enrollments in sections.

## SQL Queries

Below are examples of the SQL queries provided in this project. The queries are written in French.

### Example Queries

```sql
-- Insert the 25 time slots
-- Monday
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('A', 'Lu', '08:30', '09:45');
INSERT INTO trame (id_trame, jour, heure_debut, heure_fin) VALUES ('B', 'Lu', '10:00', '11:15');
-- Additional time slots follow...

-- Insert building information
INSERT INTO edifice (code, nom) 
VALUES ('MRR', 'Pavillon Rémi-Rossignol'),
       ('MAR', 'Pavillon des arts et beaux arts'),
       ('MJC', 'Pavillon Jean-Cadieux');
-- Additional building records follow...
