CREATE SCHEMA IF NOT EXISTS hotel;
SET search_path TO hotel; 


CREATE TABLE IF NOT EXISTS hotel.hotel (
    address VARCHAR(50) PRIMARY KEY,
    total_rooms INT NOT NULL,
    total_employees INT NOT NULL,
    monthly_profit DECIMAL(10, 2) NOT NULL,
    monthly_expenses DECIMAL(10, 2) NOT NULL,
    price_point DECIMAL(10, 2) NOT NULL,
    rooms_booked INT NOT NULL
);


CREATE TABLE IF NOT EXISTS hotel.employee (
    ssn CHAR(9) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hours_weekly INT NOT NULL,
    department VARCHAR(50) NOT NULL,
    manager_ssn CHAR(9),
    date_started DATE NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    hotel_address VARCHAR(50),
    FOREIGN KEY (manager_ssn) REFERENCES employee(ssn)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (hotel_address) REFERENCES hotel(address)
    ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS hotel.customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number CHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL,
    total_visits INT NOT NULL,
    payment VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS hotel.maintenance (
    maintenance_id SERIAl PRIMARY KEY,
    damage_description VARCHAR(200) NOT NULL,
    materials_needed VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS hotel.requires (
    hotel_address VARCHAR(50),
    maintenance_id SERIAL,
    date_requested DATE NOT NULL,
    PRIMARY KEY (hotel_address, maintenance_id),
    FOREIGN KEY (hotel_address) REFERENCES hotel(address)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (maintenance_id) REFERENCES maintenance(maintenance_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS hotel.reservation (
    reservation_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    hotel_address VARCHAR(50) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (hotel_address) REFERENCES hotel(address)
    ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS hotel.room (
    room_number SERIAL,
    hotel_address VARCHAR(50),
    room_type VARCHAR(50) NOT NULL,
    view_type VARCHAR(50) NOT NULL,
    floor_number INT NOT NULL,
    pricing DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (room_number, hotel_address),
    FOREIGN KEY (hotel_address) REFERENCES hotel(address)
    ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS hotel.booked (
    room_number SERIAL,
    reservation_id SERIAL,
    hotel_address VARCHAR(50),
    date_range DATE NOT NULL,
    PRIMARY KEY (room_number, reservation_id, hotel_address),
    FOREIGN KEY (room_number, hotel_address) REFERENCES room(room_number, hotel_address)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id)
    ON DELETE RESTRICT ON UPDATE CASCADE
);
