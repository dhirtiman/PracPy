CREATE TABLE Route(
    route_id int AUTO_INCREMENT primary key,
    source VARCHAR(50),
    destination varchar(50),
    fare FLOAT,
    time INT
);