-- Insert Role entries
INSERT INTO role (id, role) VALUES
                                (1, 'OWNER'),
                                (2, 'CUSTOMER'),
                                (3, 'ADMIN');

-- Insert Customer entries
INSERT INTO customer (id, first_name, last_name, email, password, role_id, status) VALUES
                                                                                       (1, 'John', 'Doe', 'johndoe@gmail.com', 'password1', 2, 'ACTIVE'),
                                                                                       (2, 'Jane', 'Doe', 'janedoe@gmail.com', 'password2', 2, 'ACTIVE'),
                                                                                       (3, 'Bob', 'Smith', 'bobsmith@gmail.com', 'password3', 2, 'ACTIVE'),
                                                                                       (4, 'Alice', 'Johnson', 'alicejohnson@gmail.com', 'password4', 2, 'ACTIVE'),
                                                                                       (5, 'Mike', 'Williams', 'mikewilliams@gmail.com', 'password5', 2, 'ACTIVE'),
                                                                                       (6, 'Emily', 'Davis', 'emilydavis@gmail.com', 'password6', 2, 'ACTIVE'),
                                                                                       (7, 'David', 'Brown', 'davidbrown@gmail.com', 'password7', 2, 'ACTIVE'),
                                                                                       (8, 'Sarah', 'Miller', 'sarahmiller@gmail.com', 'password8', 2, 'ACTIVE'),
                                                                                       (9, 'Mark', 'Wilson', 'markwilson@gmail.com', 'password9', 2, 'ACTIVE'),
                                                                                       (10, 'Karen', 'Moore', 'karenmoore@gmail.com', 'password10', 2, 'ACTIVE'),
                                                                                       (11, 'Tom', 'Taylor', 'tomtaylor@gmail.com', 'password11', 2, 'ACTIVE'),
                                                                                       (12, 'Olivia', 'Anderson', 'oliviaanderson@gmail.com', 'password12', 2, 'ACTIVE'),
                                                                                       (13, 'Chris', 'Thomas', 'christhomas@gmail.com', 'password13', 2, 'ACTIVE'),
                                                                                       (14, 'Samantha', 'Jackson', 'samanthajackson@gmail.com', 'password14', 2, 'ACTIVE'),
                                                                                       (15, 'George', 'White', 'georgewhite@gmail.com', 'password15', 2, 'ACTIVE'),
                                                                                       (16, 'Ella', 'Harris', 'ellaharris@gmail.com', 'password16', 2, 'ACTIVE'),
                                                                                       (17, 'Anthony', 'Martin', 'anthonymartin@gmail.com', 'password17', 2, 'ACTIVE'),
                                                                                       (18, 'Madison', 'Thompson', 'madisonthompson@gmail.com', 'password18', 2, 'ACTIVE'),
                                                                                       (19, 'Ryan', 'Garcia', 'ryangarcia@gmail.com', 'password19', 2, 'ACTIVE'),
                                                                                       (20, 'Julia', 'Davis', 'juliadavis@gmail.com', 'password20', 2, 'ACTIVE'),
                                                                                       (21, 'Justin', 'Rodriguez', 'justinrodriguez@gmail.com', 'password21', 2, 'ACTIVE'),
                                                                                       (22, 'Lauren', 'Perez', 'laurenperez@gmail.com', 'password22', 2, 'ACTIVE'),
                                                                                       (23, 'Joshua', 'Turner', 'joshuaturner@gmail.com', 'password23', 2, 'ACTIVE'),
                                                                                       (24, 'Ashley', 'Campbell', 'ashleycampbell@gmail.com', 'password24', 2, 'ACTIVE'),
                                                                                       (25, 'Brandon', 'Parker', 'brandonparker@gmail.com', 'password25', 2, 'ACTIVE');

