create table if not exists netology.CUSTOMERS
(
    id serial primary key,
    name varchar not null,
    surname varchar not null,
    age int     not null,
    phone_number varchar not null
);


create table if not exists netology.ORDERS
(
    id serial primary key,
    date timestamp not null,
    customer_id int,
    product_name varchar not null,
    amount int not null,
    foreign key (customer_id) references netology.CUSTOMERS(id)
);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('ИВАН', 'ПЕТРОВ', 45, '+79999999999');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('АРТЕМ', 'ТУПАСОВ', 30, '+79888888888');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('АЛЕКСЕЙ', 'ПОПОВ', 22, '+79777777777');

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'laptop', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'laptop', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'iphone', 2);