create database teamecommercedb;
use teamecommercedb;

create table user (
uid int auto_increment,
name varchar(255),
email varchar(255),
phone varchar(255),
username varchar(255),
password varchar(255),
role varchar(255),
street_name varchar(255),
apt varchar(255),
city varchar(255),
state varchar(255),
zip int,
primary key(uid)
);

create table product (
    pid int auto_increment,
    product_name varchar(255),
    description varchar(255),
    category varchar(255),
    price float,
    stock_amt int,
    picture longblob,
    primary key(pid)
);
create table cart (
    cart_id int auto_increment,
    uid int,
    paid boolean,
    total double,
    date datetime,
    primary key(cart_id),
    foreign key(uid) references user(uid)
);

create table cart_item (
    cart_item_id int auto_increment,
    pid int,
    cart_id int,
    quantity int,
    primary key(cart_item_id),
    foreign key(pid) references product(pid),
    foreign key(cart_id) references cart(cart_id)
);

INSERT INTO user (name, email, phone, username, password, role)
    values ("John Smith", "js@gmail.com", "1234567890", "jsmith01", "Password", "admin"),
    ("Susan Williams", "sw@yahoo.com", "1324657980", "swilliams01", "Password", "admin");

INSERT INTO user (name, email, phone, username, password, role, street_name, city, state, zip)
    values ("John Smith", "jsmith@gmail.com", "1029384756", "js01", "Password", "user", "123 Peach Ave", "Manhattan", "NY", 12345),
    ("Mary Jones", "mjones@email.com", "2134657980", "mjones01", "Password", "user", "123 Orange St", "Brooklyn", "NY", 09468),
    ("Tifanny Smith", "ts@gmail.com", "2345678901", "tsmith01", "Password", "user", "207 Strawberry Ave", "Chicago", "IL", 40765);
    
INSERT INTO user (name, email, phone, username, password, role, street_name, apt, city, state, zip)
    values ("Peter Park", "peterp@yahoo.com", "3124567890", "ppark01", "Password", "user", "265 Apple Cir", "5C", "Elizabeth", "NJ", 07985),
    ("Jessica Belle", "jb@gmail.com", "jbelle01", "3142758690", "Password", "user", "108 Kiwi Rd", "1A", "Seattle", "WA", 34982);
    
    INSERT INTO product (product_name, description, category, price, stock_amt)
    values ("Tanjiro Kamado's Black Nichirin Blade (Demon Slayer)","Carbon steel blade with wooden scabbard","Anime", 110.99, 30),
    ("Kirito's Elucidator Sword (Sword Art Online)","Carbon steel blade with wooden scabbard","Anime", 129.99, 20),
    ("Bamboo Sword (Shinai) for Kendo","Set of 2 real bamboo swords with leather grip","Japanese", 49.99, 120),
    ("Handmade Katana","Handmade manganese katana with copper tsuba and lacquered hardwood scabbard","Japanese", 249.00, 5),
    ("Handmade Tang Dynasty Sword","Handmade damacus steel sword with copper fittings and blackwood scabbard","Chinese", 299.00, 8),
    ("Handmade Song Dynasty Sword","Handmade 1095 carbon steel sword with copper fittings and blackwood scabbard","Chinese", 239.00, 10),
    ("Handmade Ninjato","Handmade 1045 carbon steel sword with alloy fittings, black saya, and brown cord","Japanese", 109.00, 5),
    ("Spanish Fluted Cup Rapier","Carbon steel rapier with elegant cup style hilt","Spanish", 134.00, 25),
    ("Sasuke's Sword of Kusanagi (Naruto)","1045 carbon steel blade with wooden shealth","Anime", 159.99, 24),
    ("Glamdring Sword of Gandolf (The Hobbit)","Stainless steel blade with blue leather wrapped grip","Movie", 199.99, 18),
    ("Medieval Holy Knight Templar Sword with Scabbard","Carbon steel blade with black leather grip and black leather wrapped scabboard","Medieval", 145.00, 22),
    ("The Vargas Claymore Sword","Stainless steel blade with shealth","Medieval", 66.00, 26),
    ("Medieval Archers Sword","Stainless steel blade with shealth","Medieval", 84.99, 20);