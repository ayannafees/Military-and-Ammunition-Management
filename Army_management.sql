use armymanagement;

create TABLE War(
    Pincode Int,
    start_date date,
    type varchar(20),
    war_status varchar(60),
    casualities boolean,
    primary key (Pincode)
)

insert into War values
(504001, '2020-03-17', 'Surgical Strike', 'Enemy surrendered on 2020-03-19', 0),
(454875, '2020-05-21', 'Terrorist Attack', 'War won on 2021-06-11', 1),
(865451, '2018-06-14', 'Naxalite', 'Enemy surrendered on 2018-07-19', 1),
(655954, '2022-09-28', 'Defensive', 'War is still Active', 0),
(151545, '2021-11-14', 'Surgical Strike', 'Enemy surrendered on 2021-11-17', 0)

select * from War

drop table Squad
create table Squad(
    battalion varchar(35),
    Number_of_Soldier int,
    sergeant_id int
)

insert into Squad values
('Gorkha Rifles', 50, 12001),
('J&K Rifles', 45, 12002),
('Dogra', 51, 12003),
('Jaguar', 44, 12004),
('Hells Angels', 34, 12005),
('Rhinos', 12, 12006),
('First Supersonics', 15, 12007),
('11 Gorkha Rifles', 11, 12008),
('4 Jat', 4, 12009),
('Tiger Sqn', 8, 12010),
('Battle Axes', 17, 12011),
('19th Hyderabad', 22, 12012)

select * from Squad



create table Sergeant(
    sergeant_id int,
    sergeant_name varchar(20)
)

insert into Sergeant values
(12001, 'GD Bakshi'),
(12001, 'BS Tiwari'),
(12001, 'JD Bassi'),
(12001, 'AP Singh'),
(12001, 'PS Pratap')

select * from Sergeant


create table Arsenal(
    Arsenal_id int,
    Arsenal_name varchar(20),
    Destruction_caused int,
    company_name varchar(50)
)

insert into Arsenal values
(15001, 'F-18 Hornet',      35000, 'Lockheed Martin'),
(15002, 'Sukhoi 400',       25000, 'Almaz-Antley'),
(15003, 'Mirage 200S',      31000, 'Thales'),
(15004, 'S-400 triumph',    11500, 'Almaz-Antley'),
(15005, 'Bofors L60 IWM',     600, 'Leonardo'),
(15006, 'NSV Machine Gun',    700, 'General Dynamics'),
(15007, 'Barret M95',         450, 'Bae Systems'),
(15008, 'AK-47',              350, 'Raytheon'),
(15009, '12 Bore PAG',       1100, 'Thales'),
(15010, 'Brahmos 1500A',    20000, 'Almaz-Antley')

select * from Arsenal


create table Arsenal_tender(
    company_name varchar(20),
    country_name varchar(15)
)

insert into Arsenal_tender values
('Lockheed Martin', 'United States'),
('Almaz-Antley', 'Russia'),
('Thales', 'France'),
('Leonardo', 'Italy'),
('General Dynamics', 'United States'),
('Bae Systems', 'United Kingdom'),
('Raytheon', 'United States')

select * from Arsenal_tender


drop table reward
create table reward(
    medal_name varchar(20),
    year int,
    soldier_id int
)

insert into reward values
('Bharat Ratna', 2019, 20013),
('Padma Shri', 2018, 20005),
('Param Vir Chakra', 2022, 20003),
('Ashoka Chakra', 2017, 20006),
('Padma Vibushan', 2018, 20009),
('Padma Shri', 2020, 20010),
('Ashok Chakra', 2021, 20002),
('Bharat Ratna', 2022, 20004),
('Kriti Chakra', 2019, 20007),
('Vir Chakra', 2018, 20020)

select * from reward



create table soldier_war_status(
    soldier_id int,
    Pincode int,
    last_date date,
    status varchar(5)
)

