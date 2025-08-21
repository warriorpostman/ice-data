
drop table ice_data.apprehensions;

CREATE TABLE ice_data.apprehensions (
    arrest_id SERIAL PRIMARY KEY,
    Apprehension_Date            TIMESTAMP,             -- "08/07/2024 9:43"
    Apprehension_State           VARCHAR(50),           -- e.g., "VIRGINIA"
    Apprehension_County          VARCHAR(100),          -- (empty in sample, keep nullable)
    Apprehension_AOR             VARCHAR(100),          -- "Washington Area of Responsibility"
    Final_Program                VARCHAR(100),          -- "ERO Criminal Alien Program"
    Final_Program_Group          VARCHAR(50),           -- "ICE"
    Apprehension_Method          VARCHAR(100),          -- "Non-Custodial Arrest"
    Apprehension_Criminality     VARCHAR(100),          -- "1 Convicted Criminal"
    Case_Status                  VARCHAR(100),          -- "8-Excluded/Removed - Inadmissibility"
    Case_Category                VARCHAR(100),          -- "[16] Reinstated Final Order"
    Departed_Date                DATE,                  -- "08/19/2024"
    Departure_Country            VARCHAR(100),          -- "HONDURAS"
    Final_Order_Yes_No           BOOLEAN,               -- "YES"
    Final_Order_Date             DATE,                  -- "10/18/1999"
    Birth_Date                   TEXT,                  -- redacted field (b)(6), (b)(7)(C)
    Birth_Year                   SMALLINT,              -- "1981"
    Citizenship_Country          VARCHAR(100),          -- "HONDURAS"
    Gender                       VARCHAR(10),           -- "Male"
    Apprehension_Site_Landmark   VARCHAR(255),          -- "HBG GENERAL AREA, NON-SPECIFIC"
    Alien_File_Number            VARCHAR(50),                  -- redacted
    EID_Case_ID                  VARCHAR(50),                  -- redacted
    EID_Subject_ID               VARCHAR(50),                  -- redacted
    Unique_Identifier            VARCHAR(50)                   -- hashed or tokenized value
);

\COPY ice_data.apprehensions(
    Apprehension_Date, \
    Apprehension_State, \
    Apprehension_County, \
    Apprehension_AOR, \
    Final_Program, \
    Final_Program_Group, \
    Apprehension_Method, \
    Apprehension_Criminality, \
    Case_Status, \
    Case_Category, \
    Departed_Date, \
    Departure_Country, \
    Final_Order_Yes_No, \
    Final_Order_Date, \
    Birth_Date, \
    Birth_Year, \
    Citizenship_Country, \
    Gender, \
    Apprehension_Site_Landmark, \
    Alien_File_Number, \
    EID_Case_ID, \
    EID_Subject_ID, \
    Unique_Identifier
)
FROM '/home/rustamkasad/Downloads/2025-ICLI-00019_2024-ICFO-39357_ERO\ Admin\ Arrests_raw.csv'
WITH (
  FORMAT csv,
  HEADER
  DELIMITER ','
  NULL ''
);

-- Apprehension_State 
-- Apprehension_County
-- Apprehension_AOR
-- Final_Program
-- Final_Program_Group
-- Apprehension_Method
-- Apprehension_Criminality
-- Case_Status
-- Case_Category
-- Departed_Date
-- Departure_Country
-- Final_Order_Yes_No
-- Final_Order_Date
-- Birth_Date
-- Birth_Year
-- Citizenship_Country
-- Gender
-- Apprehension_Site_Landmark
-- Alien_File_Number
-- EID_Case_ID
-- EID_Subject_ID
-- Unique_Identifier