-- Insert Owner entries
INSERT INTO owner (id, first_name, last_name, email, password, role_id, status) VALUES
                                                                                    (26, 'Michael', 'Brown', 'michaelbrown@gmail.com', 'password26', 1, 'ACTIVE'),
                                                                                    (27, 'Jennifer', 'Johnson', 'jenniferjohnson@gmail.com', 'password27', 1, 'ACTIVE'),
                                                                                    (28, 'William', 'Lee', 'williamlee@gmail.com', 'password28', 1, 'ACTIVE'),
                                                                                    (29, 'Sophia', 'Harris', 'sophiaharris@gmail.com', 'password29', 1, 'ACTIVE'),
                                                                                    (30, 'Daniel', 'Jackson', 'danieljackson@gmail.com', 'password30', 1, 'ACTIVE'),
                                                                                    (31, 'Grace', 'Moore', 'gracemoore@gmail.com', 'password31', 1, 'ACTIVE'),
                                                                                    (32, 'Joseph', 'Clark', 'josephclark@gmail.com', 'password32', 1, 'ACTIVE'),
                                                                                    (33, 'Olivia', 'Hall', 'oliviahall@gmail.com', 'password33', 1, 'ACTIVE'),
                                                                                    (34, 'James', 'Gonzalez', 'jamesgonzalez@gmail.com', 'password34', 1, 'ACTIVE'),
                                                                                    (35, 'Emma', 'Garcia', 'emmagarcia@gmail.com', 'password35', 1, 'ACTIVE'),
                                                                                    (36, 'Benjamin', 'Rodriguez', 'benjaminrodriguez@gmail.com', 'password36', 1, 'ACTIVE'),
                                                                                    (37, 'Ava', 'Wilson', 'avawilson@gmail.com', 'password37', 1, 'ACTIVE'),
                                                                                    (38, 'David', 'Smith', 'davidsmith@gmail.com', 'password38', 1, 'ACTIVE'),
                                                                                    (39, 'Mia', 'Taylor', 'miataylor@gmail.com', 'password39', 1, 'ACTIVE'),
                                                                                    (40, 'Christopher', 'Anderson', 'christopheranderson@gmail.com', 'password40', 1, 'ACTIVE'),
                                                                                    (41, 'Harper', 'Johnson', 'harperjohnson@gmail.com', 'password41', 1, 'ACTIVE'),
                                                                                    (42, 'Andrew', 'Martinez', 'andrewmartinez@gmail.com', 'password42', 1, 'ACTIVE'),
                                                                                    (43, 'Evelyn', 'Clark', 'evelynclark@gmail.com', 'password43', 1, 'ACTIVE'),
                                                                                    (44, 'Matthew', 'White', 'matthewwhite@gmail.com', 'password44', 1, 'ACTIVE'),
                                                                                    (45, 'Addison', 'Hernandez', 'addisonhernandez@gmail.com', 'password45', 1, 'ACTIVE'),
                                                                                    (46, 'Amelia', 'Lee', 'ameliale@gmail.com', 'password46', 1, 'ACTIVE'),
                                                                                    (47, 'Lucas', 'Thomas', 'lucasthomas@gmail.com', 'password47', 1, 'ACTIVE'),
                                                                                    (48, 'Chloe', 'Robinson', 'chloerobinson@gmail.com', 'password48', 1, 'ACTIVE'),
                                                                                    (49, 'Henry', 'Harris', 'henryharris@gmail.com', 'password49', 1, 'ACTIVE'),
                                                                                    (50, 'Elizabeth', 'Turner', 'elizabethturner@gmail.com', 'password50', 1, 'ACTIVE');

-- Insert dummy data for Address
INSERT INTO Address (id, street, city, state, zipcode)
VALUES (1, '1234 Elm St', 'San Francisco', 'CA', '94107'),
       (2, '5678 Oak St', 'Los Angeles', 'CA', '90001'),
       (3, '9101 Maple St', 'New York', 'NY', '10001'),
       (4, '2345 Cedar St', 'Chicago', 'IL', '60601'),
       (5, '6789 Birch St', 'Houston', 'TX', '77001'),
       (6, '1111 Pine St', 'Philadelphia', 'PA', '19101'),
       (7, '2222 Willow St', 'Phoenix', 'AZ', '85001'),
       (8, '3333 Cedar St', 'San Francisco', 'CA', '94107'),
       (9, '4444 Oak St', 'Los Angeles', 'CA', '90001'),
       (10, '5555 Maple St', 'New York', 'NY', '10001'),
       (11, '6666 Cedar St', 'Chicago', 'IL', '60601'),
       (12, '7777 Birch St', 'Houston', 'TX', '77001'),
       (13, '8888 Pine St', 'Philadelphia', 'PA', '19101'),
       (14, '9999 Willow St', 'Phoenix', 'AZ', '85001'),
       (15, '1010 Cedar St', 'San Francisco', 'CA', '94107');


