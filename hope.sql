-- Active: 1728626945687@@127.0.0.1@3306@satclass
SHOW TABLES;
CREATE TABLE farmer(
    farmerID int AUTO_INCREMENT,
    fname VARCHAR (225) UNIQUE NOT NULL,
    address VARCHAR(255),
    contact VARCHAR(20),
    PRIMARY KEY(farmerID)
);
CREATE TABLE crop(
    cropID int AUTO_INCREMENT,
    cropname VARCHAR(50) NOT NULL,
    ctype VARCHAR(45),
    season VARCHAR(45),
    PRIMARY KEY(cropID)
);
CREATE table farmer_crop(
    farmerID INT,
    cropID INT,
    Area_cultivated FLOAT,
    yield INT,
    primary KEY(farmerID, cropID),
    FOREIGN KEY(farmerID) REFERENCES farmer(farmerID),
    FOREIGN KEY(cropID) REFERENCES crop(cropID)
    );

ALTER TABLE farmer
ADD email VARCHAR (50)

DESCRIBE farmer;

-- Deleting a table

INSERT INTO farmer(fname, address, contact)
VALUES("Sarah Nambi", "Kiwangala Town", "+25678901234"),
("Paul Okello","Lwengo District","+256700009");

SELECT * FROM farmer;

SELECT * FROM farmer WHERE address= "Lwengo District";

DELETE FROM farmer WHERE farmerID = 2;
