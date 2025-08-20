# TOUR & TRAVEL WEBSITE DATABASE

## PROJECT OVERVIEW

This project implements a relational database for a our &Travel website, developed using ***MYSQL*** and managed via ***MYSQL Woekbench**. The database models core functionalities such as user management, destinations , tour packages, bookings , reviews,and contact inquiries, with normalized tables to maintain data inetgrity and support efficient querying.

## DATABASE CHOICE 

- **MYSQL** was selected due to its wide adaption, ease of use , and powerful features like foreign key , indexing , and stored procedures. 
- MYSQL Workbench provides a comprehensive GUI for schema design , query testing , and ER diagram generation.

## SECHMA DESIGN 

### Entities and Relationships

| Entity              | Description                                        |
|---------------------|--------------------------------------------------|
| `users`             | Stores user personal and login information.      |
| `destinations`      | Contains destination details with location data. |
| `packages`          | Tour packages associated with destinations.       |
| `bookings`          | Records travel bookings made by users.            |
| `reviews`           | User reviews for destinations or packages.        |
| `contact_inquiries` | User inquiries and support messages.               |

## KEY FEATURES

- Primary keys use `INT AUTO_INCREMENT`.
- Constraints using `UNIQUE` for emails and `ENUM` for roles and statuses ensure data validity.
- Foreign key relationships enforce refrential integrity.
- Reviews constrain to relate to either a destination or package (but not both).

## SETUP INSTRUCTIONS

## PREREQUISITES

- Install MYSQL Server 
- Use MYSQL Workbrnch to mange and run SQL scripts.

## STEPS

1. Clone or download the repository.
2. Open MYSQL Workbench and connect to your MYSQl server.
3. Run the schema creation script:
4. Run indexes and constraints :
5. Seed intitial data.
6. Test sample queries. 


## CHALLENGES AND SOLUTIONS 

- Usinh `ENUM` in MYSQL aided controlling allowed values for roles and statuses.
- MYSQL's partial support for `CHECk` constraints required additional validations in backend or application layers for rating and price ranges.
- Ensured data consistency with explicit foreign  keys and uniqie constraints.

## INTEGRATION NOTES 

- Backend must hash passwords before storing in the `users` table yo keep security intact.
- The structure supports seamless integration with PHP, Node.js (Sequelize), or other backend frameworks.
- Queries support filtering , sorting , and pagination suitable for frontend interactions. 

## FUTURE WORK 

- I mplements triigers or stored procedure for audit logging.
- Expand user profile fields for better personalization.
- Introduce doft deletes with status flags instead of hard deletes. 

## ER DIAGRAM 

 See the ER DIAGRAM ` ERD.png ` file.
<img width="933" height="874" alt="ERD png" src="https://github.com/user-attachments/assets/ec8711e1-acb1-4d4e-812a-b502e447e2d1" />

explaination for the ER diagram follows:

- Users (1:M) Bookings --> One user can make many bookings .
- Users (1:M) Reviews --> One user can leave many reviviews.
- Destinations(1:M) Tour Packages --> one destoination can have many tour packages .
- Tour packages (1:M) Bookings ---> one package can be booked by many users.
- Destination (1:m) Reviews ---> many reviews can be written for one destinations . 
- Tour Pcakages (1:M) Reviews ---> many reviews can be written for one package.


**AUTHOR :** 
AKSHATA LONARI 

**Date :**
20/08/2025


