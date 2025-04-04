USE [BankingDB]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityDid], [City], [Province], [Country]) VALUES (1, N'Thunder Bay', N'ON', N'CAN')
INSERT [dbo].[City] ([CityDid], [City], [Province], [Country]) VALUES (2, N'Toronto', N'ON', N'CAN')
INSERT [dbo].[City] ([CityDid], [City], [Province], [Country]) VALUES (3, N'Vancouver', N'BC', N'CAN')
INSERT [dbo].[City] ([CityDid], [City], [Province], [Country]) VALUES (4, N'Ottawa', N'ON', N'CAN')
INSERT [dbo].[City] ([CityDid], [City], [Province], [Country]) VALUES (5, N'Edmonto', N'AL', N'CAN')
INSERT [dbo].[City] ([CityDid], [City], [Province], [Country]) VALUES (6, N'Victoria', N'BC', N'CAN')
INSERT [dbo].[City] ([CityDid], [City], [Province], [Country]) VALUES (7, N'Winnipeg', N'MA', N'CAN')
INSERT [dbo].[City] ([CityDid], [City], [Province], [Country]) VALUES (8, N'Quebec City', N'QE', N'CAN')
INSERT [dbo].[City] ([CityDid], [City], [Province], [Country]) VALUES (9, N'Whitehorse', N'YU', N'CAN')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserDid], [FirstName], [LastName], [DOB], [Address], [Username], [Password], [Email], [MobileNumber], [SinNumber], [CreateDate], [UserRole], [CityDid]) VALUES (2, N'Quan', N'Bui', CAST(N'1997-10-27' AS Date), N'960 William St, Thunder Bay', N'buiquan2710', N'123', N'buiquan2710@gmail.com', N'4375335833', N'123456789', CAST(N'2021-01-11T00:00:00.000' AS DateTime), N'admin', 1)
INSERT [dbo].[User] ([UserDid], [FirstName], [LastName], [DOB], [Address], [Username], [Password], [Email], [MobileNumber], [SinNumber], [CreateDate], [UserRole], [CityDid]) VALUES (9, N'Linda', N'Pyle', CAST(N'1991-06-07' AS Date), N'1795 Parkdale Avenue', N'dale', N'oa6Hoh4ebie', N'6o7q2hb2oj9@temporary-mail.net', N'9055457304', N'437748445', CAST(N'2021-01-11T00:00:00.000' AS DateTime), N'admin', 2)
INSERT [dbo].[User] ([UserDid], [FirstName], [LastName], [DOB], [Address], [Username], [Password], [Email], [MobileNumber], [SinNumber], [CreateDate], [UserRole], [CityDid]) VALUES (10, N'Sue', N'Veilleux', CAST(N'1981-09-22' AS Date), N'758 Bay Street', N'adrian2005', N'kienooDa5', N'guf115l1ag@temporary-mail.net', N'6478922910', N'372073049', CAST(N'2021-01-11T00:00:00.000' AS DateTime), N'user', 2)
INSERT [dbo].[User] ([UserDid], [FirstName], [LastName], [DOB], [Address], [Username], [Password], [Email], [MobileNumber], [SinNumber], [CreateDate], [UserRole], [CityDid]) VALUES (11, N'Dianne', N'J Wiseman', CAST(N'1969-03-23' AS Date), N'4270 Alaska Hwy', N'nya', N'go7Aedohv7', N'qp5o8xfg5cn@temporary-mail.net', N'2502327839', N'458396785', CAST(N'2019-05-23T00:00:00.000' AS DateTime), N'user', 3)
INSERT [dbo].[User] ([UserDid], [FirstName], [LastName], [DOB], [Address], [Username], [Password], [Email], [MobileNumber], [SinNumber], [CreateDate], [UserRole], [CityDid]) VALUES (12, N'Michael', N' M Buzbee', CAST(N'1980-06-05' AS Date), N'2842 Charleton Ave', N'GrumpyPvP', N'Buung5AePh', N'ap21l25qr1g@temporary-mail.net', N'9058653383', N'703764332', CAST(N'2018-09-01T00:00:00.000' AS DateTime), N'user', 1)
INSERT [dbo].[User] ([UserDid], [FirstName], [LastName], [DOB], [Address], [Username], [Password], [Email], [MobileNumber], [SinNumber], [CreateDate], [UserRole], [CityDid]) VALUES (13, N'Clinton ', N'T Hunt', CAST(N'1971-07-23' AS Date), N'169 Harvest Moon Dr', N'needyourblood', N'faa1Ooc4uu9', N'grv0wgkn5jd@temporary-mail.net', N'9059439653', N'502989528', CAST(N'2020-12-29T00:00:00.000' AS DateTime), N'admin', 4)
INSERT [dbo].[User] ([UserDid], [FirstName], [LastName], [DOB], [Address], [Username], [Password], [Email], [MobileNumber], [SinNumber], [CreateDate], [UserRole], [CityDid]) VALUES (15, N'Robert', N' M Guzman', CAST(N'1992-10-12' AS Date), N'3229 Quayside Dr', N'minerapocalypse', N'eij4eiT6', N'7bni62cs7w4@temporary-mail.net', N'6043760688', N'032292989', CAST(N'2005-01-23T00:00:00.000' AS DateTime), N'user', 5)
INSERT [dbo].[User] ([UserDid], [FirstName], [LastName], [DOB], [Address], [Username], [Password], [Email], [MobileNumber], [SinNumber], [CreateDate], [UserRole], [CityDid]) VALUES (17, N'Harry ', N'J Sparks', CAST(N'1937-07-16' AS Date), N'2922 Barton Street', N'Nilsta', N'eiYahngoT1k', N'r9iv2qxf21h@temporary-mail.net', N'9057307638', N'795014356', CAST(N'2012-11-07T00:00:00.000' AS DateTime), N'user', 9)
INSERT [dbo].[User] ([UserDid], [FirstName], [LastName], [DOB], [Address], [Username], [Password], [Email], [MobileNumber], [SinNumber], [CreateDate], [UserRole], [CityDid]) VALUES (18, N'Randy ', N'A Springer', CAST(N'1973-09-22' AS Date), N'4943 Parkdale Avenue', N'cecelia.be2003', N'xohl5OhHai', N'nf4k435jhcn@temporary-mail.net', N'9053120869', N'622631349', CAST(N'2011-12-02T00:00:00.000' AS DateTime), N'user', 9)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Bank] ON 

