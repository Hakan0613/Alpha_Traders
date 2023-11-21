DROP DATABASE IF EXISTS AlphaTrader;
-- Création de la base de données
CREATE DATABASE AlphaTrader;
GO

USE AlphaTrader;
GO

-- Création des tables de dimensions
CREATE TABLE Date (
    Date_ID INT PRIMARY KEY IDENTITY(1,1),
    Day_Hour DATETIME,
    Month INT,
    Year INT,
    Day INT,
    Day_Of_Week VARCHAR(10)
);

CREATE TABLE Country (
    Country_ID INT PRIMARY KEY IDENTITY(1,1),
    Country_Name VARCHAR(255)
);

CREATE TABLE Company (
    Company_ID INT PRIMARY KEY IDENTITY(1,1),
    Company_Name VARCHAR(255),
    Ticker VARCHAR(10),
    Sector VARCHAR(255),
    Sub_Sector VARCHAR(255),
    Description VARCHAR(255),
    Country_ID INT FOREIGN KEY REFERENCES Country(Country_ID)
);

CREATE TABLE EventType (
    Event_Type_ID INT PRIMARY KEY IDENTITY(1,1),
    Event_Type VARCHAR(255)
);

-- Création des tables de faits
CREATE TABLE Quotations (
    Opening_Date_ID INT FOREIGN KEY REFERENCES Date(Date_ID),
    Closing_Date_ID INT FOREIGN KEY REFERENCES Date(Date_ID),
    Company_ID INT FOREIGN KEY REFERENCES Company(Company_ID),
    Opening_Price FLOAT,
    Closing_Price FLOAT,
    Volume INT,
    High_Price FLOAT,
    Low_Price FLOAT,
    Dividend FLOAT,
    PRIMARY KEY (Opening_Date_ID, Closing_Date_ID, Company_ID)
);

CREATE TABLE FinancialReports (
    Company_ID INT FOREIGN KEY REFERENCES Company(Company_ID),
    Date_ID INT FOREIGN KEY REFERENCES Date(Date_ID),
    Balance_Sheet FLOAT,
    Income_Statement FLOAT,
    Cash_Flow FLOAT,
    Outstanding_Shares INT,
    PRIMARY KEY (Date_ID, Company_ID)
);

CREATE TABLE EconomicIndicators (
    Country_ID INT FOREIGN KEY REFERENCES Country(Country_ID),
    Date_ID INT FOREIGN KEY REFERENCES Date(Date_ID),
    Interest_Rate FLOAT,
    Unemployment_Rate FLOAT,
    Inflation FLOAT,
    PRIMARY KEY (Date_ID, Country_ID)
);

CREATE TABLE Events (
    Event_Type_ID INT FOREIGN KEY REFERENCES EventType(Event_Type_ID),
    Country_ID INT FOREIGN KEY REFERENCES Country(Country_ID),
    Company_ID INT FOREIGN KEY REFERENCES Company(Company_ID),
    Start_Date_ID INT FOREIGN KEY REFERENCES Date(Date_ID),
    End_Date_ID INT FOREIGN KEY REFERENCES Date(Date_ID),
    Event_Description VARCHAR(255),
    Potential_Impact VARCHAR(255),
    PRIMARY KEY (Event_Type_ID, Country_ID, Company_ID, Start_Date_ID, End_Date_ID)
);

CREATE TABLE PartnershipContracts (
    Company_ID INT FOREIGN KEY REFERENCES Company(Company_ID),
    Partner_Company_ID INT FOREIGN KEY REFERENCES Company(Company_ID),
    Start_Date_ID INT FOREIGN KEY REFERENCES Date(Date_ID),
    End_Date_ID INT FOREIGN KEY REFERENCES Date(Date_ID),
    Value FLOAT,
    PRIMARY KEY (Company_ID, Partner_Company_ID, Start_Date_ID, End_Date_ID)
);
