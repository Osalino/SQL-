create database if not exists boltonsolution;
use boltonsolution;

-- creating tables
create table if not exists volunteers (
    VolunteerID int auto_increment,
    Name varchar(100) not null,
    Lastname varchar(100) not null,
    DateOfBirth date not null,
    Postcode varchar(100) not null,
    Address varchar(100) not null,
    primary key (volunteerID)
);

create table if not exists lecturer(
    LecturerID int auto_increment,
    Name varchar(100) not null,
    Lastname varchar(100) not null,
    DateOfBirth varchar(100) not null,
    primary key (lecturerID)
);

create table if not exists account (
    accountID int auto_increment,
    username varchar(100) not null,
    password varchar(100) not null,
    Role varchar(100) not null,
    email varchar(100) not null,
    primary key (accountID)
);

create table if not exists repairs (
    RepairID int auto_increment,
    RepairDate date not null,
    RepairStartDate date not null,
    RepairEndDate date not null,
    InteriorRepairs boolean default false,
    ExteriorRepairs boolean default false,
    DiagnosisDate date not null ,
    RepairCost decimal(18,2),
    RepairDuration timestamp not null,
    primary key (RepairID)
);


-- insert data to all tables
insert ignore into volunteers (volunteerID, Name, Lastname, Date_of_birth, Postcode, Address)
values (1, 'Samuel','James','2004-09-09','M401JX','14 Briscoe Lane');
insert ignore into volunteers (volunteerID, Name, Lastname, Date_of_birth, Postcode, Address)
values (2, 'Osa','odeh','2005-08-09','AEL',' Road Layton');
# INSERT INTO repairs (RepairID, RepairDate, RepairStartDate, RepairEndDate, InteriorRepairs, ExteriorRepairs, DiagnosisDate, RepairCost, RepairDuration)
# VALUES
#     (1, '2023-10-01', '2023-10-01', '2023-10-02', TRUE, FALSE, '2023-09-30', 150.75, '2023-10-01 08:00:00'),
#     (2, '2023-10-03', '2023-10-03', '2023-10-04', FALSE, TRUE, '2023-10-01', 200.50, '2023-10-03 09:00:00'),
#     (3, '2023-10-05', '2023-10-05', '2023-10-06', TRUE, TRUE, '2023-10-02', 75.25, '2023-10-05 10:00:00'),
#     (4, '2023-10-07', '2023-10-07', '2023-10-08', FALSE, FALSE, '2023-10-03', 300.00, '2023-10-07 11:00:00'),
#     (5, '2023-10-09', '2023-10-09', '2023-10-10', TRUE, TRUE, '2023-10-04', 120.00, '2023-10-09 12:00:00');

select * from volunteers;