insert into soldier_war_status values
(20001, 504001, '2022-10-18', 'Alive'),
(20002, 504001, '2022-05-18', 'Alive'),
(20003, 504001, '2022-11-18', 'Alive'),
(20004, 504001, '2022-06-18', 'Alive'),
(20005, 454875, '2022-07-18', 'Alive'),
(20006, 454875, '2022-03-18', 'Dead'),
(20007, 454875, '2022-10-18', 'Alive'),
(20008, 454875, '2022-10-18', 'Alive'),
(20009, 865451, '2022-10-18', 'Alive'),
(20010, 865451, '2022-11-18', 'Alive'),
(20011, 865451, '2022-07-18', 'Alive'),
(20012, 865451, '2022-08-18', 'Alive'),
(20013, 655954, '2021-12-18', 'Dead'),
(20014, 655954, '2022-09-18', 'Alive'),
(20015, 655954, '2022-09-18', 'Alive'),
(20016, 151545, '2022-11-18', 'Alive'),
(20017, 151545, '2022-11-18', 'Alive'),
(20018, 151545, '2022-10-18', 'Alive'),
(20019, 151545, '2022-10-18', 'Alive'),
(20020, 151545, '2022-08-18', 'Alive')

select * from soldier_war_status



create table location1(
    Pincode int,
    district varchar(15)
)

insert into location1 values
(504001, 'Adilabad'),
(454875, 'Chambal'),
(865451, 'Ramgarh'),
(655954, 'AnantNag'),
(151545, 'Amritsar'),
(648455, 'Baramula'),
(646454, 'Bandipur')

select * from location1



create table location2(
    district varchar(25),
    state varchar(30)
)

insert into location2 values
('Adilabad' ,'Andhra Pradesh'),
('Chambal'  ,'Madhya Pradesh'),
('Ramgarh'  ,'Jharkhand'),
('AnantNag' ,'Jammu & Kashmir'),
('Amritsar' ,'Punjab'),
('Baramula' ,'Jammu & Kashmir'),
('Bandipur' ,'Jammu & Kashmir')

select * from location2



create table location3(
    state varchar(30),
    country varchar(20)
)

insert into location3 values
('Andhra Pradesh', 'India'),
('Madhya Pradesh', 'India'),
('Jharkhand', 'India'),
('Jammu & Kashmir', 'India'),
('Punjab', 'India')

select * from location3



create table posting(
    Pincode int,
    soldier_id int,
    date date
)

insert into posting(soldier_id, Pincode,date) values
(20001, 504001, '2022-09-18'),
(20002, 504001, '2021-04-11'),
(20003, 504001, '2021-10-17'),
(20004, 504001, '2020-05-14'),
(20005, 454875, '2020-06-15'),
(20006, 454875, '2020-01-16'),
(20007, 454875, '2022-09-17'),
(20008, 454875, '2022-09-19'),
(20009, 865451, '2021-10-06'),
(20010, 865451, '2020-01-21'),
(20011, 865451, '2020-02-22'),
(20012, 865451, '2021-03-26'),
(20013, 655954, '2020-05-10'),
(20014, 655954, '2022-09-01'),
(20015, 655954, '2021-09-15'),
(20016, 151545, '2021-10-03'),
(20017, 151545, '2022-09-09'),
(20018, 151545, '2022-05-29'),
(20019, 151545, '2021-06-20'),
(20020, 151545, '2022-03-10')

select * from posting


create table Work(
    Type varchar(25),
    soldier_id int
)

insert into Work(soldier_id, Type) values
(20001, 'Higher Official'),
(20002, 'Cavalry'),
(20002, 'Construction'),
(20003, 'Pilot'),
(20004, 'Ship Commander'),
(20005, 'Tank Driver'),
(20006, 'Cavalry'),
(20006, 'Construction'),
(20007, 'Pilot'),
(20008, 'Ship Commander'),
(20009, 'Cavalry'),
(20009, 'Construction')

