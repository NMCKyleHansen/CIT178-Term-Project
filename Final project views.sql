/* Final Project Views */

USE TermProject;
GO
/*  View #1   Create an updatable view to update the last_login values of accounts*/
CREATE VIEW UserAccounts
AS
SELECT Account_ID
      ,UserName
      ,Last_login
  FROM account

--original data--
SELECT * FROM UserAccounts;

-- updating an account with the current date

GO
UPDATE UserAccounts
SET Last_login = GETDATE()
WHERE Account_ID=7

--Updated data--
SELECT * FROM UserAccounts;

/*  View #2  - View to pull the full adddress for each account*/
USE TermProject;
GO
CREATE VIEW AccountAddress
AS
Select account.Account_ID,account.Account_Address, ZipCode.city,zipcode.Zip_Code
from account
join zipcode on account.zip_id = zipcode.zip_id

-- use the view to display data
Select * from AccountAddress


/*  View #3  - View to list all accounts not active for 5 months or more */
USE TermProject;
GO
CREATE VIEW AccountsNotActive as 
SELECT Account_ID
      ,UserName
      ,Last_login
  FROM account
  where Last_login <= dateadd(month, -5, getdate())

  -- use the view to display data
  Select * from AccountsNotActive

  
/*  View #3  - View to list in-game items for sale and who is selling them*/
USE TermProject;
GO
CREATE VIEW ItemsForSale as 
Select account.Username,item.Item_name
from account
left join 
character
on account.account_id = character.account_id
join inventory
on character.character_id = inventory.character_id
join item
on Inventory.Item_id = item.Item_ID
where inventory.forsale =1


  -- use the view to display data
  Select * from ItemsForSale

