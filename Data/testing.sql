-- Test for duplicate email (should fail)
insert into users (name, email, password_hash,role, country) values
('Test User', 'alice@example.com','hash_test','user','India');

-- Test for invalid rating (should fail)
insert into reviews (user_id, destination_id,package_id,rating,comment)
values(2,2,null,6,'Invalid rating');

-- Test for negative price (should fail)
insert into packages(title,description,price,duration_days,itinerary,destination_id)
values('cheap trip','test',-1000.00,2,'test',1);