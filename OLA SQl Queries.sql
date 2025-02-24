-- 1. Retrieve all successful bookings:

CREATE VIEW successful_bookings AS

    SELECT 
        *
    FROM
        bookings
    WHERE
        Booking_Status = 'successful'; 

--  2. Find the average ride distance for each vehicle type:

 CREATE VIEW average_ride_distance AS
    SELECT 
        Vehicle_Type, AVG(Ride_Distance) AS avg_distance
    FROM
        bookings
    GROUP BY Vehicle_Type; 
 
--  3. Get the total number of cancelled rides by customers:

CREATE VIEW total_number_of_cancelled_rides_by_customers AS
    SELECT 
        COUNT(*)
    FROM
        bookings
    WHERE
        booking_status = 'Canceled by Customer';

 -- 4. List the top 5 customers who booked the highest number of rides:
 
 create view top5_customers_who_booked as
 SELECT 
    Customer_ID, COUNT(Booking_ID) AS total_rides
FROM
    bookings
GROUP BY Customer_ID
ORDER BY Customer_ID DESC
LIMIT 5;
 
 -- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 
 CREATE VIEW rides_cancelled_by_drivers AS
    SELECT 
        COUNT(*)
    FROM
        bookings
    WHERE
        Canceled_Rides_by_Driver = 'personal and car-related issues';
 
 
 
 -- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 
  CREATE VIEW maximum_and_minimum_driver_ratings AS
    SELECT 
        MAX(Driver_Ratings) AS max_rating,
        MIN(Driver_ratings) AS min_rating
    FROM
        bookings
    WHERE
        Vehicle_Type = 'Prime sedan';

 
 -- 7. Retrieve all rides where payment was made using UPI:
 
 CREATE VIEW payment_was_made_using_UPI AS
    SELECT 
        *
    FROM
        bookings
    WHERE
        Payment_Method = 'UPI';
        
	
 -- 8. Find the average customer rating per vehicle type:
 
 CREATE VIEW average_customer_rating_per_vehicle_type AS
    SELECT 
        Vehicle_Type, AVG(Customer_Rating) AS avg_rating
    FROM
        bookings
    GROUP BY Vehicle_Type;
 
 
--  9. Calculate the total booking value of rides completed successfully:

 CREATE VIEW Total_Booking_Value AS
    SELECT 
        SUM(Booking_Value)
    FROM
        bookings
    WHERE
        Booking_Status = 'Success';
 
 
 -- 10. List all incomplete rides along with the reason:
 
 CREATE VIEW Incomplete_Rides_Reason AS
    SELECT 
        Booking_ID, Incomplete_Rides_Reason
    FROM
        bookings
    WHERE
        Incomplete_Rides = 'Yes';
        
        
       
 