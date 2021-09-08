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
(
@FirstName,@LastName,@Address,@City,@State,@Zip,@PhoneNumber,@Email,@Type,@AddressBookName
)
end
GO
SELECT * FROM AddressBook