select * from Work



Create table salary(
    Type varchar(25),
    Salary int
)

insert into salary values
('Higher Official', 80000),
('Cavalry', 35000),
('Pilot', 65000),
('Ship Commander', 45000),
('Tank Driver', 40000),
('Construction', 25000)

select * from Salary



create table soldier(
    soldier_id int primary key,
    name varchar(50),
    dept varchar(50),
    height int, 
    weight int, 
    gender char(1),
    dob date,
    doj date,
    soldier_rank varchar(30), 
    battalion varchar(40)
)

insert into soldier values(20001,'Ajai Kumar Singh','Army',170,64,'M',                  '1964-07-25','1984-11-26','Lieutenant General','Gorkha Rifles');
insert into soldier values(20002,'Vikram Batra','Army',182,74,'M',                      '1974-09-09','1997-12-06','Captain','J&K Rifles');
insert into soldier values(20003,'Ian Cardozo','Army',173,74,'M',                       '1937-08-07','1957-04-24','Major General','Gorkha Rifles');
insert into soldier values(20004,'Mohammad Usman','Army',188,108,'M',                   '1912-07-15','1935-03-19','Brigadier','Dogra');
insert into soldier values(20005,'Somnath Sharma','Army',186,84,'M',                    '1923-01-31','1942-02-22','Major','19th Hyderabad');
insert into soldier values(20006,'Manoj Kumar Pandey','Army',183,65,'M',                '1975-06-25','1997-06-07','Lieutenant','Gorkha Rifles');
insert into soldier values(20007,'Abjeet Singh Mamik','Army',180,73,'M',                '1944-12-28','1925-04-17','Major','11 Gorkha Rifles');
insert into soldier values(20008,'Saurabh Kalia','Army',178,74,'M',                     '1976-07-29','1999-01-18','Captain','4 Jat');
insert into soldier values(20009,'Karun Krishna Majumdar','Airforce',187,80,'M',        '1913-09-06','1933-12-16','Wing Commander','Tiger Sqn');
insert into soldier values(200010,'Rakesh Sharma','Airforce',181,77,'M',                '1949-01-13','1970-10-08','Wing Commander','Battle Axes');
insert into soldier values(200011,'Pratap Chandra Lal','Airforce',179,79,'M',           '1916-12-06','1939-11-14','Air Chief Marshall','Battle Axes');
insert into soldier values(200012,'Rakesh Kumar Singh Bhadauria','Airforce',184,82,'M', '1959-09-15','1980-06-15','Air Chief Marshall','Jaguar');
insert into soldier values(200013,'Amar Preet Singh','Airforce',186,81,'M',             '1963-05-08','1984-12-21','Air Marshall','Hells Angels');
insert into soldier values(200014,'Sandeep Singh','Airforce',185,83,'M',                '1963-01-15','1983-12-22','Air Marshall','Rhinos');
insert into soldier values(200015,'Vivek Ram Chaudhari','Airforce',183,78,'M',          '1962-09-04','1982-10-29','Air Chief Marshall','First Supersonics');
insert into soldier values(200016,'Madhuri Kanitkar','Army',153,62,'F',             '1962-09-04','1982-10-29','Air Chief Marshall','Dogra');
insert into soldier values(200017,'Rajshree Ramasethu','Army',155,56,'F',           '1962-09-04','1982-10-29','Air Chief Marshall','Jaguar');
insert into soldier values(200018,'Arti Sarin','Airforce',179,58,'F',                   '1962-09-04','1982-10-29','Air Chief Marshall','Battle Axes');
insert into soldier values(200019,'Punita Arora','Army',181,60,'F',                 '1962-09-04','1982-10-29','Air Chief Marshall','J&K Rifles');
insert into soldier values(200020,'Mitali Madhumita','Army',165,58,'F',             '1962-09-04','1982-10-29','Air Chief Marshall','19th Hyderabad');

SELECT * from soldier
