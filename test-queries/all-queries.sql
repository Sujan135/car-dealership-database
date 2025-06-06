SELECT * from dealerships;
--SELECT
--     *
-- FROM
--     vehicles
--         JOIN
--     inventory ON vehicles.vin = inventory.vin
-- WHERE
--     inventory.dealership_id = 1;
 
-- SELECT * FROM vehicles
-- WHERE vin = 'JN8AS5MT8FW000008';
 
-- SELECT 
--     dealerships.address,
--     dealerships.name,
--     dealerships.phone,
--     dealerships.dealership_id
-- FROM
--     dealerships
--         JOIN
--     inventory ON dealerships.dealership_id = inventory.dealership_id
-- WHERE
--     inventory.vin = 'WBA3A5C56DF000004';
 
-- SELECT 
--     dealerships.address,
--     dealerships.name,
--     dealerships.phone,
--     dealerships.dealership_id
-- FROM
--     dealerships
--         JOIN
--     inventory ON dealerships.dealership_id = inventory.dealership_id
--         JOIN
--     vehicles ON inventory.vin = vehicles.vin
-- WHERE
--     vehicles.make = 'Acura'
--         AND vehicles.model = 'Legend'
--         AND vehicles.color = 'Black';

-- SELECT 
--      *
-- FROM
--     sales_contracts
-- WHERE
--     dealership_name = 'DriveTime'
--     AND sale_date BETWEEN '2023-01-01' AND '2023-12-31';