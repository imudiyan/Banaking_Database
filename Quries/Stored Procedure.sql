/* Store Procedure */

create procedure GetAdminUsers @userRole NVARCHAR(20)
as
begin
set nocount on
select * from dbo.[User] where UserRole = @userRole
end
go
exec GetAdminUsers @userRole = 'admin'



create procedure GetTransactions_WithUserDid (@numRaw as int, @userDid as int )
as
begin 
select TOP(@numRaw)t.TransactionDid,t.TransactionDetails,c.CurrencyCode, 
t.TransactionAmount,t.CreatedDate
from  dbo.[Transaction] t, dbo.Currency c 
where t.CurrencyDid=c.CurrencyDID
AND UserDid = @userDid
end
exec GetTransactions_WithUserDid  @numRaw =100, @userDid =2

--exec GetAccount_WithUserDid 2

create procedure GetBranch_Province @Province NVARCHAR(20)
as
begin
set nocount on
select * from dbo.[Branch] inner join (select CityDid, City, Province, Country 
from dbo.[City]) as CityTable on [Branch].CityDid=CityTable.CityDid where CityTable.Province=@Province;
end
exec GetBranch_Province 'ON'

--exec GetBranch_City

/* Functions */

/* check if user is allow to increase the limit */

--create function dbo.Approve_Or_Disapprove (
--	@point int
--)
--returns char(20) as
--begin
--declare @returnValue char(20);
--if (@point >= 500) set @returnValue= 'Approved';
--if (@point < 500) set @returnValue= 'Disapproved';
--return @returnValue
--end;

--select *, dbo.Approve_Or_Disapprove(dbo.[UserCreditPoints].Points) as 'Ready To Extend Credit Limit' from dbo.[UserCreditPoints]\

/* check status of accounts */

--create function dbo.Check_Status_Account (@status int)
--returns table as
--return
--select *
--from dbo.[Account]
--where IsActive = @status

--select * from dbo.Check_Status_Account(0);

/* check outstanding balance of accounts */
--create function dbo.Outstanding_Balance(@previous int, @current int)
--returns numeric(38,6)
--as
--begin
--return (@current - @previous)
--end;

--select *, dbo.Outstanding_Balance([Account].PreviousBalance, [Account].CurrentBalance) as 'Outstanding Balance' from dbo.[Account]

/* TRIGGER */

drop trigger if exists t_account_insert;
go
create trigger t_account_insert on dbo.[Account] instead of insert
as begin
declare 
@accountNumber nvarchar(128),
@previousBalance float,
@currentBalance float,
@currencyCode nvarchar(3),
@openDate date,
@endDate date,
@isActive int,
@branchDid int,
@userDid int,
@accountTypeDid int

select @accountNumber = AccountNumber, @previousBalance = PreviousBalance, @currentBalance = CurrentBalance, @currencyCode = CurrencyCode, @openDate = OpenDate, @endDate = EndDate, @isActive=IsActive, @branchDid=BranchDid, @userDid=UserDid, @accountTypeDid=AccountTypeDid from inserted;
if CONVERT(date, @endDate) = CONVERT(date, getdate()) set @isActive = 0;
insert into dbo.[Account](AccountNumber, PreviousBalance, CurrentBalance, CurrencyCode, OpenDate, EndDate, IsActive, BranchDid, UserDid, AccountTypeDid) 
values (@accountNumber, @previousBalance, @currentBalance, @currencyCode, @openDate, @endDate, @isActive, @branchDid, @userDid, @accountTypeDid);
end


drop trigger if exists t_currency_insert
go
create trigger t_currency_insert on dbo.[Currency] instead of insert
as begin

declare 
@currencyCode nvarchar(3),
@currencyDescription nvarchar(50)

select @currencyCode=CurrencyCode, @currencyDescription=CurrencyDescription from inserted;
if @currencyCode is null set @currencyCode=SUBSTRING(@currencyDescription, 1, 3)
insert into dbo.[Currency](CurrencyCode, CurrencyDescription) values (@currencyCode, @currencyDescription);
end


drop trigger if exists t_account_type_insert
go
create trigger t_account_type_insert on dbo.[AccountType] instead of insert
as begin

declare 
@accountTypeId nvarchar(3),
@description nvarchar(128),
@interestRate float

select @accountTypeId=AccountTypeId, @description=Description, @interestRate=InterestRate from inserted;
if @accountTypeId is null set @accountTypeId=SUBSTRING(@description, 1, 3)
insert into dbo.[AccountType](AccountTypeId, Description, InterestRate) values (@accountTypeId, @description, @interestRate);
end

