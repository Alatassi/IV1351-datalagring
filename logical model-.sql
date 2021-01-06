DROP DATABASE IF EXISTS db;
CREATE DATABASE db;
USE db;

CREATE TABLE administrative_staff (
 id INT NOT NULL,
 name CHAR(50),
 place VARCHAR(30),
 emplyment_id INT
);
INSERT INTO administrative_staff VALUES ('1', 'Adam', 'Reception', '1');
INSERT INTO administrative_staff VALUES ('2', 'Kristian', 'Reception', '2');
INSERT INTO administrative_staff VALUES ('3', 'Sara', 'Reception', '3');
INSERT INTO administrative_staff VALUES ('4', 'Ebba', 'Reception', '4');
INSERT INTO administrative_staff VALUES ('5', 'Emma', 'Reception', '5');
INSERT INTO administrative_staff VALUES ('6', 'Isak', 'Reception', '6');

ALTER TABLE administrative_staff ADD CONSTRAINT PK_administrative_staff PRIMARY KEY (id);


CREATE TABLE appointment (
 appointment_id INT NOT NULL,
 date_of_appointment DATE NOT NULL,
 start_time TIME(6),
 end_time TIME(6) NOT NULL,
 instructor VARCHAR(30),
 room VARCHAR(5),
 emplyment_id INT NOT NULL
);

INSERT INTO appointment VALUES ('1','2021-01-22','08:00','10:00','Johan','201','1');
INSERT INTO appointment VALUES ('2','2021-01-23','10:00','12:00','Johan','201','1');
INSERT INTO appointment VALUES ('3','2021-01-24','13:00','15:00','Johan','201','1');
INSERT INTO appointment VALUES ('4','2021-01-25','13:00','15:00','Johan','201','1');


ALTER TABLE appointment ADD CONSTRAINT PK_appointment PRIMARY KEY (appointment_id);


CREATE TABLE instrument (
 instrument_id INT NOT NULL,
 instrument_name CHAR(50),
 instrument_price VARCHAR(5),
 brands CHAR(50),
 monthly_rent VARCHAR(200) NOT NULL,
  rented  CHAR (20)   NOT NULL
);
INSERT INTO instrument VALUES ('1', 'Piano', '4892', 'Yamaha', '32','rented');
INSERT INTO instrument VALUES ('2', 'Guitar', '999', 'Gibson', '21','Not rented');
INSERT INTO instrument VALUES ('3', 'Violin', '3890', 'Harman', '33','rented');
INSERT INTO instrument VALUES ('4', 'Drums', '999', 'Shure', '89','Not rented');
INSERT INTO instrument VALUES ('5', 'Saxophone', '400', 'Fender', '56','rented');
INSERT INTO instrument VALUES ('6', 'Flute', '200', 'Steinway', '39','Not rented');
INSERT INTO instrument VALUES ('7', 'Cello', '1200', 'Sennheiser', '19','rented');
INSERT INTO instrument VALUES ('8', 'Clarinet', '799', 'Roland', '36','Not rented');
INSERT INTO instrument VALUES ('9', 'Trumpet', '550', 'Kawai', '49','rented');
INSERT INTO instrument VALUES ('10', 'Harp', '700', 'C.F.Martin&Company', '56','Not rented');
INSERT INTO instrument VALUES ('11', 'Rabab', '400', 'Taylor', '78','rented');
INSERT INTO instrument VALUES ('12', 'Oud', '870', 'Takamine', '50','Not rented');
INSERT INTO instrument VALUES ('13', 'Acoustic Guitar', '1800', 'Art&Lutherie', '67','rented');
INSERT INTO instrument VALUES ('14', 'Bass Guitar', '650', 'LunaGuitar', '53','Not rented');
INSERT INTO instrument VALUES ('15', 'Drums', '430', 'Ibanez', '98','rented');
INSERT INTO instrument VALUES ('16', 'Tabla', '300', 'Penkey', '64','Not rented');

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);


