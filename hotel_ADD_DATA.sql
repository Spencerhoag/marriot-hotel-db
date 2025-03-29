SET search_path TO hotel; 


INSERT INTO hotel.hotel VALUES 
('123 Main St', 100, 50, 50000.00, 20000.00, 150.00, 80),
('456 Elm St', 80, 40, 40000.00, 18000.00, 130.00, 60),
('789 Oak St', 120, 55, 55000.00, 22000.00, 160.00, 100),
('101 Maple St', 90, 45, 42000.00, 17000.00, 140.00, 75),
('202 Pine St', 110, 52, 52000.00, 21000.00, 155.00, 95),
('303 Cedar St', 95, 47, 46000.00, 19000.00, 135.00, 85),
('404 Birch St', 130, 60, 60000.00, 25000.00, 170.00, 115),
('505 Walnut St', 85, 42, 38000.00, 16000.00, 125.00, 55),
('606 Cherry St', 105, 50, 50000.00, 20000.00, 145.00, 90),
('707 Aspen St', 75, 38, 35000.00, 15000.00, 120.00, 50);


INSERT INTO hotel.employee VALUES 
('123456789', 'John', 'Doe', 40, 'Front Desk', NULL, '2022-06-15', 50000.00, '123 Main St'),
('987654321', 'Jane', 'Smith', 35, 'Housekeeping', '123456789', '2021-08-10', 42000.00, '456 Elm St'),
('456789123', 'Alice', 'Brown', 30, 'Maintenance', '123456789', '2023-01-20', 48000.00, '789 Oak St'),
('789123456', 'Bob', 'Wilson', 40, 'Front Desk', '987654321', '2020-11-05', 51000.00, '101 Maple St'),
('321654987', 'Charlie', 'Davis', 38, 'Security', '123456789', '2019-07-12', 45000.00, '202 Pine St'),
('159357258', 'Emma', 'Garcia', 42, 'Housekeeping', '987654321', '2021-09-25', 43000.00, '303 Cedar St'),
('852741963', 'David', 'Lopez', 37, 'Kitchen', '123456789', '2022-04-30', 47000.00, '404 Birch St'),
('963258741', 'Olivia', 'Martinez', 39, 'Front Desk', '789123456', '2020-10-18', 49000.00, '505 Walnut St'),
('741852963', 'Ethan', 'Hernandez', 41, 'Maintenance', '456789123', '2018-06-21', 52000.00, '606 Cherry St'),
('369147258', 'Sophia', 'Moore', 36, 'Security', '321654987', '2019-12-14', 44000.00, '707 Aspen St');


INSERT INTO hotel.customer VALUES 
(DEFAULT, 'Michael', 'Johnson', '1234567890', 'michael@email.com', 5, 'Credit Card'),
(DEFAULT, 'Sarah', 'Williams', '2345678901', 'sarah@email.com', 3, 'PayPal'),
(DEFAULT, 'David', 'Brown', '3456789012', 'david@email.com', 7, 'Debit Card'),
(DEFAULT, 'Emily', 'Jones', '4567890123', 'emily@email.com', 2, 'Cash'),
(DEFAULT, 'James', 'Garcia', '5678901234', 'james@email.com', 4, 'Credit Card'),
(DEFAULT, 'Laura', 'Martinez', '6789012345', 'laura@email.com', 6, 'Venmo'),
(DEFAULT, 'Robert', 'Hernandez', '7890123456', 'robert@email.com', 1, 'Cash'),
(DEFAULT, 'Jessica', 'Moore', '8901234567', 'jessica@email.com', 8, 'PayPal'),
(DEFAULT, 'William', 'Clark', '9012345678', 'william@email.com', 3, 'Credit Card'),
(DEFAULT, 'Sophia', 'Rodriguez', '0123456789', 'sophia@email.com', 5, 'Debit Card');


