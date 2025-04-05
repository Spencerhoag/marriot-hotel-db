SET search_path TO hotel;


-- SELECT m.ssn
-- FROM hotel.employee AS m  
-- WHERE m.ssn IN (
--     SELECT DISTINCT e.manager_ssn
--     FROM hotel.employee AS e 
--     WHERE e.department = 'Front Desk');


-- SELECT r.* 
-- FROM hotel.room AS r
-- LEFT JOIN hotel.booked AS b
-- ON r.room_number = b.room_number
-- AND r.hotel_address = b.hotel_address
-- AND b.start_date <= '2025-06-01'
-- AND b.end_date >= '2025-06-05'
-- WHERE r.view_type = 'Pool View'
-- AND b.room_number IS NULL;
