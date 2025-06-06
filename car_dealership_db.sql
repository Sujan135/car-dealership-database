DROP Database if EXISTS CarDealership;
CREATE Database CarDealership;
USE CarDealership;

--Table 1:
CREATE TABLE dealerships (
    dealership_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12),
    PRIMARY KEY(dealership_id)
);

--Table 2:
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

--Table 3
CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(20),
    PRIMARY KEY(dealership_id, VIN)
);

--Table 4
CREATE TABLE sales_contracts (
    sales_id INT NOT NULL AUTO_INCREMENT,
    VIN VARCHAR(20),
    customer_name VARCHAR(50),
    dealership_name(50),
    sale_price DECIMAL(10, 2),
    PRIMARY KEY(sales_id),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

--Table 5
CREATE TABLE lease_contracts (
    lease_id INT NOT NULL AUTO_INCREMENT;
    VIN VARCHAR(20),
    customer_name VARCHAR(50);
    dealership_name VARCHAR(50),
    lease_price DECIMAL(10,2),
    PRIMARY KEY(lease_id),
    FOREIGN KEY(VIN) REFERENCES vehicles(VIN)
);


-- Sample Data

-- Dealerships
INSERT INTO dealerships (name, address, phone) VALUES
('Auto Galaxy', '123 Main St, Dallas, TX', '214-555-1234'),
('Speed Motors', '456 Oak Rd, Austin, TX', '512-555-9876');

-- Vehicles
INSERT INTO vehicles (VIN, make, model, year, color, price, sold) VALUES
('1HGCM82633A004352', 'Honda', 'Civic', 2022, 'Red', 22000.00, FALSE),
('1FAFP4041YF100731', 'Ford', 'Mustang', 2023, 'Blue', 32000.00, TRUE),
('2T1BURHE5JC048758', 'Toyota', 'Corolla', 2021, 'White', 20000.00, FALSE),
('3C6UR5FL4JG123456', 'Dodge', 'Ram 1500', 2022, 'Black', 45000.00, TRUE);

-- Inventory
INSERT INTO inventory (dealership_id, VIN) VALUES
(1, '1HGCM82633A004352'),
(1, '1FAFP4041YF100731'),
(2, '2T1BURHE5JC048758'),
(2, '3C6UR5FL4JG123456');

-- Sales Contracts
INSERT INTO sales_contracts (VIN, customer_name, dealership_name, sale_price) VALUES
('1FAFP4041YF100731', 'John Doe', 'Auto Galaxy', 31000.00),
('3C6UR5FL4JG123456', 'Jane Smith', 'Speed Motors', 44000.00);

-- Lease Contracts
INSERT INTO lease_contracts (VIN, customer_name, dealership_name, lease_price) VALUES
('1HGCM82633A004352', 'Alice Brown', 'Auto Galaxy', 450.00),
('2T1BURHE5JC048758', 'Bob Green', 'Speed Motors', 400.00);