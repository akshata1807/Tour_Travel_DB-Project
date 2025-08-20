-- USERS (10 RECORDS)
insert into users (name, email, password_hash, role, registration_date, phone, country) values
('Alice Sharma', 'alice@example.com','hash_pw1','user','2025-08-01','9856713456','India'),
('prashant Mali', 'prashant@example.com','hash_pw2','admin','2025-07-15','9846713916','India'),
('Suhani Devkate', 'suhani@example.com','hash_pw3','user','2025-06-01','8917364286','UK'),
('Kavya Mutukundu', 'kavya@example.com','hash_pw4','user','2025-05-18','9897137625','canada'),
('Juhi Bandekar', 'juhi@example.com','hash_pw5','user','2025-04-25','94379644887','India'),
('Vaidehi Bhagane', 'vaidi@example.com','hash_pw5','admin','2025-07-06','8877664499','South korea'),
('Aastha Bhagat', 'ash@example.com','hash_pw6','user','2025-03-01','9761334795','Australia'),
('saee Khedkar', 'saee@example.com','hash_pw7','user','2025-01-01','8796423733','China'),
('Alsafa Sayyad', 'alsafa@example.com','hash_pw8','user','2025-08-01','9834560077','Canada'),
('saurabh Lonari', 'saurabh@example.com','hash_pw9','user','2025-09-14','9456712450','USA'),
('Atharv Lagad', 'atharv@example.com','hash_pw10','user','2025-03-01','9637993456','India');

-- Destinations (20 record)
insert into destinations(name, description,city,country,category,image_url) values
('Goa Beach','renowned beach destination with nightlife','Goa','India','Beach','images/goa.jpg'),
('Manali Hills','Mountain adventure and trekking','Manali','India','Adventure','images/manali.jpg'),
('Paris City','Historic & Cultural Sites','Paris','France','Cultural','images/paris.jpg'),
('Jaipur Forts','Heritage palaces and Forts','Jaipur','India','Cultural','images/jaipur.jpg'),
('Shimla','Hill Station & nature walks','Shimla','India','Adventure','images/shimla.jpg'),
('Maldives','Tropical island paradise','Male','Maldives','Beach','images/maldives.jpg'),
('New York City','The city that never sleeps','New York','USA','Cultural','images/nyc.jpg'),
('Sydney Opera','iconic sights and beaches','Sydney','Australia','Beach','images/sydney.jpg'),
('Tokyo','Modern city with cultural heritage','Tokyo','Japan','Cultural','images/tokyo.jpg'),
('Amazon Rainforest','Jungle adventure & wildlife','Manaus','Brazil','Adventure','images/amazon.jpg'),
('Venice','canals and historic architecture','Venice','Italy','Cultural','images/venice.jpg'),
('Cape Town','Beaches and Mountain Views','Cape Town','South Africa','Beach','images/capetown.jpg'),
('Swiss Alps','Ski & mountain resort','Zermatt','Switzerland','Adventure','images/swissalps.jpg'),
('Bali','Ilands with beaches & temples','Denpasar','Indonesia','Beach','images/bali.jpg'),
('London','Historic city with museums','London','UK','Cultural','images/london.jpg'),
('Dubai','modern city with desert adventures','Dubai','UAE','Adventure','images/dubai.jpg'),
('Machu Picchu','Ancient Incan city ruins','Cusco','Peru','Cultural','images/machu_picchu.jpg'),
('Reykjavik','Northern lights & glaciers','Reykjavik','Iceland','Adventure','images/reykjavik.jpg'),
('Hawaii','Tropical islands with beaches','Honolulu','USA','Beach','images/hawaii.jpg'),
('Santorini','famous white houses & sunsets','Santorini','Greece','Cultural','images/santorini.jpg');