CREATE TABLE student (
 id INT NOT NULL,
 name CHAR(50),
 personal_number  VARCHAR(13),
 age VARCHAR(2),
 country VARCHAR(20),
 city VARCHAR(20),
 zip_code VARCHAR(5),
 street_name CHAR(50),
 street_number VARCHAR(3)
);

INSERT INTO student VALUES ("1", 'Adam','19950204-1249', '25', 'Sweden', 'Stockholm', '14224', 'visselmansgatan', '2');
INSERT INTO student VALUES ('2', 'Hanby','19970324-4124', '24', 'Sweden', 'Stockholm', '14214', 'hislamansgatan', '15');
INSERT INTO student VALUES ('3', 'Eva','19930105-2365', '27', 'Sweden', 'Stockholm', '16326', 'idsberggatan', '4');
INSERT INTO student VALUES ('4', 'Ebba','20010504-3466', '19', 'Sweden', 'Stockholm', '12315', 'hedervagen', '9');
INSERT INTO student VALUES ('5', 'Emma','19940204-6556', '26', 'Sweden', 'Stockholm', '14567', 'harmonievagen', '31');
INSERT INTO student VALUES ('6', 'Eda', '20050204-2349','15', 'Sweden', 'Stockholm', '14664', 'manrsafthamn', '6');
INSERT INTO student VALUES ('7', 'Erik','20080501-6788', '12', 'Sweden', 'Stockholm', '16446', 'bergshamn', '12');
INSERT INTO student VALUES ('8', 'Anna','19950904-9091', '25', 'Sweden', 'Stockholm', '12946', 'hamnsvagen', '3');
INSERT INTO student VALUES ('9', 'Henry','19980112-8586', '22', 'Sweden', 'Stockholm', '13935', 'irlandsgatan', '1');
INSERT INTO student VALUES ('10', 'Fredrik','20020815-4579', '18', 'Sweden', 'Stockholm', '15681', 'salugatan', '7');
INSERT INTO student VALUES ('11', 'Rebecka','20020919-7844', '18', 'Sweden', 'Stockholm', '61237', 'idmersgatan', '81');
INSERT INTO student VALUES ('12', 'Daniel', '20031022-3235', '17', 'Sweden', 'Stockholm', '12462', 'restonbacken', '39');
INSERT INTO student VALUES ('13', 'Nikolas','20061220-7657', '14', 'Sweden', 'Stockholm', '14782', 'stenbackegatan', '17');
INSERT INTO student VALUES ('14', 'Edmund', '19970217-5259', '23', 'Sweden', 'Stockholm', '12452', 'oloufvagen', '8');
INSERT INTO student VALUES ('15', 'Tobias', '20000912-6465', '20', 'Sweden', 'Stockholm', '16812', 'asfiuagatan', '22');
INSERT INTO student VALUES ('16', 'Jesper', '20060212-1787','16', 'Sweden', 'Stockholm', '13575', 'asdaivagen', '4');


ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE application (
 app_id INT NOT NULL,
 app_number VARCHAR(10),
 student_id INT NOT NULL,
 skill_level CHAR(10),
 result VARCHAR(20)
);


INSERT INTO application VALUES ('1', '1', '1', '*', 'accepted');
INSERT INTO application VALUES ('2', '2', '2', '*', 'accepted');
INSERT INTO application VALUES ('3', '3', '3', '*', 'accepted');
INSERT INTO application VALUES ('4', '4', '4', '**', 'accepted');
INSERT INTO application VALUES ('5', '5', '5', '**', 'accepted');
INSERT INTO application VALUES ('6', '6', '6', '**', 'accepted');
INSERT INTO application VALUES ('7', '7', '7', '***', 'accepted');
INSERT INTO application VALUES ('8', '8', '8', '***', 'accepted');
INSERT INTO application VALUES ('9', '9', '9', '***', 'waiting');
INSERT INTO application VALUES ('10', '10', '10', '***', 'waiting');

