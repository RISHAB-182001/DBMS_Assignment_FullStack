DROP DATABASE Hospital_Bill_System;
CREATE DATABASE Hospital_Bill_System;
\c hospital_bill_system;
CREATE TABLE Administrator
(
  A_ID INT NOT NULL,
  A_Name VARCHAR NOT NULL,
  PRIMARY KEY (A_ID)
);

CREATE TABLE Staff
(
  S_ID INT NOT NULL,
  Salary VARCHAR NOT NULL,
  S_Name VARCHAR NOT NULL,
  PRIMARY KEY (S_ID)
);

CREATE TABLE Doctor
(
  Doctor_ID INT NOT NULL,
  Doctor_Name VARCHAR NOT NULL,
  Department VARCHAR NOT NULL,
  PRIMARY KEY (Doctor_ID)
);

CREATE TABLE Lab_Reports
(
  Report_No INT NOT NULL,
  Test_Date DATE NOT NULL,
  Results VARCHAR NOT NULL,
  PRIMARY KEY (Report_No)
);

CREATE TABLE Room
(
  Room_No INT NOT NULL,
  Status VARCHAR NOT NULL,
  PRIMARY KEY (Room_No)
);

CREATE TABLE OutPatient
(
  O_Patient_ID INT NOT NULL,
  Discharge_Date DATE NOT NULL,
  PRIMARY KEY (O_Patient_ID)
);

CREATE TABLE Bill
(
  Bill_No INT NOT NULL,
  Bill_Date DATE NOT NULL,
  Medicine_Charge INT NULL,
  Room_Charge INT NULL,
  Operation_Charge INT NULL,
  Nursing_Charge INT NULL,
  No_of_Days INT NULL,
  Doctor_Charge INT NULL,
  Lab_Charge INT NULL,
  PRIMARY KEY (Bill_No)
);

CREATE TABLE Checks
(
  Doctor_ID INT NOT NULL,
  Report_No INT NOT NULL,
  FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID),
  FOREIGN KEY (Report_No) REFERENCES Lab_Reports(Report_No)
);

CREATE TABLE Manages
(
  A_ID INT NOT NULL,
  S_ID INT NOT NULL,
  Doctor_ID INT NOT NULL,
  FOREIGN KEY (A_ID) REFERENCES Administrator(A_ID),
  FOREIGN KEY (S_ID) REFERENCES Staff(S_ID),
  FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
);

CREATE TABLE InPatient
(
  I_Patient_ID INT NOT NULL,
  Name VARCHAR NULL,
  Gender VARCHAR NULL,
  Phone_Number BIGINT NULL,
  Ailment VARCHAR NULL,
  Admit_Date DATE NULL,
  Room_No INT NOT NULL,
  PRIMARY KEY (I_Patient_ID),
  FOREIGN KEY (Room_No) REFERENCES Room(Room_No)
);

CREATE TABLE Treats
(
  Doctor_ID INT NOT NULL,
  I_Patient_ID INT NULL,
  O_Patient_ID INT NULL,
  FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID),
  FOREIGN KEY (I_Patient_ID) REFERENCES InPatient(I_Patient_ID),
  FOREIGN KEY (O_Patient_ID) REFERENCES OutPatient(O_Patient_ID)
);

CREATE TABLE Issued_To
(
  Patient_Type VARCHAR NULL,
  I_Patient_ID INT NULL,
  O_Patient_ID INT NULL,
  Bill_No INT NOT NULL,
  FOREIGN KEY (I_Patient_ID) REFERENCES InPatient(I_Patient_ID),
  FOREIGN KEY (O_Patient_ID) REFERENCES OutPatient(O_Patient_ID),
  FOREIGN KEY (Bill_No) REFERENCES Bill(Bill_No)
);

CREATE TABLE Decides
(
  Report_No INT NOT NULL,
  I_Patient_ID INT NULL,
  O_Patient_ID INT NULL,
  FOREIGN KEY (I_Patient_ID) REFERENCES InPatient(I_Patient_ID),
  FOREIGN KEY (O_Patient_ID) REFERENCES OutPatient(O_Patient_ID),
  FOREIGN KEY (Report_No) REFERENCES Lab_Reports(Report_No)
);
