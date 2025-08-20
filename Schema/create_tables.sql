-- USERS TABLE
create table users (
user_id serial primary key,
name varchar(100) not null,
email varchar(100) not null unique,
password_hash varchar(200) not null,
role varchar(20) not null check (role IN ('user','admin')),
registration_date TIMESTAMP not null
Default current_timestamp,
phone varchar(20),
country varchar(50),
last_login timestamp
);

-- DESTINATION TABLE
create table destinations (
destination_id serial primary key,
name varchar(100) not null,
description text,
city varchar (100),
country varchar(100),
category varchar (50) not null,
image_url Text
);

-- TOUR PACKAGES  TABLE
create table packages (
package_id serial primary key,
title varchar(150) not null,
description text,
price decimal(10,2) not null check (price > 0),
duration_days integer not null check (duration_days > 0),
itinerary text,
destination_id integer not null references
destinations(destination_id)
);

-- BOOKING TABLE 
create table bookings (
booking_id serial primary key,
user_id integer not null references users(user_id),
package_id integer not null references packages (package_id),
travel_date DATE not null,
travelers integer not null check (travelers > 0),
total_price DECIMAL (10,2) not null check (total_price >=0),
status varchar(20) not null check (status IN ('pending','confirmed','canceled')),
created_at timestamp not null 
default current_timestamp
);

-- REVIEWS TABLE 
create table reviews (
review_id serial primary key,
user_id integer not null references users (user_id),
destination_id integer references destinations(destination_id),
package_id integer references packages(package_id),
rating integer not null check (rating between 1 and 5),
comment text,
created_at timestamp not null default current_timestamp,
      check((destination_id IS not null and package_id IS null)
        or (package_id IS not null and destination_id IS null ))
);

-- CONTACT INQUIRIES TABLE
create table contact_inquiries (
inquiry_id Serial primary key,
name varchar (100) not null,
email varchar (100) not null,
message text not null,
inquiry_type varchar(50) not null,
created_at timestamp not null 
default current_timestamp
);