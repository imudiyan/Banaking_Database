/* CTE */

/*1*/
;with CreatedAfter20_CTE (FirstName, LastName, CreatedYear) as (
	select FirstName, LastName, YEAR(CreateDate)
	from dbo.[User]
	where YEAR(CreateDate) >= 2020
)

select * from CreatedAfter20_CTE;

/*2*/
;with Transaction_CTE(UserDid, NumberOfTransactions) as (
	select UserDid, count(*)
	from dbo.[Transaction]
	group by UserDid
)

select UserDid, NumberOfTransactions as "Number Of Transactions Per Person"
from Transaction_CTE

/*3*/
;with UsingUSD_CTE (AccountNumber, UserDid, CurrentBalance, CurrencyCode) as (
	select AccountNumber, UserDid, CurrentBalance, CurrencyCode
	from dbo.[Account]
	where CurrencyCode = 'USD'
)

select * from UsingUSD_CTE

/* GROUP BY AND DYNAMIC QUERIES */

/* get the current money account 2 in account table */

--declare
--@table nvarchar(128),
--@sql nvarchar(max),
--@whereClause nvarchar(50),
--@groupBy nvarchar(100);

set @table = N'dbo.[Account]';
set @whereClause = 2;
set @groupBy = N'UserDid';
set @sql = N'select UserDid, SUM(CurrentBalance) as OverallBalance from ' + @table + 'where UserDid= ' + @whereClause + 'group by ' + @groupBy;

EXEC sp_executesql @sql;

/* count the number of modification from a user */

--declare
--@table nvarchar(128),
--@sql nvarchar(max),
--@whereClause nvarchar(50),
--@groupBy nvarchar(100);

set @table = N'dbo.[UserAccountModification]'
set @groupBy = N'UserDid';
set @sql = N'select UserDid, count(*) as ModificationTimes from ' + @table + 'group by ' + @groupBy;

EXEC sp_executesql @sql;

/* get all the cities that have bank's branches */

declare
--@table nvarchar(128),
--@innerTable nvarchar(128),
--@sql nvarchar(max),
--@groupBy nvarchar(100); 

set @innerTable = N'dbo.[Branch]'
set @table = N'dbo.[City]'
set @groupBy = N'CityDid'
set @sql = N'select * from ' + @table + ' right join (select CityDid, count(*) as NumberofBranches from ' + @innerTable + ' group by ' + @groupBy + ') as GroupedBranch on '+ @table +'.CityDid=GroupedBranch.CityDid';

EXEC sp_executesql @sql;

/* get all the bank types and theirs number of accounts */

declare
--@table nvarchar(128),
--@innerTable nvarchar(128),
--@innerName nvarchar(128),
--@sql nvarchar(max),
--@groupVariable nvarchar(100); 

set @innerTable = N'dbo.[Account]'
set @table = N'dbo.[AccountType]'
set @groupVariable = N'AccountTypeDid'
set @innerName = N'GroupedAccount'
set @sql = N'select * from ' + @table + ' right join (select '+ @groupVariable +', count(*) as NumberofAccounts from ' + @innerTable + ' group by ' + @groupVariable + ') as ' + @innerName + ' on '+ @table +'.' + @groupVariable +'='+ @innerName +'.' + @groupVariable;

EXEC sp_executesql @sql;

/* get the currencies with all the credit point they have */

declare
@table nvarchar(128),
@innerTable nvarchar(128),
@innerName nvarchar(128),
@sql nvarchar(max),
@groupVariable nvarchar(100); 

set @innerTable = N'dbo.[UserCreditPoints]'
set @table = N'dbo.[Currency]'
set @groupVariable = N'CurrencyDID'
set @innerName = N'GroupedCurrencies'
set @sql = N'select * from ' + @table + ' right join (select '+ @groupVariable +', count(*) as NumberofAccounts, sum(Points) as TotalCreditPoint from ' + @innerTable + ' group by ' + @groupVariable + ') as ' + @innerName + ' on '+ @table +'.' + @groupVariable +'='+ @innerName +'.' + @groupVariable;

EXEC sp_executesql @sql;