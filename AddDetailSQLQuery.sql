SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SpAddDetails]
(
@FirstName varchar(100),
@LastName varchar(100),
@Address varchar(250),
@City varchar(100),
@State varchar(100),
@Zip varchar(6),
@PhoneNumber varchar(12),
@Email varchar(100),
@Type varchar(150),
@AddressBookName varchar(100)
)
as
begin
insert into AddressBook values
(@FirstName,@LastName,@Address,@City,@State,@Zip,@PhoneNumber,@Email,@Type,@AddressBookName)

update AddressBook set City='Memphis' where Firstname='David'

delete from AddressBook where Firstname = 'mayur'

select firstname from AddressBook where city = 'Memphis' OR state = 'Ohio'
end
GO
SELECT * FROM AddressBook