INSERT [dbo].[Bank] ([Bankdid], [Bankid], [BankName]) VALUES (11, N'TB_01     ', N'Bank of Thunder Bay')
SET IDENTITY_INSERT [dbo].[Bank] OFF
GO
SET IDENTITY_INSERT [dbo].[Branch] ON 

INSERT [dbo].[Branch] ([BranchDid], [BranchId], [BranchName], [Address], [PhoneNumber], [CityDid], [Bankdid]) VALUES (7, N'TB_HS', N'TB Honrby St', N'1010 Hornby St, Vancouver, BC V6Z 1V6', N'6046655138', 3, 11)
INSERT [dbo].[Branch] ([BranchDid], [BranchId], [BranchName], [Address], [PhoneNumber], [CityDid], [Bankdid]) VALUES (9, N'TB_BW', N'TB Broadway', N'505 W Broadway, Vancouver, BC V5Z 1E7', N'6046658650', 3, 11)
INSERT [dbo].[Branch] ([BranchDid], [BranchId], [BranchName], [Address], [PhoneNumber], [CityDid], [Bankdid]) VALUES (10, N'TB_HM', N'TB Homer', N'996 Homer St, Vancouver, BC V6B 2W7', N'6046650747', 3, 11)
INSERT [dbo].[Branch] ([BranchDid], [BranchId], [BranchName], [Address], [PhoneNumber], [CityDid], [Bankdid]) VALUES (12, N'TB_KS', N'TB King St', N'40 King St W, Toronto, ON M5H 1H1', N'4168666430', 2, 11)
INSERT [dbo].[Branch] ([BranchDid], [BranchId], [BranchName], [Address], [PhoneNumber], [CityDid], [Bankdid]) VALUES (13, N'TB_BS', N'TB Bay St', N'392 Bay St., Toronto, ON M5H 3K5', N'4168665700', 2, 11)
INSERT [dbo].[Branch] ([BranchDid], [BranchId], [BranchName], [Address], [PhoneNumber], [CityDid], [Bankdid]) VALUES (14, N'TB_HS', N'TB Hewitson St', N' 745 Hewitson St, Thunder Bay, ON P7B 6B5', N'8076235626', 1, 11)
INSERT [dbo].[Branch] ([BranchDid], [BranchId], [BranchName], [Address], [PhoneNumber], [CityDid], [Bankdid]) VALUES (15, N'TB_AW', N'TB Arthur W', N'1195 Arthur St W, Thunder Bay, ON P7E 6E2', N'8076245100', 1, 11)
INSERT [dbo].[Branch] ([BranchDid], [BranchId], [BranchName], [Address], [PhoneNumber], [CityDid], [Bankdid]) VALUES (16, N'TB_RR', N'TB Red River', N'225 Red River Rd, Thunder Bay, ON P7B 1A7', N'8073435600', 1, 11)
SET IDENTITY_INSERT [dbo].[Branch] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountType] ON 