ALTER TABLE application ADD CONSTRAINT PK_application PRIMARY KEY (app_id);


CREATE TABLE booking (
 booking_id INT NOT NULL,
 date DATE,
 time VARCHAR(6),
 emplyment_id INT NOT NULL,
 student_id INT NOT NULL
);

INSERT INTO booking VALUES ('1', '2020-01-04', '08-10', '1', '1');
INSERT INTO booking VALUES ('2', '2020-01-04', '10-12', '1', '2');
INSERT INTO booking VALUES ('3', '2020-01-04', '13-15', '1', '3');

ALTER TABLE booking ADD CONSTRAINT PK_booking PRIMARY KEY (booking_id);


CREATE TABLE contact_details (
 contact_id INT NOT NULL,
 mobile_number VARCHAR(10),
 email VARCHAR(50),
 app_id INT NOT NULL
);


INSERT INTO contact_details VALUES ('1','0778262710','asdgrt@yahoo.com','1');
INSERT INTO contact_details VALUES ('2','0739826591','wqt@gmail.com', '2');
INSERT INTO contact_details VALUES ('3','0739016182','afpgm@hotmail.com','3');
INSERT INTO contact_details VALUES ('4','0735476839','12tqt@gmail.com','4');
INSERT INTO contact_details VALUES ('5','0735689299','qwrtw1@yahoo.com','5');
INSERT INTO contact_details VALUES ('6','0735607777','asfbm@yahoo.com','6');
INSERT INTO contact_details VALUES ('7','0739889999','qptpi@gmail.com','7');
INSERT INTO contact_details VALUES ('8','0733284141','oierh@hotmail.com','8');
INSERT INTO contact_details VALUES ('9','0733532211','aomb@hotmail.com','9');
INSERT INTO contact_details VALUES ('10','0738883232','agkmn@gmail.com','10');

ALTER TABLE contact_details ADD CONSTRAINT PK_contact_details PRIMARY KEY (contact_id);


CREATE TABLE parent_contact_details (
 parent_contact_id INT NOT NULL,
 parent_name VARCHAR (40),
 phone  VARCHAR(10),
 mobile_number VARCHAR(10),
 email  VARCHAR(80),
 app_id INT NOT NULL
);
INSERT INTO parent_contact_details VALUES ('1', 'Eva Nilsson', '0104909292', '0738909292', 'asdafno@gmail.com', '1');
INSERT INTO parent_contact_details VALUES ('2', 'Roben Emanoelsson', '0104205295', '0738211295', 'gfbfgl@hotmail.com', '2');

ALTER TABLE parent_contact_details ADD CONSTRAINT PK_parent_contact_details PRIMARY KEY (parent_contact_id);


CREATE TABLE rented_instrument (
 rental_instrument_id INT NOT NULL,
 student_id INT NOT NULL,
 instrument_id INT NOT NULL,
 rental_start DATE,
 rental_end DATE
);
INSERT INTO rented_instrument VALUE ('1','1','1','2021-01-01','2022-12-01');
INSERT INTO rented_instrument VALUE ('2','2','2','2021-01-01','2022-06-01');
INSERT INTO rented_instrument VALUE ('3','3','3','2021-06-01','2022-10-01');
INSERT INTO rented_instrument VALUE ('4','4','4','2021-08-01','2022-11-01');
INSERT INTO rented_instrument VALUE ('5','5','5','2021-09-01','2022-01-01');
INSERT INTO rented_instrument VALUE ('6','6','6','2021-10-01','2022-04-01');
INSERT INTO rented_instrument VALUE ('7','7','7','2021-11-01','2022-06-01');
INSERT INTO rented_instrument VALUE ('8','8','8','2021-12-01','2022-08-01');


ALTER TABLE rented_instrument ADD CONSTRAINT PK_rented_instrument PRIMARY KEY (rental_instrument_id);


