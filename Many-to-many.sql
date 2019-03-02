-- Многие ко многим

CREATE TABLE teacher (
	id LONG PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE subject (
	id LONG PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE sclass (
	id LONG PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(2) NOT NULL
);

CREATE TABLE teacher_subject (
	teacher_id LONG,
	subject_id LONG,
	FOREIGN KEY (teacher_id) REFERENCES teacher (id)
	FOREIGN KEY (subject_id) REFERENCES subject (id)
);

CREATE TABLE teacher_sclass (
	teacher_id LONG,
	sclass_id LONG,
	FOREIGN KEY (teacher_id) REFERENCES teacher (id)
	FOREIGN KEY (sclass_id) REFERENCES sclass (id)
);