INSERT [dbo].[AccountType] ([AccountTypeDid], [AccountTypeId], [Description], [InterestRate]) VALUES (1, N'SAV       ', N'Saving Account', 4)
INSERT [dbo].[AccountType] ([AccountTypeDid], [AccountTypeId], [Description], [InterestRate]) VALUES (2, N'CHEQ      ', N'Checking Account', 0.2)
INSERT [dbo].[AccountType] ([AccountTypeDid], [AccountTypeId], [Description], [InterestRate]) VALUES (3, N'INV       ', N'Investment Account', 2)
INSERT [dbo].[AccountType] ([AccountTypeDid], [AccountTypeId], [Description], [InterestRate]) VALUES (4, N'CRE       ', N'Credit Account', 5)
SET IDENTITY_INSERT [dbo].[AccountType] OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountDid], [AccountNumber], [PreviousBalance], [CurrentBalance], [CurrencyCode], [OpenDate], [EndDate], [IsActive], [BranchDid], [UserDid], [AccountTypeDid]) VALUES (1, 524248096, 2000.0000, 1500.0000, N'CAD       ', CAST(N'2021-01-11T00:00:00.000' AS DateTime), CAST(N'2025-01-11T00:00:00.000' AS DateTime), 1, 7, 2, 2)
INSERT [dbo].[Account] ([AccountDid], [AccountNumber], [PreviousBalance], [CurrentBalance], [CurrencyCode], [OpenDate], [EndDate], [IsActive], [BranchDid], [UserDid], [AccountTypeDid]) VALUES (3, 491688870, 17000.0000, 17000.0000, N'CAD       ', CAST(N'2020-02-12T00:00:00.000' AS DateTime), CAST(N'2024-02-12T00:00:00.000' AS DateTime), 1, 7, 9, 2)
INSERT [dbo].[Account] ([AccountDid], [AccountNumber], [PreviousBalance], [CurrentBalance], [CurrencyCode], [OpenDate], [EndDate], [IsActive], [BranchDid], [UserDid], [AccountTypeDid]) VALUES (4, 455603546, 2920.7200, 3200.7200, N'USD       ', CAST(N'2008-12-09T00:00:00.000' AS DateTime), CAST(N'2025-12-09T00:00:00.000' AS DateTime), 0, 9, 13, 3)
INSERT [dbo].[Account] ([AccountDid], [AccountNumber], [PreviousBalance], [CurrentBalance], [CurrencyCode], [OpenDate], [EndDate], [IsActive], [BranchDid], [UserDid], [AccountTypeDid]) VALUES (5, 531127369, 10000.0000, 11000.9200, N'CAD       ', CAST(N'2021-01-11T00:00:00.000' AS DateTime), CAST(N'2025-01-11T00:00:00.000' AS DateTime), 1, 7, 2, 3)
INSERT [dbo].[Account] ([AccountDid], [AccountNumber], [PreviousBalance], [CurrentBalance], [CurrencyCode], [OpenDate], [EndDate], [IsActive], [BranchDid], [UserDid], [AccountTypeDid]) VALUES (6, 543787929, 729.2500, 720.2500, N'USD       ', CAST(N'2019-11-23T00:00:00.000' AS DateTime), CAST(N'2024-11-23T00:00:00.000' AS DateTime), 1, 12, 15, 4)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Currency] ON 

INSERT [dbo].[Currency] ([CurrencyDID], [CurrencyCode], [CurrencyDescription]) VALUES (1, N'CAD       ', N'Canadian Dollar')
INSERT [dbo].[Currency] ([CurrencyDID], [CurrencyCode], [CurrencyDescription]) VALUES (2, N'VND       ', N'Vietnam Dong')
INSERT [dbo].[Currency] ([CurrencyDID], [CurrencyCode], [CurrencyDescription]) VALUES (3, N'USD       ', N'US Dollar')
INSERT [dbo].[Currency] ([CurrencyDID], [CurrencyCode], [CurrencyDescription]) VALUES (4, N'EUR       ', N'Euro')
INSERT [dbo].[Currency] ([CurrencyDID], [CurrencyCode], [CurrencyDescription]) VALUES (5, N'GBP       ', N'British Pound')
SET IDENTITY_INSERT [dbo].[Currency] OFF
GO
SET IDENTITY_INSERT [dbo].[UserCreditPoints] ON 

