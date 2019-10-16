


-- -- USERS

-- -- CREATE TABLE users (
-- --   id SERIAL PRIMARY KEY NOT NULL,
-- --   name VARCHAR(255) NOT NULL,
-- --   email VARCHAR(255) NOT NULL,
-- --   password VARCHAR(255) NOT NULL
-- -- );

INSERT INTO users (name, email, password) VALUES ('Anthony B', 'email@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO users (name, email, password) VALUES ('Jimmy Y', 'email1@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO users (name, email, password) VALUES ('Tyson J', 'email2@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');




-- -- PROPERTIES

-- -- CREATE TABLE properties (
-- --   id SERIAL PRIMARY KEY NOT NULL,
-- --   owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,

-- --   title VARCHAR(255) NOT NULL,
-- --   description TEXT,
-- --   thumbnail_photo_url VARCHAR(255) NOT NULL,
-- --   cover_photo_url VARCHAR(255) NOT NULL,
-- --   cost_per_night INTEGER  NOT NULL DEFAULT 0,
-- --   parking_spaces INTEGER  NOT NULL DEFAULT 0,
-- --   number_of_bathrooms INTEGER  NOT NULL DEFAULT 0,
-- --   number_of_bedrooms INTEGER  NOT NULL DEFAULT 0,

-- --   country VARCHAR(255) NOT NULL,
-- --   street VARCHAR(255) NOT NULL,
-- --   city VARCHAR(255) NOT NULL,
-- --   province VARCHAR(255) NOT NULL,
-- --   post_code VARCHAR(255) NOT NULL,

-- --   active BOOLEAN NOT NULL DEFAULT TRUE
-- -- );

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
VALUES (1, 'Sun City Home', 'description', 'photo','photo', 100, 4, 5, 5, 'Canada', '100 Ave', 'Vancouver', 'B.C.', 'v23f4h5');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
VALUES (2, 'Jim JAm Home', 'description', 'photo','photo', 111, 5, 5, 5, 'Canada', '200 Ave', 'Vancouver', 'B.C.', 'vg532h2');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
VALUES (3, 'Sea Front Home', 'description', 'photo','photo', 400, 1, 1, 1, 'Canada', '500 Ave', 'Vancouver', 'B.C.', 'h4h5h6k');

-- -- Reservations

-- -- CREATE TABLE reservations (
-- --   id SERIAL PRIMARY KEY NOT NULL,
-- --   start_date DATE NOT NULL,
-- --   end_date DATE NOT NULL,
-- --   property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
-- --   guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE
-- -- );


INSERT INTO reservations (start_date, end_date, property_id, guest_id) VALUES ('2019-07-12', '2019-08-12', 1, 1);
INSERT INTO reservations (start_date, end_date, property_id, guest_id) VALUES ( '2019-07-12', '2019-08-12', 2, 2);
INSERT INTO reservations (start_date, end_date, property_id, guest_id) VALUES ( '2019-07-12', '2019-08-12', 3, 3); 

-- -- property_reviews

-- -- CREATE TABLE property_reviews (
-- --   id SERIAL PRIMARY KEY NOT NULL,
-- --   guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
-- --   property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
-- --   reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
-- --   rating SMALLINT NOT NULL DEFAULT 0,
-- --   message TEXT
-- -- );

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) VALUES (1,1,1,1, 'this is a great place');
INSERT INTO property_reviews(guest_id, property_id, reservation_id, rating, message) VALUES (2,2,2,2, 'this is a super place');
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) VALUES (3,3,3,2, 'this is a awesome place');
