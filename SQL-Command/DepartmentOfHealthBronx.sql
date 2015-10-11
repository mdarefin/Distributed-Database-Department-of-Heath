
-- creating child table with the check constrant borough = 'Bronx'
CREATE TABLE Child
  (
    childID     INTEGER NOT NULL ,
    firstName   VARCHAR2 (50) ,
    lastName    VARCHAR2 (50) ,
    dateOfBirth DATE ,
    street      VARCHAR2 (100) ,
    city        VARCHAR2 (10) ,
    zip         VARCHAR2 (5) ,
    phone       INTEGER ,
    borough     VARCHAR2 (10) CHECK (borough = 'Bronx')
  ) ;
ALTER TABLE Child ADD CONSTRAINT Child_PK PRIMARY KEY ( childID ) ;

-- adding 
CREATE TABLE Immunization
  (
    immunizationCode INTEGER NOT NULL ,
    description      VARCHAR2 (200) ,
    Child_childID    INTEGER NOT NULL
  ) ;
ALTER TABLE Immunization ADD CONSTRAINT Immunization_PK PRIMARY KEY ( immunizationCode ) ;
ALTER TABLE Immunization ADD CONSTRAINT Immunization_Child_FK FOREIGN KEY ( Child_childID ) REFERENCES Child ( childID ) ;

CREATE TABLE Immunization_Event
  (
    childID          INTEGER NOT NULL ,
    immunizationCode INTEGER ,
    event_date           DATE NOT NULL ,
    Child_childID    INTEGER NOT NULL
  ) ;
ALTER TABLE Immunization_Event ADD CONSTRAINT Immunization_Event_PK PRIMARY KEY ( childID, event_date ) ;
ALTER TABLE Immunization_Event ADD CONSTRAINT Immunization_Event_Child_FK FOREIGN KEY ( Child_childID ) REFERENCES Child ( childID ) ;