CREATE TABLE room (
 room_id INT NOT NULL,
 available_place CHAR(10),
 number_of_participant CHAR(10),
 student_id INT NOT NULL
);
INSERT INTO room VALUES ('1', '6', '6', '1');
INSERT INTO room VALUES ('2', '6', '6', '2');
INSERT INTO room VALUES ('3', '6', '6', '3');
INSERT INTO room VALUES ('4', '6', '6', '4');
INSERT INTO room VALUES ('5', '6', '6', '5');
INSERT INTO room VALUES ('6', '6', '6', '6');
INSERT INTO room VALUES ('7', '9', '3', '7');
INSERT INTO room VALUES ('8', '9', '3', '8');
INSERT INTO room VALUES ('9', '9', '3', '9');

ALTER TABLE room ADD CONSTRAINT PK_room PRIMARY KEY (room_id);


CREATE TABLE school (
 school_id  INT NOT NULL,
 name VARCHAR(40),
 country VARCHAR(20),
 city VARCHAR(20),
 zip_code VARCHAR(5),
 street_name CHAR(50),
 street_number VARCHAR(3),
 student_id INT NOT NULL,
 opens_at CHAR(10),
 closes_at CHAR(10)

);
INSERT INTO school  VALUES ('1', 'Sound Good Music School', 'Sweden', 'Stockholm', '12594', 'Kadettgatan', '12','1', '08:00', '16:00');

ALTER TABLE school ADD CONSTRAINT PK_school PRIMARY KEY (school_id );


CREATE TABLE sibling (
 sibling_id INT NOT NULL,
 name CHAR(50),
 personal_number VARCHAR(13),
 age VARCHAR(2),
 student_id INT NOT NULL
);

INSERT INTO sibling VALUES ('1', 'Adam', '19950204-1249', '25', '1');
INSERT INTO sibling VALUES ('2', 'Hanby', '19970324-4124', '23','2');

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (sibling_id);


CREATE TABLE sibling_discount (
 sibling_discount_id INT NOT NULL,
 discount_value VARCHAR(10)
);

INSERT INTO sibling_discount VALUES ('1', '10%');
INSERT INTO sibling_discount VALUES ('2', '10%');

ALTER TABLE sibling_discount ADD CONSTRAINT PK_sibling_discount PRIMARY KEY (sibling_discount_id);


CREATE TABLE instructor (
 id INT NOT NULL,
 name CHAR(20),
 personal_number  VARCHAR(13),
 age VARCHAR(2),
 employment_id CHAR(50),
 country VARCHAR(20),
 city VARCHAR(20),
 zip_code VARCHAR(5),
 street_name CHAR(50),
 street_number VARCHAR(3),
 school_id  INT NOT NULL
);

INSERT INTO instructor VALUES ('1','Johan','610928-4829','59','1','Sweden','Stockholm','14325','arvingevagen','12','1');
INSERT INTO instructor VALUES ('2','Oluf','620221-3251','57','2','Sweden','Hotorget','12521','sveavagen','74','1');
INSERT INTO instructor VALUES ('3','Oskar','19580611-8917','59','3','Sweden','Vastertorp','19664','vastertorpsvagen','34','1');
INSERT INTO instructor VALUES ('4','Kajsa','19520814-7152','67','4','Sweden','Spanga','16964','nekvagen','14','1');
INSERT INTO instructor VALUES ('5','Ivan','19670120-0011','52','5','Sweden','Sodermalam','12091','sodermalmsvagen','8','1');
INSERT INTO instructor VALUES ('6','Ellen','19551015-2254','65','6','Sweden','Vega','18926','vegaparken','2','1');
INSERT INTO instructor VALUES ('7','Krestin','19570427-1443','63','7','Sweden','Norsborg','15281','edholmsvagen','16','1');

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE price (
 price_id INT NOT NULL,
 price_by_type_of_lesson CHAR (10),
 price_per_lesson CHAR(10),
 number_of_lesson INT,
 level_price VARCHAR (10),
 weekend_price CHAR(10),
 sibling_discount_id INT
);
INSERT INTO price  values ('1','20.0','20.0','35','20','20.00','1');
INSERT INTO price VALUES ('2', '99', '59', '20', '1', '300', '2');
INSERT INTO price (`price_id`, `price_by_type_of_lesson`, `price_per_lesson`, `number_of_lesson`, `level_price`, `weekend_price`) VALUES ('3', '99', '59', '20', '1', '350');
INSERT INTO price (`price_id`, `price_by_type_of_lesson`, `price_per_lesson`, `number_of_lesson`, `level_price`, `weekend_price`) VALUES ('4', '99', '59', '20', '1', '350');
INSERT INTO price (`price_id`, `price_by_type_of_lesson`, `price_per_lesson`, `number_of_lesson`, `level_price`, `weekend_price`) VALUES ('5', '99', '59', '20', '1', '400');
INSERT INTO price (`price_id`, `price_by_type_of_lesson`, `price_per_lesson`, `number_of_lesson`, `level_price`, `weekend_price`) VALUES ('6', '99', '59', '20', '1', '400');