INSERT [dbo].[UserCreditPoints] ([UserCreditPointDId], [UserDid], [Points], [CreditLimit], [CurrencyDID]) VALUES (1, 2, 689, 500.0000, 1)
INSERT [dbo].[UserCreditPoints] ([UserCreditPointDId], [UserDid], [Points], [CreditLimit], [CurrencyDID]) VALUES (3, 9, 1200, 2000.0000, 1)
INSERT [dbo].[UserCreditPoints] ([UserCreditPointDId], [UserDid], [Points], [CreditLimit], [CurrencyDID]) VALUES (4, 10, 524, 500.0000, 3)
INSERT [dbo].[UserCreditPoints] ([UserCreditPointDId], [UserDid], [Points], [CreditLimit], [CurrencyDID]) VALUES (5, 11, 246, 36000000.0000, 2)
INSERT [dbo].[UserCreditPoints] ([UserCreditPointDId], [UserDid], [Points], [CreditLimit], [CurrencyDID]) VALUES (6, 12, 798, 1000.0000, 1)
SET IDENTITY_INSERT [dbo].[UserCreditPoints] OFF
GO
SET IDENTITY_INSERT [dbo].[TransactionType] ON 

INSERT [dbo].[TransactionType] ([TransactionTypeDid], [TransactionTypeId], [Description]) VALUES (10, N'DEB       ', N'Debit')
INSERT [dbo].[TransactionType] ([TransactionTypeDid], [TransactionTypeId], [Description]) VALUES (11, N'CRE       ', N'Credit')
SET IDENTITY_INSERT [dbo].[TransactionType] OFF
GO
SET IDENTITY_INSERT [dbo].[Transaction] ON 

