# Distributed-Database-Department-of-Heath
The Department of Health in New York has four offices for processing immunization records of children. Records about immunization of children from the Bronx, Manhattan, and Queens are processed in offices in each of these boroughs; records of children from Brooklyn and Staten Island are processed in the Brooklyn office. In addition to the basic information about the children, the database includes the data for all immunizations and immunization events, including the immunization code, when it was given, and to which child. 

The relational model of the database is the following: 

            Child (childiD, firstName, lastName, dateOffiirtb, street, city, ZIP , phone, borough) 
            Immunization (immunizationCode, description) 
            Immunization_Event (chi/diD. immunizationCode. date) 
            
Each office supports the data for local children and their immunization events. In addition to all the necessary data modifications, the office daily processes several thousand requests for immunization events of a child (including immunization code and description, and date of the immunization event), given the child's ID or name and date of birth. 

The office in Brooklyn, in addition to supporting the local immunization information, produces weekly reports about the immunization events of a particular type for all children in New York. This office also maintains (updates, deletes, inserts) the data about immunizations. 

The database users in local offices can retrieve and modify all local data, but cannot access data of other offices. A group of database users in Brooklyn can retrieve data about all children and their immunization events.