ALTER TABLE price ADD CONSTRAINT PK_price PRIMARY KEY (price_id);


CREATE TABLE scheduled_lesson (
 lesson_id INT NOT NULL,
 room VARCHAR(10),
 lesson_start TIME(6),
 lesson_end TIME(6),
 lesson_date DATE,
 lesson_type VARCHAR(10),
 min_participants VARCHAR(10),
 max_pariticipants VARCHAR(10),
 instructor_id INT NOT NULL
);

INSERT INTO scheduled_lesson VALUES ('1','201','08:00','10:00','2021-01-01','Piano','4','8','1');
INSERT INTO scheduled_lesson VALUES ('2','201','10:00','12:00','2021-01-01','Guitar','6','10','2');
INSERT INTO scheduled_lesson VALUES ('3','204','13:00','15:00','2021-01-01','Cello','5','12','1');
INSERT INTO scheduled_lesson VALUES ('4','204','13:00','16:00','2021-01-01','Clarinet','4','10','2');
INSERT INTO scheduled_lesson VALUES ('5','201','13:00','16:00','2021-01-01','Violin','4','10','1');
INSERT INTO scheduled_lesson VALUES ('6','204','13:00','16:00','2021-01-01','Saxophone','4','10','2');
INSERT INTO scheduled_lesson VALUES ('7','204','13:00','16:00','2021-01-01','Cello','4','10','2');



ALTER TABLE scheduled_lesson ADD CONSTRAINT PK_scheduled_lesson PRIMARY KEY (lesson_id);


CREATE TABLE student_scheduled_lesson (
 lesson_id INT NOT NULL,
 id INT NOT NULL
);
-- INSERT INTO student_scheduled_lesson (`lesson_id`, `student_id `)VALUES ('1','2');

ALTER TABLE student_scheduled_lesson ADD CONSTRAINT PK_student_scheduled_lesson PRIMARY KEY (lesson_id,id);


CREATE TABLE audition (
 audition_id INT NOT NULL,
 level VARCHAR(12),
 date DATE,
 inspector CHAR(50),
 result VARCHAR(30),
 student_id INT NOT NULL,
 instrucor_id INT NOT NULL
);

INSERT INTO audition VALUES ('1','***','2021-01-24','Krestin','approved','8','7');
INSERT INTO audition VALUES ('2','***','2021-01-24','Krestin','waiting','9','7');
INSERT INTO audition VALUES ('3','***','2021-01-26','Krestin','approved','7','7');
INSERT INTO audition VALUES ('4','***','2021-01-26','Krestin','waiting','10','7');

ALTER TABLE audition ADD CONSTRAINT PK_audition PRIMARY KEY (audition_id);


CREATE TABLE ensembles (
 ensembles_id INT NOT NULL,
 genre VARCHAR(20),
 number_of_students INT,
 available_places INT,
 level VARCHAR(12),
 time TIME(6),
 lesson_date DATE,
 instructor_id INT,
 lesson_id INT NOT NULL
);

