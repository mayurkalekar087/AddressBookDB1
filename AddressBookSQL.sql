create database AddressbookDB
use AddressbookDB
select DB_NAME();

create table AddressBook
(
 ID int identity(1,1) primary key,
 firstname varchar(100) not null,
 lastname varchar(100) not null,
 address varchar(250) not null,
 city varchar(100) not null,
 state varchar(100) not null,
 zip varchar(6) not null,
 phonenumber varchar(12) not null,
 email varchar(100) not null
);
select * from AddressBook;

insert into AddressBook values
('Ismael ','Whitlatch','2319  Burton Avenue','Memphis','Tennessee','38117','901-765-8987','sa5bxlla2e@temporary-mail.net'),
('Christopher ','Forst','2846  Tori Lane','Salt Lake City','Utah','84113','801-587-0002','ctmgz50esj@temporary-mail.net'),
('David ','Washington','3379  Echo Lane','TULAROSA','New Mexico','88352','269-962-6511','wkephpw9q2@temporary-mail.net'),
('Byron ','Daniels','4385  West Street','Grand Rapids','Michigan','49546','616-575-8233','6y4ug4knmib@temporary-mail.net'),
('James ','Juarez','12564  Clay Street','Indianapolis','Indiana','46214','317-410-3617','penlzpd00f@temporary-mail.net')

UPDATE AddressBook
SET city = 'Frankfurt', state = 'Ohio'
WHERE firstname = 'David';
select * from AddressBook;

DELETE FROM AddressBook WHERE firstname='Christopher'
select * from AddressBook

select firstname from AddressBook where city = 'Memphis' OR state = 'Ohio'

select * from AddressBook
insert into AddressBook values
('Tyler ','Watson','4668 Grand Avenue','Memphis','Tennessee','38117','659-765-8987','sa5356la2e@temporary-mail.net')

select COUNT(firstname) from AddressBook where city = 'Memphis' or state = 'Tennessee'

select * from AddressBook where city = 'Memphis' order by firstname

ALTER TABLE AddressBook 
ADD type varchar(150),
	name varchar(100)
update AddressBook set type = 'Friend', name = 'FriendsBook' where firstname in ('Matthew','David','Tyler','Janice','Liam');
update AddressBook set type = 'Family', name = 'FamilyBook' where firstname in ('Ismael','Byron');
update AddressBook set type = 'Colleague', name = 'Office' where firstname = 'James'
select * from AddressBook

select COUNT(firstname) from AddressBook where type = 'Friend'

update AddressBook set type = 'Friend' where firstname in ('Tyler'); 
insert into AddressBook values
('Tyler ','Watson','4668 Grand Avenue','Memphis','Tennessee','38117','659-765-8987','sa5356la2e@temporary-mail.net','Family','FriendsBook');
