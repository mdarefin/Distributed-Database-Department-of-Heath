--Inserting data into child table 
INSERT INTO child (childID, firstName, lastName, dateOfBirth,street,city, zip, phone,borough)
	VALUES(101, 'Peter','Parker','1-JAN-15','161st Street','Fordham','10453',7187387189,'Bronx');
INSERT INTO child (childID, firstName, lastName, dateOfBirth,street,city, zip, phone,borough)
	VALUES(102, 'Brouce','Wayne','3-MAR-13','178st Street','Kingsbridge','10450',3475151234,'Bronx');
INSERT INTO child (childID, firstName, lastName, dateOfBirth,street,city, zip, phone,borough)
	VALUES(103, 'Jhon','Snow','12-DEC-12','222st Street','Riverdale','10459',7187387189,'Bronx');

--Insert INTO Immunization
INSERT INTO Immunization (immunizationCode, description, childID) VALUES (111, 'flue shot ', 101);
INSERT INTO Immunization (immunizationCode, description, childID) VALUES (222, 'cold fever ',102);
INSERT INTO Immunization (immunizationCode, description, childID) VALUES (333, 'bird flue ', 103);

--Inserting data into Immunization_Event
INSERT INTO Immunization_Event (childID, immunizationCode, event_date) VALUES(101, 111, '1-JAN-15');
INSERT INTO Immunization_Event (childID, immunizationCode, event_date) VALUES(102, 222, '2-JUN-15');
INSERT INTO Immunization_Event (childID, immunizationCode, event_date) VALUES(103, 111, '13-AUG-15')