INSERT INTO hotel.maintenance VALUES 
(DEFAULT, 'Broken AC unit in Room 101', 'Refrigerant, Fan Motor'),
(DEFAULT, 'Leaky sink in Room 205', 'Wrench, Pipe Sealant'),
(DEFAULT, 'Cracked window in Room 308', 'Glass Panel, Sealant'),
(DEFAULT, 'Malfunctioning elevator', 'Hydraulic Fluid, Control Board'),
(DEFAULT, 'Flickering lights in hallway', 'LED Bulbs, Wiring'),
(DEFAULT, 'Broken door lock in Room 502', 'Lock Mechanism, Key Set'),
(DEFAULT, 'Water damage in ceiling', 'Drywall, Paint'),
(DEFAULT, 'HVAC system overheating', 'Coolant, Air Filter'),
(DEFAULT, 'Loose railing on stairwell', 'Welding Kit, Screws'),
(DEFAULT, 'Leaky roof', 'Tar, Roofing Shingles');


INSERT INTO hotel.reservation VALUES 
(DEFAULT, 1, '123 Main St', 250.00, '2025-06-01', '2025-06-05'),
(DEFAULT, 2, '456 Elm St', 300.00, '2025-07-10', '2025-07-15'),
(DEFAULT, 3, '789 Oak St', 150.00, '2025-08-20', '2025-08-25'),
(DEFAULT, 4, '101 Maple St', 400.00, '2025-09-05', '2025-09-10'),
(DEFAULT, 5, '202 Pine St', 220.00, '2025-10-15', '2025-10-20'),
(DEFAULT, 6, '303 Cedar St', 350.00, '2025-11-01', '2025-11-05'),
(DEFAULT, 7, '404 Birch St', 275.00, '2025-12-10', '2025-12-15'),
(DEFAULT, 8, '505 Walnut St', 180.00, '2025-12-20', '2025-12-25'),
(DEFAULT, 9, '606 Cherry St', 320.00, '2026-01-05', '2026-01-10'),
(DEFAULT, 10, '707 Aspen St', 290.00, '2026-02-10', '2026-02-15');


INSERT INTO hotel.room VALUES 
(DEFAULT, '123 Main St', 'Deluxe', 'Ocean View', 3, 150.00),
(DEFAULT, '456 Elm St', 'Standard', 'City View', 2, 130.00),
(DEFAULT, '789 Oak St', 'Suite', 'Garden View', 5, 160.00),
(DEFAULT, '101 Maple St', 'Deluxe', 'Pool View', 4, 140.00),
(DEFAULT, '202 Pine St', 'Standard', 'Street View', 1, 155.00),
(DEFAULT, '303 Cedar St', 'Suite', 'Park View', 6, 135.00),
(DEFAULT, '404 Birch St', 'Penthouse', 'Skyline View', 7, 170.00),
(DEFAULT, '505 Walnut St', 'Deluxe', 'Lake View', 3, 125.00),
(DEFAULT, '606 Cherry St', 'Standard', 'Mountain View', 2, 145.00),
(DEFAULT, '707 Aspen St', 'Suite', 'Forest View', 5, 120.00);

INSERT INTO hotel.requires (hotel_address, date_requested) VALUES 
('123 Main St', '2025-06-02'),
('456 Elm St', '2025-07-11'),
('789 Oak St', '2025-08-21'),
('101 Maple St', '2025-09-06'),
('202 Pine St', '2025-10-16'),
('303 Cedar St', '2025-11-02'),
('404 Birch St', '2025-12-11'),
('505 Walnut St', '2025-12-21'),
('606 Cherry St', '2026-01-06'),
('707 Aspen St', '2026-02-11');


INSERT INTO hotel.booked (room_number, reservation_id, hotel_address, date_range) VALUES 
(1, 1, '123 Main St', '2025-06-01'),
(2, 2, '456 Elm St', '2025-07-10'),
(3, 3, '789 Oak St', '2025-08-20'),
(4, 4, '101 Maple St', '2025-09-05'),
(5, 5, '202 Pine St', '2025-10-15'),
(6, 6, '303 Cedar St', '2025-11-01'),
(7, 7, '404 Birch St', '2025-12-10'),
(8, 8, '505 Walnut St', '2025-12-20'),
(9, 9, '606 Cherry St', '2026-01-05'),
(10, 10, '707 Aspen St', '2026-02-10');
