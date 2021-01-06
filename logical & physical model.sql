CREATE TABLE administrative_staff (
 id INT NOT NULL,
 name CHAR(50),
 place VARCHAR(30),
 emplyment_id INT
);

ALTER TABLE administrative_staff ADD CONSTRAINT PK_administrative_staff PRIMARY KEY (id);


CREATE TABLE appointment (
 appointment_id INT NOT NULL,
 date DATE NOT NULL,
 start_time TIME(10),
 end_time TIME(10) NOT NULL,
 instructor VARCHAR(30),
 room VARCHAR(5),
 emplyment_id INT NOT NULL
);

ALTER TABLE appointment ADD CONSTRAINT PK_appointment PRIMARY KEY (appointment_id);


CREATE TABLE instrument (
 instrument_id INT NOT NULL,
 instrument_name CHAR(50),
 instrument_price VARCHAR(5),
 brands CHAR(50),
 monthly_rent VARCHAR(200) NOT NULL,
 rented  VARCHAR(10) DEFAULT boolean NOT NULL
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);


CREATE TABLE student (
 id INT NOT NULL,
 name CHAR(50),
 personal_number  VARCHAR(12),
 age VARCHAR(2),
 country VARCHAR(20),
 city VARCHAR(20),
 zip_code VARCHAR(5),
 street_name CHAR(50),
 street_number VARCHAR(3)
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE application (
 app_id INT NOT NULL,
 app_number VARCHAR(10),
 student_id INT NOT NULL,
 skill_level CHAR(10),
 result VARCHAR(20)
);

ALTER TABLE application ADD CONSTRAINT PK_application PRIMARY KEY (app_id);


CREATE TABLE booking (
 booking_id INT NOT NULL,
 date VARCHAR(6),
 time TIMESTAMP(6),
 emplyment_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE booking ADD CONSTRAINT PK_booking PRIMARY KEY (booking_id);


CREATE TABLE contact_details (
 contact_id INT NOT NULL,
 mobile_number VARCHAR(10),
 email VARCHAR(10),
 app_id INT NOT NULL
);

ALTER TABLE contact_details ADD CONSTRAINT PK_contact_details PRIMARY KEY (contact_id);


CREATE TABLE parent_contact_details (
 parent_contact_id INT NOT NULL,
 parent_name VARCHAR(40),
 phone  VARCHAR(10),
 mobile_number VARCHAR(10),
 email  VARCHAR(80),
 app_id INT NOT NULL
);

ALTER TABLE parent_contact_details ADD CONSTRAINT PK_parent_contact_details PRIMARY KEY (parent_contact_id);


CREATE TABLE rented_instrument (
 rental_instrument_id INT NOT NULL,
 student_id INT NOT NULL,
 instrument_id INT NOT NULL,
 rental_start CHAR(10),
 rental_end CHAR(10)
);

ALTER TABLE rented_instrument ADD CONSTRAINT PK_rented_instrument PRIMARY KEY (rental_instrument_id);


CREATE TABLE room (
 room_id INT NOT NULL,
 available_place CHAR(10),
 number_of_participant CHAR(10),
 student_id INT NOT NULL
);

ALTER TABLE room ADD CONSTRAINT PK_room PRIMARY KEY (room_id);


CREATE TABLE school (
 school_id  INT NOT NULL,
 name VARCHAR(40),
 country VARCHAR(20),
 city VARCHAR(20),
 zip_code VARCHAR(5),
 street_name CHAR(50),
 street_number VARCHAR(3),
 student_id INT NOT NULL
);

ALTER TABLE school ADD CONSTRAINT PK_school PRIMARY KEY (school_id );


CREATE TABLE sibling (
 sibling_id INT NOT NULL,
 name CHAR(50),
 personal_number VARCHAR(12),
 age VARCHAR(2),
 student_id INT NOT NULL
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (sibling_id);


CREATE TABLE sibling_discount (
 sibling_discount_id INT NOT NULL,
 discount_value VARCHAR(10)
);

ALTER TABLE sibling_discount ADD CONSTRAINT PK_sibling_discount PRIMARY KEY (sibling_discount_id);


CREATE TABLE instructor (
 id INT NOT NULL,
 name CHAR(50),
 personal_number  VARCHAR(12),
 age VARCHAR(2),
 employment_id CHAR(50),
 country VARCHAR(20),
 city VARCHAR(20),
 zip_code VARCHAR(5),
 street_name CHAR(50),
 street_number VARCHAR(3),
 school_id  INT NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE oppening_hours (
 day CHAR(10) NOT NULL,
 opens_at CHAR(10),
 closes_at CHAR(10),
 school_id  INT NOT NULL
);

ALTER TABLE oppening_hours ADD CONSTRAINT PK_oppening_hours PRIMARY KEY (day);


CREATE TABLE price (
 price_id INT NOT NULL,
 price_by_type_of_lesson DOUBLE PRECISION,
 price_per_lesson DOUBLE PRECISION,
 number_of_lesson INT,
 level_price DOUBLE PRECISION,
 weekend_price DOUBLE PRECISION,
 sibling_discount_id INT
);

ALTER TABLE price ADD CONSTRAINT PK_price PRIMARY KEY (price_id);


CREATE TABLE scheduled_lesson (
 lesson_id INT NOT NULL,
 room VARCHAR(10),
 start CHAR(10),
 end CHAR(10),
 date DATE,
 lesson_type VARCHAR(10),
 min_participants VARCHAR(10),
 max_pariticipants VARCHAR(10),
 instructor_id INT NOT NULL
);

ALTER TABLE scheduled_lesson ADD CONSTRAINT PK_scheduled_lesson PRIMARY KEY (lesson_id);


CREATE TABLE student_scheduled_lesson (
 lesson_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE student_scheduled_lesson ADD CONSTRAINT PK_student_scheduled_lesson PRIMARY KEY (lesson_id,student_id);


CREATE TABLE audition (
 audition_id INT NOT NULL,
 level VARCHAR(12),
 date VARCHAR(6),
 inspector CHAR(50),
 result VARCHAR(30),
 student_id INT NOT NULL,
 instrucor_id INT NOT NULL
);

ALTER TABLE audition ADD CONSTRAINT PK_audition PRIMARY KEY (audition_id);


CREATE TABLE ensembles (
 ensembles_id INT NOT NULL,
 genre VARCHAR(20),
 number_of_students INT,
 available_places INT,
 level VARCHAR(12),
 time TIME(6),
 instructor_id INT,
 lesson_id INT NOT NULL
);

ALTER TABLE ensembles ADD CONSTRAINT PK_ensembles PRIMARY KEY (ensembles_id);


CREATE TABLE group_lesson (
 group_lesson_id INT NOT NULL,
 number_of_places VARCHAR(10),
 level VARCHAR(12),
 instrument CHAR(50),
 time TIME(6),
 lesson_date DATE,
 instructor_id INT,
 lesson_id INT NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (group_lesson_id);


CREATE TABLE individual_lesson (
 individual_lesson_id INT NOT NULL,
 level VARCHAR(12) NOT NULL,
 instrument CHAR(50),
 appointment_id INT,
 starts TIME(6),
 ends TIME(6),
 lesson_date DATE,
 room VARCHAR(5),
 instructor_id INT,
 price_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (individual_lesson_id);


CREATE TABLE payment (
 payment_id INT NOT NULL,
 total_price VARCHAR(10),
 date VARCHAR(6),
 student_id INT NOT NULL,
 price_id INT,
 rental_instrument_id INT,
 instructor_id INT
);

ALTER TABLE payment ADD CONSTRAINT PK_payment PRIMARY KEY (payment_id);


CREATE TABLE receipt (
 payment_id INT NOT NULL
);

ALTER TABLE receipt ADD CONSTRAINT PK_receipt PRIMARY KEY (payment_id);


ALTER TABLE appointment ADD CONSTRAINT FK_appointment_0 FOREIGN KEY (emplyment_id) REFERENCES administrative_staff (id);


ALTER TABLE application ADD CONSTRAINT FK_application_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE booking ADD CONSTRAINT FK_booking_0 FOREIGN KEY (emplyment_id) REFERENCES administrative_staff (id);
ALTER TABLE booking ADD CONSTRAINT FK_booking_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE contact_details ADD CONSTRAINT FK_contact_details_0 FOREIGN KEY (app_id) REFERENCES application (app_id);


ALTER TABLE parent_contact_details ADD CONSTRAINT FK_parent_contact_details_0 FOREIGN KEY (app_id) REFERENCES application (app_id);


ALTER TABLE rented_instrument ADD CONSTRAINT FK_rented_instrument_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE rented_instrument ADD CONSTRAINT FK_rented_instrument_1 FOREIGN KEY (instrument_id) REFERENCES instrument (instrument_id);


ALTER TABLE room ADD CONSTRAINT FK_room_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE school ADD CONSTRAINT FK_school_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE sibling ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE sibling_discount ADD CONSTRAINT FK_sibling_discount_0 FOREIGN KEY (sibling_discount_id) REFERENCES sibling (sibling_id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (school_id ) REFERENCES school (school_id );


ALTER TABLE oppening_hours ADD CONSTRAINT FK_oppening_hours_0 FOREIGN KEY (school_id ) REFERENCES school (school_id );


ALTER TABLE price ADD CONSTRAINT FK_price_0 FOREIGN KEY (sibling_discount_id) REFERENCES sibling_discount (sibling_discount_id);


ALTER TABLE scheduled_lesson ADD CONSTRAINT FK_scheduled_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE student_scheduled_lesson ADD CONSTRAINT FK_student_scheduled_lesson_0 FOREIGN KEY (lesson_id) REFERENCES scheduled_lesson (lesson_id);
ALTER TABLE student_scheduled_lesson ADD CONSTRAINT FK_student_scheduled_lesson_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE audition ADD CONSTRAINT FK_audition_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE audition ADD CONSTRAINT FK_audition_1 FOREIGN KEY (instrucor_id) REFERENCES instructor (id);


ALTER TABLE ensembles ADD CONSTRAINT FK_ensembles_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE ensembles ADD CONSTRAINT FK_ensembles_1 FOREIGN KEY (lesson_id) REFERENCES scheduled_lesson (lesson_id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_1 FOREIGN KEY (lesson_id) REFERENCES scheduled_lesson (lesson_id);


ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (appointment_id) REFERENCES appointment (appointment_id);
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_2 FOREIGN KEY (price_id) REFERENCES price (price_id);
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_3 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE payment ADD CONSTRAINT FK_payment_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE payment ADD CONSTRAINT FK_payment_1 FOREIGN KEY (price_id) REFERENCES price (price_id);
ALTER TABLE payment ADD CONSTRAINT FK_payment_2 FOREIGN KEY (rental_instrument_id) REFERENCES rented_instrument (rental_instrument_id);
ALTER TABLE payment ADD CONSTRAINT FK_payment_3 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE receipt ADD CONSTRAINT FK_receipt_0 FOREIGN KEY (payment_id) REFERENCES payment (payment_id);


