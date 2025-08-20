-- 1. List all destinations by category
select * from destinations where category = 'Adventure';

-- 2. Filter packages by price range
select * from packages where price between 5000 and 35000;

-- 3. Fetch user bookings with package details 
select b.*,p.title, p.price
from bookings b
join packages p on b.package_id = p.package_id
where b.user_id = 1;

-- 4. Get reviews for a specific destination
select * from reviews where destination_id=1;

-- 5. Insert a new user
insert into users (name,email,password_hash,role,country) values
	('Priya kumar','priya@example.com','hash6','user','India');
    
-- 6. Update a booking's status
update bookings set status = 'confirmed' where booking_id=5;

-- 7. Delete a review 
Delete from reviews where review_id =3;

-- 8. pagination: list 10 bookings, page2
select * from bookings order by created_at desc limit 10 offset 10;

-- 9. List all packages for a destination
select * from packages where destination_id=3;

-- 10. Get all pending bookings for a user
select * from bookings where user_id = 1 and status = 'pending';