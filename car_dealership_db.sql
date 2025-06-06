DROP DATABASE if EXISTS cardealership;
CREATE DATABASE cardealership;
USE cardealership;


CREATE TABLE dealerships (
    dealership_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12),
    PRIMARY KEY(dealership_id)

);

CREATE TABLE vehicles (
    VIN VARCHAR(20) NOT NULL,
    make VARCHAR(30),
    model VARCHAR(30),
    year INT,
    color VARCHAR(15),
    price DECIMAL(10, 2),
    sold BOOLEAN,
    PRIMARY KEY(VIN)
);


CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(20),
    PRIMARY KEY(dealership_id, VIN)
);

CREATE TABLE sales_contracts (
    sales_id INT NOT NULL AUTO_INCREMENT,
    VIN VARCHAR(20),
    customer_name VARCHAR(50),
    dealership_name VARCHAR(50),
    sale_price DECIMAL(10, 2),
    sale_date DATE,
    PRIMARY KEY(sales_id),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

CREATE TABLE lease_contracts (
    lease_id INT NOT NULL AUTO_INCREMENT,
    VIN VARCHAR(20),
    customer_name VARCHAR(50),
    dealership_name VARCHAR(50),
    lease_price DECIMAL(10,2),
    lease_date DATE,
    PRIMARY KEY(lease_id),
    FOREIGN KEY(VIN) REFERENCES vehicles(VIN)
);

INSERT INTO dealerships (name, address, phone) VALUES
('City Motors', '1000 Market St, Dallas, TX', '214-555-1001'),
('DriveTime', '2000 Commerce Blvd, Austin, TX', '512-555-2002'),
('Fast Lane', '3000 Speedway Rd, Houston, TX', '713-555-3003'),
('Highway Auto', '4000 Interstate Pkwy, Fort Worth, TX', '817-555-4004'),
('Metro Cars', '5000 Central Ave, San Antonio, TX', '210-555-5005'),
('NextGen Autos', '6000 Innovation Dr, El Paso, TX', '915-555-6006'),
('Peak Motors', '7000 Summit Rd, Arlington, TX', '682-555-7007'),
('Sunset Autos', '8000 Sunset Blvd, Plano, TX', '972-555-8008'),
('Urban Wheels', '9000 City Line Rd, Laredo, TX', '956-555-9009'),
('Victory Autos', '10000 Victory Ln, Corpus Christi, TX', '361-555-1010');

INSERT INTO vehicles (VIN, make, model, year, color, price, sold) VALUES
('JH4KA2650MC000001', 'Acura', 'Legend', 1991, 'Black', 9000.00, FALSE),
('1FTFW1ET1EKE00002', 'Ford', 'F-150', 2014, 'Blue', 25000.00, TRUE),
('5N1AR2MM8EC000003', 'Nissan', 'Pathfinder', 2018, 'Red', 27000.00, FALSE),
('WBA3A5C56DF000004', 'BMW', '328i', 2015, 'White', 23000.00, TRUE),
('3VW217AU8FM000005', 'Volkswagen', 'Jetta', 2016, 'Silver', 18000.00, FALSE),
('1GCVKREC7FZ000006', 'Chevrolet', 'Silverado', 2015, 'Green', 29000.00, TRUE),
('2C3CDXCT8EH000007', 'Dodge', 'Charger', 2017, 'Gray', 32000.00, FALSE),
('JN8AS5MT8FW000008', 'Nissan', 'Rogue', 2017, 'Blue', 21000.00, TRUE),
('19XFC2F59GE000009', 'Honda', 'Civic', 2016, 'Red', 19000.00, FALSE),
('1C4RJFBG1FC000010', 'Jeep', 'Grand Cherokee', 2015, 'Black', 28000.00, TRUE);

INSERT INTO inventory (dealership_id, VIN) VALUES
(5, 'JH4KA2650MC000001'),
(1, '1FTFW1ET1EKE00002'),
(2, '5N1AR2MM8EC000003'),
(3, 'WBA3A5C56DF000004'),
(4, '3VW217AU8FM000005'),
(6, '1GCVKREC7FZ000006'),
(7, '2C3CDXCT8EH000007'),
(8, 'JN8AS5MT8FW000008'),
(9, '19XFC2F59GE000009'),
(10, '1C4RJFBG1FC000010');

INSERT INTO sales_contracts (VIN, customer_name, dealership_name, sale_price, sale_date) VALUES
('1FTFW1ET1EKE00002', 'Chris Evans', 'DriveTime', 24500.00, '2023-02-10'),
('WBA3A5C56DF000004', 'Emma Stone', 'Fast Lane', 22500.00, '2024-01-05'),
('1GCVKREC7FZ000006', 'Robert Downey', 'NextGen Autos', 28500.00, '2023-11-20'),
('JN8AS5MT8FW000008', 'Scarlett Johansson', 'Sunset Autos', 20500.00, '2024-03-15'),
('1C4RJFBG1FC000010', 'Mark Ruffalo', 'Victory Autos', 27500.00, '2023-06-30'),
('2C3CDXCT8EH000007', 'Chris Hemsworth', 'Peak Motors', 31000.00, '2023-12-25'),
('19XFC2F59GE000009', 'Jennifer Lawrence', 'Urban Wheels', 18500.00, '2023-08-08'),
('5N1AR2MM8EC000003', 'Tom Holland', 'Metro Cars', 26500.00, '2024-02-22'),
('3VW217AU8FM000005', 'Benedict Cumberbatch', 'Highway Auto', 17500.00, '2023-04-10'),
('JH4KA2650MC000001', 'Elizabeth Olsen', 'City Motors', 8800.00, '2023-09-01');

INSERT INTO lease_contracts (VIN, customer_name, dealership_name, lease_price, lease_date) VALUES
('JH4KA2650MC000001', 'Paul Bettany', 'City Motors', 420.00, '2023-03-12'),
('3VW217AU8FM000005', 'Brie Larson', 'Highway Auto', 380.00, '2023-11-15'),
('19XFC2F59GE000009', 'Chris Pratt', 'Urban Wheels', 360.00, '2024-04-05'),
('1C4RJFBG1FC000010', 'Zoe Saldana', 'Victory Autos', 410.00, '2023-07-22'),
('2C3CDXCT8EH000007', 'Karen Gillan', 'Peak Motors', 395.00, '2023-09-18'),
('1GCVKREC7FZ000006', 'Dave Bautista', 'NextGen Autos', 430.00, '2024-01-29'),
('JN8AS5MT8FW000008', 'Elizabeth Debicki', 'Sunset Autos', 370.00, '2024-05-12'),
('5N1AR2MM8EC000003', 'Sebastian Stan', 'Metro Cars', 400.00, '2023-08-03'),
('1FTFW1ET1EKE00002', 'Tom Hiddleston', 'DriveTime', 440.00, '2023-06-10'),
('WBA3A5C56DF000004', 'Lupita Nyong\'o', 'Fast Lane', 415.00, '2023-12-01');

