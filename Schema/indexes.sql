-- INDEXES FOR FASTER QUERIES
create index idx_user_email on users(email);
create index idx_dest_category on destinations(category);
create index idx_dest_city_country on destinations(city,country);
create index idx_package_price on packages(price);
create index idx_package_destination on packages(destination_id);
create index idx_booking_user on bookings (user_id);
create index idx_booking_status on bookings(status);
create index idx_review_dest on reviews (destination_id);
create index idx_review_package on reviews (package_id);