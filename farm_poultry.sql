-- Active: 1728482418860@@127.0.0.1@3306@farm_poultry
SHOW tables;

Create table employees(
    employeesID INT AUTO_INCREMENT,
    enames VARCHAR(255) UNIQUE NOT NULL,
    address VARCHAR(45),
    telephone VARCHAR(45),
    emails VARCHAR(255),
    roles VARCHAR(255),
    PRIMARY KEY (employeesID)
);

CREATE Table hens(
    breedID INT AUTO_INCREMENT,
    breednames VARCHAR(155) UNIQUE NOT NULL,
    age VARCHAR(45),
    number_of_chicken INT,
    PRIMARY KEY (breedID)
);

create table medication(
   vaccineID int AUTO_INCREMENT,
   vname VARCHAR(255) UNIQUE NOT NULL,
   datetaken date,
   methods_of_vaccination VARCHAR(255),
   PRIMARY KEY (vaccineID)
);

create table sales(
    receiptno INT AUTO_INCREMENT,
    no_eggs_brought INT,
    no_hens_brought INT,
    price_of_eggs INT,
    price_of_hens INT,
    PRIMARY KEY(receiptno)
);


INSERT INTO employees(enames, address, telephone, emails, roles)
VALUES("Sarah Uche", "nabutti", "0789654321", "uchesai@gmail.com", "Doctor"),
("Maurice Eso", "kayungu", "0782165439", "esom9876@gmail.com", "Manger"),
("Montana Kirungi", "nabutti", "0772916472", "montanakirungi6@gmail.com", "cleaner"),
("Mark Kasole", "mukono", "0772720008", "kasolemark@gmail.com", "staff_member"),
("Selena Lubega", "mukono", "0700016472", "nellyluxgi6@gmail.com", "staff_member");

INSERT INTO hens(breednames, age, number_of_chicken)
VALUES("Layers", "18 weeks", 102),
("Broilers", "9 weeks", 187),
("Kuroilers", " 15weeks", 202);

INSERT INTO sales(no_eggs_brought, no_hens_brought, price_of_eggs, price_of_hens)
VALUES(200, 5, 80000, 150000),
(100, 10, 40000, 300000),
(200, 100, 100000, 3000000);

INSERT INTO medication(vname, datetaken, methods_of_vaccination)
VALUES("Newcaslte infectious", '2024-01-07', "Eyedrop"),
("Fowl Pox", '2024-02-11', "Wing Stab"),
("Gumboro", '2024-01-14', "Drinking water");

show tables;