INSERT INTO ensembles VALUES ('1','rock','12','3','**','08:00','2021-01-04','7','1');
INSERT INTO ensembles VALUES ('2','metal','12','5','**','10:00','2021-01-06','7','2');
INSERT INTO ensembles VALUES ('3','jazz','12','9','**','13:00','2021-01-08','7','3');

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

INSERT INTO group_lesson VALUES ('1', '12', '*', 'Piano', '08:00','2021-01-01','1', '1');
INSERT INTO group_lesson VALUES ('2', '12', '**', 'Guitar', '10:00','2021-01-01','2', '2');
INSERT INTO group_lesson VALUES ('3', '12', '***', 'Cello', '13:00','2021-01-01','1', 3);
INSERT INTO group_lesson VALUES ('4', '12', '***', 'Tabla', '13:00','2021-01-01','2', 4);


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



INSERT INTO individual_lesson VALUES ('1','*','Flute','1','08:00','09:00','2021-01-11','201','1','1','1');
INSERT INTO individual_lesson VALUES ('2','*','Flute','2','09:00','10:00','2021-01-11','201','2','2','2');
INSERT INTO individual_lesson VALUES ('3','*','Cello','3','11:00','12:00','2021-01-11','201','3','3','3');
INSERT INTO individual_lesson VALUES ('4','*','Clarinet','4','13:00','14:00','2021-01-11','201','1','4','4');




ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (individual_lesson_id);


CREATE TABLE payment (
 payment_id INT NOT NULL,
 total_price VARCHAR(10),
 date DATE,
 student_id INT NOT NULL,
 price_id INT,
 rental_instrument_id INT,
 instructor_id INT
);

INSERT INTO payment VALUES ('1', '1400', '2021-01-25', '1', '1', '1', '3');
INSERT INTO payment VALUES ('2', '1400', '2021-01-25', '2', '2', '2', '5');
INSERT INTO payment VALUES ('3', '1400', '2021-01-25', '3', '3', '3', '3');
INSERT INTO payment VALUES ('4', '1800', '2021-01-25', '4', '4', '4', '4');
INSERT INTO payment VALUES ('5', '1900', '2021-01-25', '5', '5', '5', '2');
INSERT INTO payment VALUES ('6', '1900', '2021-02-25', '6', '6', '6', '1');
-- INSERT INTO payment VALUES ('7', '1200', '2020-02-25', '7', '7', '7', '1');
-- INSERT INTO payment VALUES ('8', '1200', '2020-02-25', '8', '8', '8', '4');
-- INSERT INTO payment VALUES ('9', '1200', '2020-03-25', '9', '9', '9', '1');
-- INSERT INTO payment VALUES ('10', '1200', '2020-03-25', '10', '10', '10', '1');

ALTER TABLE payment ADD CONSTRAINT PK_payment PRIMARY KEY (payment_id);


CREATE TABLE receipt (
 payment_id INT NOT NULL
 );
INSERT INTO receipt VALUES ('1');
INSERT INTO receipt VALUES ('2');
INSERT INTO receipt VALUES ('3');
INSERT INTO receipt VALUES ('4');
INSERT INTO receipt VALUES ('5');
INSERT INTO receipt VALUES ('6');

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


ALTER TABLE price ADD CONSTRAINT FK_price_0 FOREIGN KEY (sibling_discount_id) REFERENCES sibling_discount (sibling_discount_id);


ALTER TABLE scheduled_lesson ADD CONSTRAINT FK_scheduled_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE student_scheduled_lesson ADD CONSTRAINT FK_student_scheduled_lesson_0 FOREIGN KEY (lesson_id) REFERENCES scheduled_lesson (lesson_id);
ALTER TABLE student_scheduled_lesson ADD CONSTRAINT FK_student_scheduled_lesson_1 FOREIGN KEY (id) REFERENCES student (id);


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