-- Tour packages(10 records)
insert into packages (title,description,price,duration_days,itinerary,destination_id) values
	('Goa Beach Relaxation','3 Days of beaches and nightlife',3500.00,3,'Day 1 : Beach...Day 2: Explore nightlife',1),
	('Manali Adventure Trek','5 Days trekking and adventure',6000.00,5,'Day 1 : Arrival...Day 5: Departure',2),
	('Paris City Tour','6 Days Cultural and museum',30000.00,6,'Day 1 : Eiffel Tower...Day 6: Seine River cruise',3),
	('Jaipur Heritage Walk','2 Days visiting forts & Markets',4500.00,2,'Day 1 : Amer Fort...Day 2: Local market',4),
	('Shimla Nature Trail','4 Days hiking and relaxation',5200.00,4,'Day 1 : Arrival...Day 4: Departure',5),
	('Maldives Beach Holiday','5 Days of beaches and water sports',25000.00,5,'Day 1 : Arrival...Day 5: Departure',6),
	('NYC city highlights','4 Days city sightseeing',18000.00,4,'Day 1 : Time Square...Day 4: Central Park',7),
	('Sydney Beach & Opera','3 Days of beaches and city tour',15000.00,3,'Day 1 : Opera House...Day 3: Beach day',8),
	('Tokyo Cultural Experience','5 Days temples and shopping',28000.00,5,'Day 1 : Temple tour...Day 5: Shopping',9),
	('Amazon Jungle Expedition','7 Days of wildlife and jungle trek',40000.00,7,'Day 1 : jungle camp...Day 7: Departure',10);


-- Bookings (30 records)
insert into bookings (user_id, package_id, travel_date,travelers,total_price,status) values
(1,1,'2025-09-10',2,7000.00,'pending'),
(2,2,'2025-07-12',1,6000.00,'confirmed'),
(3,3,'2025-09-02',2,6000.00,'confirmed'),
(4,4,'2025-10-14',3,9000.00,'pending'),
(5,5,'2025-08-20',2,6000.00,'confirmed'),
(6,6,'2025-08-13',4,12000.00,'pending'),
(7,7,'2025-03-10',1,3000.00,'pending'),
(8,8,'2025-12-10',4,12000.00,'confirmed'),
(9,9,'2025-04-16',3,5000.00,'confirmed'),
(10,10,'2025-01-03',5,14000.00,'pending'),
(1,7,'2025-07-11',3,8000.00,'pending'),
(3,9,'2025-06-04',1,3000.00,'confirmed'),
(10,9,'2025-03-10',2,7000.00,'pending'),
(3,1,'2025-01-14',6,15000.00,'pending'),
(6,3,'2025-07-11',1,3000.00,'pending'),
(4,1,'2025-09-13',2,7000.00,'pending'),
(2,4,'2025-06-12',3,9000.00,'confirmed'),
(8,3,'2025-11-02',5,13000.00,'confirmed'),
(3,7,'2025-12-13',6,15000.00,'pending'),
(10,5,'2025-03-22',3,9000.00,'confirmed'),
(6,10,'2025-07-03',1,3000.00,'pending'),
(7,3,'2025-03-06',3,7000.00,'pending'),
(3,8,'2026-12-10',4,6000.00,'confirmed'),
(2,9,'2026-03-16',2,3000.00,'confirmed'),
(1,10,'2026-05-03',5,12000.00,'pending'),
(4,7,'2026-03-15',3,8000.00,'pending'),
(3,7,'2026-06-04',4,10000.00,'confirmed'),
(9,10,'2026-04-10',3,7000.00,'pending'),
(3,6,'2026-01-14',1,3000.00,'pending'),
(1,9,'2026-09-10',5,17000.00,'pending');


-- Reviews (15 Records)
insert into reviews (user_id, destination_id,package_id,rating,comment,created_at) values
	(1,1,null,5,'Excellent beach experience!','2025-09-15'),
	(2,null,2,4,'Adventure was thrilling , well organized','2025-10-01'),
	(3,3,null,5,'Paris was magical & the package covered all essentials','2025-11-10'),
	(4,null,4,3,'historical sites were intresting but crowded','2025-03-19'),
	(5,5,null,4,'Beautiful hill station!','2025-03-02'),
	(6,6,null,5,'Maldives was a paradise!','2025-07-18'),
    (7,null,7,4,'NYC has so much to offer, busy but fun','2025-02-02'),
    (8,null,8,4,'Sydney tour was amazing','2025-11-07'),
    (9,9,null,4,'Tokyo was vibrant and full of culture','2025-12-21'),
    (10,null,10,5,'Jungle expedition was unforgottable','2025-07-02'),
    (1,2,null,4,'Manali was refreshing & adventurous!','2025-12-02'),
	(2,1,null,5,'Goa beaches are stunning and lively','2025-06-18'),
    (3,null,3,4,'Paris package has excellent guide','2025-03-17'),
    (4,4,null,3,'Jaipur forts were impressive but bit touristy','2025-01-22'),
    (5,null,5,4,'Shimla package combined leisure and nature well','2025-04-27');
























