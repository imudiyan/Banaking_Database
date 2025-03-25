# Banaking_Database
This Project is about creating a database for the banking system.
##  Process
 - Requirement Analysis
 - Normalization
 - ERD creation and Database conversion
 - Database creation and inserting data
 - Report creation using MSSRS
 - Create different queries for different aspects
 - Database backup and logs
 - Database Tuning

## Requirement Analysis
The BankingDB is the database used for banking systems, where there are customers, who make transactions, and admins, who are also customers but can CRUD (Create, Read, Update, Delete) other customers. Each customer has their own credit points and credit limit, which indicate how trustworthy they are to the bank and whether they are eligible for a mortgage increase or a higher credit limit.

During the lifetime of a user in the bank, they may change their personal details frequently, from their address and phone number to their password or email. To keep track of all these changes, a table will store every modification made throughout their journey in the bank. Additionally, the user's login history will also be recorded for security and auditing purposes.

The Thunder Bay Bank currently only approves internal transactions but has the potential to operate nationally (between different banks). A user in The Thunder Bay Bank can have multiple accounts, whether it is a savings, chequing, investment, or credit account. Each type of account comes with different interest rates, which are competitive with other banks.

Every five years, if an account is not renewed, it will automatically become inactive. There are two types of transactions: Debit (DEB) and Credit (CRE).

- Debit transactions include any deposit into an account, such as transfers from another account, work payments, or returned transactions.
- Credit transactions involve deductions from the account, such as monthly payments, withdrawals, or payments for groceries.

## Normalization 
Table structure before Normalization
![image](https://github.com/user-attachments/assets/0d8e2019-0a33-4121-8585-abc09da09fc8)

Table structure after Normalization
![image](https://github.com/user-attachments/assets/5afa6d47-54fb-467f-8c14-53597747986a)

## ERD 

The finalized ERD after normalization
![image](https://github.com/user-attachments/assets/aad5691b-c811-4bce-aba6-7c1309314733)

## Database Tables

![image](https://github.com/user-attachments/assets/cb5cdeee-1fa8-4582-a2d1-74d8de5a7d34)

![image](https://github.com/user-attachments/assets/89969e2e-d7e4-4498-9f50-5bc6103a0e75)

![image](https://github.com/user-attachments/assets/f846c0c5-2db6-4b47-9e82-e8bf1867a4c2)

![image](https://github.com/user-attachments/assets/d9ccd582-1213-4286-a64a-77fbe4a52307)

**All the related scripts and queries are attached here.**
