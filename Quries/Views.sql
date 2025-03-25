/* VIEWS */

--CREATE VIEW Account_End AS
--SELECT AccountNumber, CurrentBalance, CurrencyCode, EndDate
--FROM [Account]
--WHERE Year(EndDate) <2025;--CREATE VIEW User_Last_Login AS
--SELECT Login_Histrory.FirstName, Login_Histrory.LastName, Login_Histrory.Username, 
--MAX(Login_Histrory.LoginTime) as Last_login
--FROM (
--	SELECT u.FirstName, u.LastName, u.Username, lh.LoginTime
--	FROM dbo.[User] u, dbo.LoginHistory lh
--	WHERE u.UserDid = lh.UserDid) as Login_Histrory
--GROUP BY Login_Histrory.FirstName, Login_Histrory.LastName, Login_Histrory.Username
--Having MAX(Login_Histrory.LoginTime) <'01-01-2019'



--CREATE VIEW User_Account_Deatils AS
--SELECT [User].FirstName, [User].LastName, AccountType.Description, Account.AccountNumber, 
--Branch.BranchId, Branch.BranchName, City.City
--FROM  Account INNER JOIN
--	AccountType ON Account.AccountTypeDid = AccountType.AccountTypeDid INNER JOIN
--	Branch ON Account.BranchDid = Branch.BranchDid INNER JOIN
--	City ON Branch.CityDid = City.CityDid INNER JOIN
--	[User] ON Account.UserDid = [User].UserD

/* TRANSACTION */

CREATE PROCEDURE Account_Inactivation @endDate datetime, @AccountNumber NVARCHAR(20)
AS 
BEGIN
	BEGIN TRANSACTION
	Update dbo.Account SET EndDate = @endDate WHERE AccountNumber = @AccountNumber
	Update dbo.Account SET IsActive =0 where AccountNumber = @AccountNumber
	COMMIT TRANSACTION
END
EXEC Account_Inactivation @endDate = '2021-05-21', @AccountNumber = 531127369

/* SUB QUERIES */

/* select user with credit point above 500 */

DECLARE @CredPointAmount int ;
SET @CredPointAmount = 500;
SELECT u.FirstName, u.LastName, u.DOB, u.Email,u.MobileNumber
from dbo.[User] u 
WHERE u.UserDid in (
	SELECT ucp.UserDid 
	from dbo.UserCreditPoints ucp 
	where ucp.Points > @CredPointAmount);

/* select account type cheque */

DECLARE @BranchName NVARCHAR(50)
SET @BranchName = 'TB King St'
SELECT u.FirstName, u.LastName, u.Email, u.MobileNumber 
FROM dbo.[User] u
WHERE u.CityDid IN (
	SELECT c.CityDid 
	from dbo.Branch b, dbo.City c
	WHERE b.CityDid = c.CityDid
	AND b.BranchName= @BranchName)

/* select debit transaction */

declare
@table nvarchar(128),
@innerTable nvarchar(128),
@sql nvarchar(max),
@condition nvarchar(50),
@conditionVariable nvarchar(50);

DECLARE @AccountType VARCHAR(20)
SET @AccountType = 'Saving Account'
SELECT * from dbo.Account
where AccountDid IN(
	SELECT AccountDid FROM dbo.AccountType
	WHERE Description = @AccountType)



