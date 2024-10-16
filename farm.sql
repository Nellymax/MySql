-- Active: 1728482418860@@127.0.0.1@3306@farm
show tables;
create table employees(
    employeesID INT AUTO_INCREMENT,
    enames VARCHAR(255) UNIQUE NOT NULL,
    dateofbirth DATE,
    telephone VARCHAR(45),
    emails VARCHAR(255),
    roles VARCHAR(255),
    PRIMARY KEY (employeesID)
);

CREATE Table hens(
    breedID INT AUTO_INCREMENT,
    breednames VARCHAR(155) UNIQUE NOT NULL,
    age VARCHAR(45),
    PRIMARY KEY (breedID)
);

create table medication(
   vaccineID int AUTO_INCREMENT,
   vname VARCHAR(255) UNIQUE NOT NULL,
   datetaken date,
   methodsofvaccination VARCHAR(255),
   PRIMARY KEY (vaccineID)
);

create table sales(
    idsales INT,
    price_eggs INT,
    price_hens INT,
    period VARCHAR(45),
    PRIMARY KEY(idsales)
);
DESCRIBE sales;

INSERT INTO employees(enames, dateofbirth, telephone, emails, roles)
VALUES("Sarah Uche", '1997-08-09', "0789654321", "uchesai@gmail.com", "Doctor"),
("Maurice Eso", '1994-05-03', "0782165439", "esom9876@gmail.com", "Manger"),
("Montana Kirungi",'2001-01-31' , "0772916472", "montanakirungi6@gmail.com", "cleaner"),
("Mark Kasole", '2000-10-31', "0772720008", "kasolemark@gmail.com", "staff_member"),
("Selena Lubega", '2002-02-28', "0700016472", "nellyluxgi6@gmail.com", "staff_member");


INSERT INTO hens(breednames, age)
VALUES("Layers", 18),
("Broilers", 9),
("Kuroilers", 15);

INSERT INTO sales(idsales, price_eggs, price_hens, period)
VALUES(1, 80000, 150000, "6months"),
(2, 40000, 300000, "4months"),
(3, 100000, 3000000, "2months");

INSERT INTO medication(vname, datetaken, methodsofvaccination)
VALUES("Newcaslte infectious", '2024-01-07', "Eyedrop"),
("Fowl Pox", '2024-02-11', "Wing Stab"),
("Gumboro", '2024-01-14', "Drinking water");
