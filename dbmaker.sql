-- COURSE'S SPECIALIZATIONS/MAJORS
CREATE TABLE IF NOT EXIST 'majors' (
'major_id' INT(11) NOT NULL,
'major_name' VARCHAR(256) NOT NULL,
'course_id' INT(11) NOT NULL,
PRIMARY KEY('major_id')
);

-- INSERT VALUES
INSERT INTO 'majors' ('major_id', 'major_name', 'course_id') VALUES
-- COLLEGE OF ARTS AND SCIENCES
-- Bachelor of Arts Major in:
(1, 'Economics', 3),
(2, 'English', 3),
(3, 'Filipino', 3),
(4, 'History', 3),
(5, 'International Studies', 3),
(6, 'Legal Management', 3),
(7, 'Political Science', 3),
(8, 'Sociology', 3),
(9, 'Tourism Management', 3),
-- Bachelor of Science Major in:
(10, 'Biology', 4),
(11, 'Library and Information Science', 4),
(12, 'Mathematics', 4),
(13, 'Psychology', 4),
(14, 'Statistics', 4),
(15, 'Hotel and Restaurant Management', 4),
-- Communication Proficiency Program for the Contact Center Industry w/ Specialty in: 
(16, 'English', 5),
(17, 'Filipino', 5),
(18, 'Fookienese', 5),
(19, 'Mandarin', 5),
(20, 'Nihongo', 5),
(21, 'Spanish', 5),

-- COLLEGE OF BUSINESS ADMINISTRATION
(22, 'Business Economics', 8),
(23, 'Business Management', 8),
(24, 'Financial Management', 8),
(25, 'Marketing Management', 8),

-- COLLEGE OF COMPUTER STUDIES AND SYSTEMS
(26, 'Digital Animation', 8),
(27, 'Game Development', 8),

-- COLLEGE OF EDUCATION
(28, 'Biological Science', 17),
(29, 'English', 17),
(30, 'English', 17),
(31, 'Mathematics', 17),
(32, 'MAPEH', 17),
(33, 'Generalist Program', 18),
(34, 'Early Childhood Education', 18);


-- COURSES PER COLLEGE
CREATE TABLE IF NOT EXIST 'courses' (
'course_id' INT(11) NOT NULL,
'course_name' VARCHAR(256) NOT NULL,
'course_shortname' VARCHAR(128),
'college_id' INT(11) NOT NULL,
PRIMARY KEY('course_id')
);

INSERT INTO 'courses' ('course_id', 'course_name', 'course_shortname', 'college_id') VALUES
-- CAS
(1, 'Bachelor of Arts in Broadcast Communication', '',1),
(2, 'Bachelor of Arts in Journalism', '',1),
(3, 'Bachelor of Arts major in', '', 1),
(4, 'Bachelor of Science major in', '', 1),
(5, 'Communication Proficiency Program for the Contact Center Industry with specialization in', 1),
-- BA
(6, 'Bachelor of Science in Accounting Technology', 'BSAcT', 2),
(7, 'Bachelor of Science in Accountancy', 'BSA', 2),
(8, 'Bachelor of Science in Business Administration', 'BSBA', 2),
(9, 'BSBA (Management) Special Degree Program', '', 2),
-- CCSS
(10, 'Associate in Computer Technology', 'BSIS', 3),
(11, 'Bachelor of Science in Computer Science', 'BSCS', 3),
(12, 'Bachelor of Science in Entertainment and Multimedia Computing', 'BSEMC', 3),
(13, 'Bachelor of Science in Information Technology', 'BSIT', 3),
(14, 'Bachelor of Science in Information System', 'BSIS', 3),
-- Dent
(15, 'Doctor of Dental Medicine', 'DMD', 4),
(16, 'Pre-Dentistry', '', 4),
-- Educ
(17, 'Bachelor of Secondary Education', 'BSEd', 5),
(18, 'Bachelor of Elementary Education', 'BEEd', 5),
(19, 'Bachelor of Science in Nutrition and Dietetics', 'BSND', 5),
(20, 'Bachelor of Science in Nutrition and Dietetics', 'BSND', 5),
(21, 'Certificate in Early Childhood Education', 'CECE', 5),
(22, 'Certificate in Professional Education', 'CPE', 5),
(23, 'Certificate in Special Education', 'CSE', 5),
-- Eng
(24, 'Bachelor of Science in Civil Engineering', 'BSCE', 6),
(25, 'Bachelor of Science in Computer Engineering', 'BSCpE', 6),
(26, 'Bachelor of Science in Electrical Engineering', 'BSEE', 6),
(27, 'Bachelor of Science in Electronics and Communications Engineering', 'BSECE', 6),
(28, 'Bachelor of Science in Mechanical Engineering', 'BSME', 6),
(29, 'Computer Technician', '', 6),
(30, 'Electronics Technician', '', 6),
-- Law
(31, 'Juris Doctor', 'JD', 7);

-- COLLEGES IN UNIVERSITY OF THE EAST | MANILA
CREATE TABLE IF NOT EXIST 'colleges' (
'college_id' INT(11) NOT NULL,
'college_name' VARCHAR(128) NOT NULL,
PRIMARY KEY('collge_id')
);

INSERT INTO 'colleges' ('college_id', 'college_name') VALUES
(1, 'College of Arts and Sciences'),
(2, 'College of Business Administration'),
(3, 'College of Computer Studies and Systems'),
(4, 'College of Dentistry'),
(5, 'College of Education'),
(6, 'College of Engineering'),
(7, 'College of Law');