INSERT [dbo].[Transaction] ([TransactionDid], [TransactionDetails], [Tran_Status], [TransactionAmount], [CurrencyDid], [TransactionTypeDid], [CreatedDate], [UserDid], [AccountDid]) VALUES (1, N'Withdraw $500', N'SUC', 500.0000, 1, 11, CAST(N'2021-08-07T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Transaction] ([TransactionDid], [TransactionDetails], [Tran_Status], [TransactionAmount], [CurrencyDid], [TransactionTypeDid], [CreatedDate], [UserDid], [AccountDid]) VALUES (3, N'Received $500', N'SUC', 500.0000, 1, 10, CAST(N'2021-08-07T00:00:00.000' AS DateTime), 15, 6)
INSERT [dbo].[Transaction] ([TransactionDid], [TransactionDetails], [Tran_Status], [TransactionAmount], [CurrencyDid], [TransactionTypeDid], [CreatedDate], [UserDid], [AccountDid]) VALUES (4, N'Walmart Store #3124 Thunder Bay', N'HOL', 119.2400, 1, 11, CAST(N'2020-03-21T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Transaction] ([TransactionDid], [TransactionDetails], [Tran_Status], [TransactionAmount], [CurrencyDid], [TransactionTypeDid], [CreatedDate], [UserDid], [AccountDid]) VALUES (5, N'Wal-mart Canada Corp', N'SUC', 539.5200, 1, 10, CAST(N'2019-04-04T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Transaction] ([TransactionDid], [TransactionDetails], [Tran_Status], [TransactionAmount], [CurrencyDid], [TransactionTypeDid], [CreatedDate], [UserDid], [AccountDid]) VALUES (6, N'Amazon.ca Prime membamazon.ca/pbcca', N'DEC', 4.5100, 1, 11, CAST(N'2008-07-20T00:00:00.000' AS DateTime), 13, 4)
INSERT [dbo].[Transaction] ([TransactionDid], [TransactionDetails], [Tran_Status], [TransactionAmount], [CurrencyDid], [TransactionTypeDid], [CreatedDate], [UserDid], [AccountDid]) VALUES (8, N'Withdraw $240', N'DEC', 240.0000, 2, 11, CAST(N'2012-11-02T00:00:00.000' AS DateTime), 18, 3)
SET IDENTITY_INSERT [dbo].[Transaction] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAccountModification] ON 

INSERT [dbo].[UserAccountModification] ([Did], [UserDid], [UpdatedField], [OldValue], [NewValue], [ModifiedDate]) VALUES (1, 2, N'LastName', N'Bui Jr', N'Bui', CAST(N'2021-08-07T00:00:00.000' AS DateTime))
INSERT [dbo].[UserAccountModification] ([Did], [UserDid], [UpdatedField], [OldValue], [NewValue], [ModifiedDate]) VALUES (2, 9, N'Address', N'989 Sherbrooke Ouest', N'1795 Parkdale Avenue', CAST(N'2021-08-07T18:05:40.697' AS DateTime))
INSERT [dbo].[UserAccountModification] ([Did], [UserDid], [UpdatedField], [OldValue], [NewValue], [ModifiedDate]) VALUES (3, 2, N'Address', N'1964 Merivale Road', N'960 William St, Thunder Bay', CAST(N'2021-08-07T00:00:00.000' AS DateTime))
INSERT [dbo].[UserAccountModification] ([Did], [UserDid], [UpdatedField], [OldValue], [NewValue], [ModifiedDate]) VALUES (4, 15, N'LastName', N'Gunman', N'Guzman', CAST(N'2021-08-06T00:00:00.000' AS DateTime))
INSERT [dbo].[UserAccountModification] ([Did], [UserDid], [UpdatedField], [OldValue], [NewValue], [ModifiedDate]) VALUES (5, 12, N'MobileNumber', N'9058653392', N'9058653383', CAST(N'2019-07-23T00:00:00.000' AS DateTime))
INSERT [dbo].[UserAccountModification] ([Did], [UserDid], [UpdatedField], [OldValue], [NewValue], [ModifiedDate]) VALUES (6, 12, N'SinNumber', N'703764399', N'703764332', CAST(N'2019-07-23T00:00:00.000' AS DateTime))
INSERT [dbo].[UserAccountModification] ([Did], [UserDid], [UpdatedField], [OldValue], [NewValue], [ModifiedDate]) VALUES (7, 11, N'FirstName', N'John', N'Dianne', CAST(N'2008-01-04T00:00:00.000' AS DateTime))
INSERT [dbo].[UserAccountModification] ([Did], [UserDid], [UpdatedField], [OldValue], [NewValue], [ModifiedDate]) VALUES (8, 2, N'DOB', N'1997-02-27', N'1997-10-27', CAST(N'2020-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[UserAccountModification] ([Did], [UserDid], [UpdatedField], [OldValue], [NewValue], [ModifiedDate]) VALUES (9, 13, N'CityDid', N'7', N'4', CAST(N'2007-09-02T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserAccountModification] OFF
GO
SET IDENTITY_INSERT [dbo].[LoginHistory] ON 

INSERT [dbo].[LoginHistory] ([LoginHistoryDid], [LoginTime], [LogOutTime], [UserDid]) VALUES (2, CAST(N'2021-08-07T17:30:00.000' AS DateTime), CAST(N'2021-08-07T18:00:00.000' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([LoginHistoryDid], [LoginTime], [LogOutTime], [UserDid]) VALUES (3, CAST(N'2020-12-20T00:12:32.000' AS DateTime), CAST(N'2020-12-20T00:31:00.000' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([LoginHistoryDid], [LoginTime], [LogOutTime], [UserDid]) VALUES (6, CAST(N'2020-12-20T09:47:11.000' AS DateTime), CAST(N'2020-12-20T10:14:24.000' AS DateTime), 9)
INSERT [dbo].[LoginHistory] ([LoginHistoryDid], [LoginTime], [LogOutTime], [UserDid]) VALUES (7, CAST(N'2018-01-23T10:39:23.000' AS DateTime), CAST(N'2018-01-23T10:42:24.000' AS DateTime), 10)
INSERT [dbo].[LoginHistory] ([LoginHistoryDid], [LoginTime], [LogOutTime], [UserDid]) VALUES (8, CAST(N'2009-03-16T19:17:20.000' AS DateTime), CAST(N'2009-03-16T19:27:04.000' AS DateTime), 11)
INSERT [dbo].[LoginHistory] ([LoginHistoryDid], [LoginTime], [LogOutTime], [UserDid]) VALUES (9, CAST(N'2009-03-16T19:02:28.000' AS DateTime), CAST(N'2009-03-16T19:27:44.000' AS DateTime), 13)
INSERT [dbo].[LoginHistory] ([LoginHistoryDid], [LoginTime], [LogOutTime], [UserDid]) VALUES (10, CAST(N'2009-03-16T20:09:28.000' AS DateTime), CAST(N'2009-03-16T20:27:44.000' AS DateTime), 11)
INSERT [dbo].[LoginHistory] ([LoginHistoryDid], [LoginTime], [LogOutTime], [UserDid]) VALUES (11, CAST(N'2021-01-11T14:12:19.000' AS DateTime), CAST(N'2021-01-11T14:45:01.000' AS DateTime), 18)
SET IDENTITY_INSERT [dbo].[LoginHistory] OFF
GO