-- Insert dummy data for PropertyDetails
INSERT INTO property_details (id, pet, cooling, heater, deposit)
VALUES (6, true, 'Central AC', 'Gas', 2000.00),
       (7, false, 'Window AC', 'Electric', 1000.00),
       (8, true, 'Central AC', 'Gas', 2500.00),
       (9, false, 'Wall Unit AC', 'Electric', 1500.00),
       (10, true, 'Central AC', 'Gas', 3000.00),
       (11, false, 'Window AC', 'Electric', 1200.00),
       (12, true, 'Central AC', 'Gas', 2800.00),
       (13, false, 'Wall Unit AC', 'Electric', 1800.00),
       (14, true, 'Central AC', 'Gas', 2300.00),
       (15, false, 'Window AC', 'Electric', 900.00),
       (16, true, 'Central AC', 'Gas', 2600.00),
       (17, false, 'Wall Unit AC', 'Electric', 1600.00),
       (18, true, 'Central AC', 'Gas', 2400.00),
       (19, false, 'Window AC', 'Electric', 1100.00),
       (20, true, 'Central AC', 'Gas', 2700.00);

-- Insert dummy data for Property
INSERT INTO property (id, property_type, price, bedrooms, bathrooms, property_status, lot_size, built_year, address_id, listing_type, property_details_id)
VALUES (26, 'HOUSE', 150000, 3, 2, 'AVAILABLE', 1200, '2008-01-01', 1, 'SALE', 6),
       (27, 'APARTMENT', 1000, 1, 1, 'RENTED', 600, '2015-01-01', 2, 'RENT', 7),
       (28, 'CONDO', 180000, 2, 2, 'SOLD', 900, '2010-01-01', 3, 'SALE', 8),
       (29, 'TOWNHOUSE', 130000, 2, 2, 'AVAILABLE', 1000, '2012-01-01', 4, 'RENT', 9),
       (30, 'HOUSE', 300000, 4, 3, 'SOLD', 1800, '2005-01-01', 5, 'SALE', 10),
       (31, 'APARTMENT', 1100, 1, 1, 'RENTED', 700, '2018-01-01', 6, 'RENT', 11),
       (32, 'CONDO', 250000, 2, 2, 'PENDING', 1000, '2016-01-01', 7, 'SALE', 12),
       (33, 'TOWNHOUSE', 140000, 2, 2, 'AVAILABLE', 900, '2010-01-01', 8, 'RENT', 13),
       (34, 'HOUSE', 180000, 3, 2, 'SOLD', 1200, '2015-01-01', 9, 'SALE', 14),
       (35, 'APARTMENT', 900, 1, 1, 'RENTED', 600, '2012-01-01', 10, 'RENT', 15),
       (36, 'CONDO', 200000, 2, 2, 'CONTINGENT', 1000, '2008-01-01', 11, 'SALE', 16),
       (37, 'TOWNHOUSE', 120000, 2, 2, 'AVAILABLE', 800, '2005-01-01', 12, 'RENT', 17),
       (38, 'HOUSE', 280000, 4, 3, 'SOLD', 1600, '2010-01-01', 13, 'SALE', 18),
       (39, 'APARTMENT', 950, 1, 1, 'RENTED', 650, '2015-01-01', 14, 'RENT', 19),
       (40, 'CONDO', 220000, 2, 2, 'PENDING', 1100, '2012-01-01', 15, 'SALE', 20);

INSERT INTO photos (id, link, property_id)
VALUES (1, 'https://picsum.photos/200/300', 26),
       (2, 'https://picsum.photos/200/300', 27),
       (3, 'https://picsum.photos/200/300', 28),
       (4, 'https://picsum.photos/200/300', 29),
       (5, 'https://picsum.photos/200/300', 30),
       (6, 'https://picsum.photos/200/300', 31),
       (7, 'https://picsum.photos/200/300', 32),
       (8, 'https://picsum.photos/200/300', 33),
       (9, 'https://picsum.photos/200/300', 34),
       (10, 'https://picsum.photos/200/300', 35),
       (11, 'https://picsum.photos/200/300', 36),
       (12, 'https://picsum.photos/200/300', 37),
       (13, 'https://picsum.photos/200/300', 38),
       (14, 'https://picsum.photos/200/300', 39),
       (15, 'https://picsum.photos/200/300', 40);

