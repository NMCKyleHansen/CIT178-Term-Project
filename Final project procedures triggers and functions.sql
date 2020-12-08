/* Final Project Procedures */

/* procedure to list a count of items for sale per seller */

USE TermProject;
GO
CREATE PROC spForSaleCount
AS
Select account.Username,count(*) as item_count
from account
left join 
character
on account.account_id = character.account_id
join inventory
on character.character_id = inventory.character_id
join item
on Inventory.Item_id = item.Item_ID
where inventory.forsale =1
Group by account.Username
order by count(*) desc

GO

EXEC spForSaleCount;

/* takes 1 or more input parameters  */
/* sp to look up the items for sale by a given user */
USE TermProject;
GO
CREATE PROC spForSaleUser
@User varchar(25)
AS
BEGIN
	Select account.Username,item.Item_name
	from account
	left join 
	character
	on account.account_id = character.account_id
	join inventory
	on character.character_id = inventory.character_id
	join item
	on Inventory.Item_id = item.Item_ID
	where inventory.forsale =1 and account.Username = @user;
END
GO
EXEC spForSaleUser 'admin'

/* take one imput parameter and return 2 out parameters */

USE TermProject;
GO
CREATE PROC spUserIdLookup
@id int,
@UserName varchar(25) OUTPUT,
@email	varchar(30) OUTPUT
AS
select @UserName = Username, @email = email
from
account
where account.Account_ID = @id;
GO
DECLARE @UserName nvarchar(25);
DECLARE @email nvarchar(30);
EXEC spUserIdLookup 7, @UserName OUTPUT, @email OUTPUT;
Select @UserName as 'USER ID', @email as 'EMAIL ADDRESS';

/* stored procedure that includes a return value */

USE TermProject;
GO
CREATE PROC spUserIdCount
as
DECLARE @UserCount int;
SELECT @UserCount = COUNT(*)
FROM account
RETURN @UserCount;
GO
DECLARE @UserCount int;
EXEC @UserCount = spUserIdCount;
PRINT 'We have ' + CONVERT(varchar, @UserCount) + ' user accounts in our database.';
GO


/* Final Project User Defined Functions */

/* scalar function that accepts an argument.*/
/* This function will return a userid given a user name */
USE TermProject;
GO
CREATE FUNCTION fnFindAccountId
(@UserName nvarchar(25))
RETURNS int
BEGIN
    RETURN (SELECT Account_ID FROM account WHERE UserName = @UserName);
END; 

Select dbo.fnFindAccountId('sammy');

/* table function that accepts at least one argument  */
/* This function will return a table containing rows of game characters at or above the value passed to the function. */

USE TermProject;
GO
CREATE FUNCTION fnCharacterNorAbove
(@Nlevel int)
RETURNS table
RETURN
	(SELECT * FROM Character where level >= @Nlevel);
GO
SELECT * from dbo.fnCharacterNorAbove(10);


/* Final Project Triggers */

/* create an inventory transaction table */

 USE TermProject;
 GO
 SELECT * INTO InventoryTransaction
 FROM Inventory
 WHERE 'Pigs'='Fly';

 Select * from InventoryTransaction;

 /* Make Activity field to track Activity */
 ALTER TABLE InventoryTransaction
 ADD Activity varchar(50);
 GO

 /* Drop TRIGGER InventoryTransaction_Delete; note: had to use this a few times before I got the tigger working*/

 /* Create a delete trigger */
CREATE TRIGGER InventoryTransaction_Delete ON Inventory
    AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @Inventory_ID int
	DECLARE @Character_id int
	DECLARE @Item_id int
	DECLARE @equiped int
	DECLARE @Forsale int
	
	 SELECT @Inventory_ID =DELETED.Inventory_ID, @Character_id = DELETED.Character_id, @Item_id = DELETED.Item_id,
	@equiped = DELETED.equiped, @Forsale = DELETED.Forsale
	FROM DELETED

    INSERT INTO InventoryTransaction VALUES(@Inventory_ID,@Character_id, @Item_id ,@equiped, @Forsale, 'Delete' )
END
GO

/* wait to test this after we insert a row with the insert tigger */

/* Create an insert trigger */
CREATE TRIGGER InventoryTransaction_INSERT ON Inventory
    AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @Inventory_ID int
	DECLARE @Character_id int
	DECLARE @Item_id int
	DECLARE @equiped int
	DECLARE @Forsale int
	
	 SELECT @Inventory_ID =INSERTED.Inventory_ID, @Character_id = INSERTED.Character_id, @Item_id = INSERTED.Item_id,
	@equiped = INSERTED.equiped, @Forsale = INSERTED.Forsale
	FROM INSERTED

    INSERT INTO InventoryTransaction VALUES(@Inventory_ID,@Character_id, @Item_id ,@equiped, @Forsale, 'Insert' )
END
GO

/* add a row to test the new trigger */
INSERT INTO Inventory VALUES(106,4,7,0,0);
GO

/* View the archive table */
SELECT * FROM InventoryTransaction;
GO


/* Test the delete trigger */

Delete from Inventory where Inventory_ID = 106;

/* View the archive table to see the deleted row was save to the archive*/
SELECT * FROM InventoryTransaction;
GO


/* Create an update trigger */


CREATE TRIGGER InventoryTransaction_UPDATE ON Inventory
    for UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @Inventory_ID int
	DECLARE @Character_id int
	DECLARE @Item_id int
	DECLARE @equiped int
	DECLARE @Forsale int
	
	 SELECT @Inventory_ID = INSERTED.Inventory_ID, @Character_id = INSERTED.Character_id, @Item_id = INSERTED.Item_id,
	@equiped = INSERTED.equiped, @Forsale = INSERTED.Forsale
	FROM INSERTED

    INSERT INTO InventoryTransaction VALUES(@Inventory_ID,@Character_id, @Item_id ,@equiped, @Forsale, 'Update' )
END
GO

/* Test the update trigger */

UPDATE Inventory
SET Item_id = 7
WHERE Inventory_ID = 105;
GO

/* view The data in the Inventory archive */
SELECT * FROM InventoryTransaction;


