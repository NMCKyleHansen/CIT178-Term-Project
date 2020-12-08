


/* Task #1:  Add data to tables without any foreign keys first*/

/* load the ZipCode table */
USE TermProject;
GO
INSERT INTO [dbo].[ZipCode] VALUES (1,'49201','Jackson','MI','US')
INSERT INTO [dbo].[ZipCode] VALUES (2,'49684','Traverse City','MI','US')
INSERT INTO [dbo].[ZipCode] VALUES (3,'33139','Miami Beach','FL','US')
INSERT INTO [dbo].[ZipCode] VALUES (4,'78205','San Antonio','TX','US')
INSERT INTO [dbo].[ZipCode] VALUES (5,'02215','Boston','MA','US')

select *
from ZipCode;



INSERT INTO [dbo].[Class] VALUES ( 1,'Druid',1)
INSERT INTO [dbo].[Class] VALUES (2,'Hunter',1)
INSERT INTO [dbo].[Class] VALUES (3,'Mage',1)
INSERT INTO [dbo].[Class] VALUES (4,'Monk',1)
INSERT INTO [dbo].[Class] VALUES (5,'Paladin',2)
INSERT INTO [dbo].[Class] VALUES (6,'Priest',1)
INSERT INTO [dbo].[Class] VALUES (7,'Rogue',1)
INSERT INTO [dbo].[Class] VALUES (8,'Shaman',1)
INSERT INTO [dbo].[Class] VALUES (9,'Warlock',1)
INSERT INTO [dbo].[Class] VALUES (10,'Warrior',1)
INSERT INTO [dbo].[Class] VALUES (11,'Ghost',2)

select *
from class;

/* Species table inserts */


INSERT INTO [dbo].[Species] VALUES (1,	'Human',	12,	12,	12,	12,	12)
INSERT INTO [dbo].[Species] VALUES (2,	'Dwarf',	12,	12,	13,	7,	12)
INSERT INTO [dbo].[Species] VALUES (3,	'NightElf',	11,	13,	11,	18,	12)
INSERT INTO [dbo].[Species] VALUES (4,	'Gnome',	6,	18,	7,	13,	12)
INSERT INTO [dbo].[Species] VALUES (5,	'Worg',	13,	6,	13,	13,	10)
INSERT INTO [dbo].[Species] VALUES (6,	'PandaPerson',	13,	11,	13,	12,	18)
INSERT INTO [dbo].[Species] VALUES (7,	'Undead',  	11,	12,	15,	10,	13)
INSERT INTO [dbo].[Species] VALUES (8,	'Minotaur',	18,	4,	18,	13,	5)
INSERT INTO [dbo].[Species] VALUES (9,	'Troll',	17,	5,	17,	12,	4)
INSERT INTO [dbo].[Species] VALUES (10,	'BloodElf',	11,	15,	11,	16,	12)
INSERT INTO [dbo].[Species] VALUES (11,'Goblin',	6,	18,	7,	13,	12)

select *
from Species;

Item_id(PK)	Item_name	Attack_bonus	Luck_bonus	Description

INSERT INTO [dbo].[item] VALUES (1,	'Amulet of the Dust',	60,	6,	'Misc. (Armor)')
INSERT INTO [dbo].[item] VALUES (2,	'Ring of Reanimation',	83,	6,	'Misc. (Armor)')
INSERT INTO [dbo].[item] VALUES (3,	'Ring of Servitude',	65,	4,	'Misc. (Armor)')
INSERT INTO [dbo].[item] VALUES (4,	'Ring of Unanswered Prayers',	83,	6,	'Misc. (Armor)')
INSERT INTO [dbo].[item] VALUES (5,	'Belt of the Crusader',	85,	6,	'Plate Armor')
INSERT INTO [dbo].[item] VALUES (6,	'Magic Bone Bracers',	88,	6,	'Leather Armor')
INSERT INTO [dbo].[item] VALUES (7,	'Magic Bone Breastplate',	92,	6,	'Leather Armor')
INSERT INTO [dbo].[item] VALUES (8,	'Magic Bone Gauntlets',	88,	6,	'Leather Armor')
INSERT INTO [dbo].[item] VALUES (9,	'Magic Bone Helmet',	88,	6,	'Leather Armor')
INSERT INTO [dbo].[item] VALUES (10,	'Magic Bone Legplates',	88,	6,	'Leather Armor')
INSERT INTO [dbo].[item] VALUES (11,	'Magic Bone Pauldrons',	86,	6,	'Leather Armor')
INSERT INTO [dbo].[item] VALUES (12,	'Magic Bone Ring',	92,	6,	'Misc. (Armor)')
INSERT INTO [dbo].[item] VALUES (13,	'Magic Bone Sabatons',	86,	6,	'Leather Armor')
INSERT INTO [dbo].[item] VALUES (14,	'Magic Bone Waistguard',	88,	6,	'Leather Armor')
INSERT INTO [dbo].[item] VALUES (15,	'Shoes of Displacement',	83,	6,	'Leather Armor')
INSERT INTO [dbo].[item] VALUES (16,	'Bow of Searing Heat',	42,	1,	'Bow')
INSERT INTO [dbo].[item] VALUES (17,	'Bracers of a little Hope',	60,	6,	'Cloth Armor')
INSERT INTO [dbo].[item] VALUES (18,	'Bracers of Shadow Subterfuge',	60,	6,	'Leather Armor')
INSERT INTO [dbo].[item] VALUES (19,	'Brimstone Great Staff',	83,	6,	'Staff')
INSERT INTO [dbo].[item] VALUES (20,	'Claw of the Frost Dragon',	88,	6,	'Fist Weapon')
INSERT INTO [dbo].[item] VALUES (21,	'Claymore of Might',	81,	6,	'Two-Handed Sword')
INSERT INTO [dbo].[item] VALUES (22,	'Cloak of Night',	83,	6,	'Cloth Armor')
INSERT INTO [dbo].[item] VALUES (23,	'Cloak of the Under World',	90,	6,	'Cloth Armor')
INSERT INTO [dbo].[item] VALUES (24,	'Corrupted Ring',	86,	6,	'Two-Handed Sword')
INSERT INTO [dbo].[item] VALUES (25,	'Crypt Silk Cloak',	83,	6,	'Cloth Armor')
INSERT INTO [dbo].[item] VALUES (26,	'Crypt Boots',	86,	6,	'Mail Armor')
INSERT INTO [dbo].[item] VALUES (27,	'Crypt Girdle',	88,	6,	'Mail Armor')
INSERT INTO [dbo].[item] VALUES (28,	'Crypt Handguards',	88,	6,	'Mail Armor')
INSERT INTO [dbo].[item] VALUES (29,	'Crypt Headpiece',	88,	6,	'Mail Armor')
INSERT INTO [dbo].[item] VALUES (30,	'Tiger Legguards',	88,	6,	'Mail Armor')
INSERT INTO [dbo].[item] VALUES (31,	'Tiger Spaulders',	86,	6,	'Mail Armor')
INSERT INTO [dbo].[item] VALUES (32,	'Tiger Tunic',	92,	6,	'Mail Armor')
INSERT INTO [dbo].[item] VALUES (33,	'Tiger Wristguards',	88,	6,	'Mail Armor')
INSERT INTO [dbo].[item] VALUES (34,	'Crystal Webbed Robe',	67,	7,	'Cloth Armor')


select *
from Item;

/* Task #2:  Add data to tables that use columns in tables you already entered as foreign keys */

Account_ID(PK)	UserName	Password	IS_GM	Last_login	IP	email	Ban	Account_Address	Zip_ID(FK)

/* load the account table */

truncate table account;


INSERT INTO [dbo].[account] VALUES (1,'admin','kyle',1,'09/29/20','25.55.203.100','admin@admin.com',0,'5117 Bardstone','1')
INSERT INTO [dbo].[account] VALUES (2,'admin2','Redwings',1,'08/06/20','25.4.120.126','admin2@admin.com',0,'5117 Bardstone',1)
INSERT INTO [dbo].[account] VALUES (3,'mom','Redwings',0,'05/20/20','25.1.150.148','mom@mom.com',0,'111 W Front St.',2)
INSERT INTO [dbo].[account] VALUES (4,'shanikan','bear445',0,'05/21/20','25.1.150.148','mom@mom.com',0,'111 W Front St.',2)
INSERT INTO [dbo].[account] VALUES (5,'sammy','hi44312',0,'05/22/20','25.1.150.148','mom@mom.com',0,'111 W Front St.',2)
INSERT INTO [dbo].[account] VALUES (6,'robert','robert1534',0,'05/23/20','25.4.186.239','bon@bob.com',0,'144 Hall St',2)
INSERT INTO [dbo].[account] VALUES (7,'bjon','bjon343',0,'05/24/20','25.91.35.26','jon@jon.com',0,'10850 E Traverse Hwy' ,2)
INSERT INTO [dbo].[account] VALUES (8,'ljon','ljon214',0,'05/25/20','25.7.187.205','ljon@ljon.com',0,'202 E Front St',2)
INSERT INTO [dbo].[account] VALUES (9,'mh','mh234',0,'05/26/20','25.97.162.174','mh@mh.com',0,'3211 N Garfield Rd N' ,2)
INSERT INTO [dbo].[account] VALUES (10,'mhboy','mh5423',0,'05/27/20','25.99.201.93','mhboy@mh.com',0,'1 Lincoln Rd' ,3)
INSERT INTO [dbo].[account] VALUES (11,'mhgirl','mh4254',0,'05/28/20','25.99.201.93','mhgirl@mh.com',0,'2 Lincoln Rd' ,3)
INSERT INTO [dbo].[account] VALUES (12,'player1','1player',0,'05/29/20','127.0.0.1','mhgirl@mh.com',0,'3 Lincoln Rd' ,3)
INSERT INTO [dbo].[account] VALUES (13,'wow','wow732',0,'05/30/20','127.0.0.1','mhgirl@mh.com',0,'4 Lincoln Rd' ,3)
INSERT INTO [dbo].[account] VALUES (14,'linux','windows',0,'05/31/20','25.4.186.239','unix@mh.com',0,'5 Lincoln Rd' ,3)
INSERT INTO [dbo].[account] VALUES (15,'boxof','rain',0,'06/01/20','25.13.33.163','dh@mh.com',0,'6 Lincoln Rd' ,3)
INSERT INTO [dbo].[account] VALUES (16,'rain','linux',0,'06/02/20','127.0.0.1','r@mh.com',0,'7 Lincoln Rd' ,3)
INSERT INTO [dbo].[account] VALUES (17,'mario','cart',0,'06/03/20','25.76.229.251','mc@mh.com',0,'300 Alamo Plaza',4)
INSERT INTO [dbo].[account] VALUES (18,'oliver','twist',0,'06/04/20','25.0.245.54','ot@mh.com',0,'9 Lincoln Rd',3)
INSERT INTO [dbo].[account] VALUES (19,'harry','potter',0,'06/05/20','25.7.248.196','hp@mh.com',0,'1116 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (20,'goodnight','moon',0,'06/06/20','25.109.61.253','gnm@mh.com',0,'1117 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (21,'time','machine',0,'06/07/20','25.109.61.253','tm@mh.com',0,'1118 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (22,'animal','farm',0,'06/08/20','25.7.194.191','ot@mh.com',0,'1119 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (23,'admin3','Redwings',1,'06/09/20','25.1.150.148','kmh@kmh.com',0,'1120 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (24,'mitch','hello',0,'06/10/20','25.100.8.235','joe@mh.com',0,'1121 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (25,'moby','dick',0,'06/11/20','25.1.150.86','md@mh.com',0,'1122 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (26,'dan','dkplayer',0,'06/12/20','25.100.8.235','dkd@mh.com',0,'1123 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (27,'smurfette','gargamel',0,'06/13/20','25.7.194.191','smurf@mh.com',0,'1124 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (28,'onthe','road',0,'06/14/20','25.3.153.11','JK@mh.com',0,'1125 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (29,'james','bond',0,'06/15/20','25.100.8.235','jb@mh.com',0,'1126 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (30,'tim','timtim',0,'06/16/20','25.100.8.235','tim@mh.com',0,'1127 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (31,'ariana','heineken',0,'06/17/20','25.100.8.235','ariana@mh.com',0,'1128 Ocean Dr' ,3)
INSERT INTO [dbo].[account] VALUES (32,'star','wars',0,'06/18/20','25.100.8.235','starw@mh.com',0,'100 Collins Ave' ,3)
INSERT INTO [dbo].[account] VALUES (33,'meme','dodge',0,'06/19/20','25.100.8.235','sj@mh.com',0,'101 Collins Ave' ,3)
INSERT INTO [dbo].[account] VALUES (34,'ping','pong',0,'06/20/20','25.61.38.246','jason712@pmail.com',0,'102 Collins Ave' ,3)
INSERT INTO [dbo].[account] VALUES (35,'joe','ismyname',0,'06/21/20','25.98.61.196','joe@pmail.com',0,'103 Collins Ave' ,3)
INSERT INTO [dbo].[account] VALUES (36,'backwoods','outback',0,'06/22/20','25.99.254.63','outback15343@pmail.com',0,'104 Collins Ave' ,3)
INSERT INTO [dbo].[account] VALUES (37,'scott','iam',0,'06/23/20','25.100.8.235','Scott.pmail.com',0,'1 Washington Ave',3)
INSERT INTO [dbo].[account] VALUES (38,'lamb','lion',0,'06/24/20','25.100.8.235','mojo@pmail.com',0,'2 Washington Ave',3)
INSERT INTO [dbo].[account] VALUES (39,'never','forever',0,'06/25/20','25.8.8.25','pbr@pmail.com',0,'3 Washington Ave',3)
INSERT INTO [dbo].[account] VALUES (40,'spam','iam',0,'06/26/20','25.83.14.230','Russ@pmail.com',1,'4 Washington Ave',3)
INSERT INTO [dbo].[account] VALUES (41,'hockey','bob',0,'06/27/20','25.50.170.198','hockeybob@pmail.com',0,'5 Washington Ave',3)
INSERT INTO [dbo].[account] VALUES (42,'sparky','shock',0,'06/28/20','25.95.239.84','zapzap@zapmail.com',0,'4 Jersey St',5)


select *
from
account;

/* Task #3:  Continue adding tables that utilize data from tables you have already entered data into AND that are the "one" table in relationships. */

/* load the character table */
INSERT INTO [dbo].[character] VALUES (1,1,'Testchar',4,11,0,80,497576,10873,0)
INSERT INTO [dbo].[character] VALUES (2,1,'Palidan',1,2,0,42,660913,1892,0)
INSERT INTO [dbo].[character] VALUES (3,1,'Zangarash',2,9,0,7,97767,145,0)
INSERT INTO [dbo].[character] VALUES (4,2,'Blaisepascal',1,8,0,71,927966,6136,0)
INSERT INTO [dbo].[character] VALUES (5,1,'Vengance',5,4,0,70,74219,4968,0)
INSERT INTO [dbo].[character] VALUES (6,2,'Deadted',5,1,0,13,95111,258,0)
INSERT INTO [dbo].[character] VALUES (7,2,'Cobol',4,11,0,34,353062,908,0)
INSERT INTO [dbo].[character] VALUES (8,1,'Gogogoguy',4,1,0,4,100826,77,0)
INSERT INTO [dbo].[character] VALUES (9,4,'Dee',4,11,0,4,100907,85,0)
INSERT INTO [dbo].[character] VALUES (10,6,'Rao',2,3,0,5,101310,94,0)
INSERT INTO [dbo].[character] VALUES (11,1,'Gimley',3,3,0,3,100235,60,0)
INSERT INTO [dbo].[character] VALUES (12,8,'Krog',1,1,0,1,95676,32,0)
INSERT INTO [dbo].[character] VALUES (13,14,'Bobo',3,3,0,1,100000,26,0)
INSERT INTO [dbo].[character] VALUES (14,14,'Ruthdrauger',4,3,1,4,100220,77,0)
INSERT INTO [dbo].[character] VALUES (15,6,'momos',4,3,0,7,105107,128,0)
INSERT INTO [dbo].[character] VALUES (16,1,'Butters',4,11,0,4,100290,85,0)
INSERT INTO [dbo].[character] VALUES (17,7,'Ionee',4,3,1,2,100000,43,0)
INSERT INTO [dbo].[character] VALUES (18,9,'Mystichammer',1,2,1,8,90342,194,0)
INSERT INTO [dbo].[character] VALUES (19,9,'Eycha',11,7,1,1,100000,29,0)
INSERT INTO [dbo].[character] VALUES (20,9,'Broken',4,11,1,1,100000,34,0)
INSERT INTO [dbo].[character] VALUES (21,11,'Raven',1,4,1,7,44795,137,0)
INSERT INTO [dbo].[character] VALUES (22,10,'Tiros',1,2,0,13,20108,334,0)
INSERT INTO [dbo].[character] VALUES (23,1,'Admin',7,8,0,2,99813,47,0)
INSERT INTO [dbo].[character] VALUES (24,3,'Hellena',1,5,1,1,100000,32,0)
INSERT INTO [dbo].[character] VALUES (25,3,'Sneaky',1,4,1,6,103029,110,0)
INSERT INTO [dbo].[character] VALUES (26,3,'Crina',1,9,1,1,100000,23,0)
INSERT INTO [dbo].[character] VALUES (27,3,'Anden',1,1,0,1,100000,32,0)
INSERT INTO [dbo].[character] VALUES (28,3,'Gravin',1,2,0,1,100000,18,0)
INSERT INTO [dbo].[character] VALUES (29,3,'Alarren',1,8,0,1,100000,32,0)
INSERT INTO [dbo].[character] VALUES (30,11,'Veronica',1,5,1,1,100000,32,0)
INSERT INTO [dbo].[character] VALUES (31,10,'Ellada',11,7,1,1,100000,29,0)
INSERT INTO [dbo].[character] VALUES (32,10,'Antonio',4,11,0,2,100035,51,0)
INSERT INTO [dbo].[character] VALUES (33,10,'Gribbles',7,8,0,4,100667,77,0)
INSERT INTO [dbo].[character] VALUES (34,17,'Holyhooves',11,2,1,73,1640769,9143,0)
INSERT INTO [dbo].[character] VALUES (35,10,'Ganky',7,4,1,1,100000,25,0)
INSERT INTO [dbo].[character] VALUES (36,18,'Jafasa',11,8,0,33,149362,1027,0)
INSERT INTO [dbo].[character] VALUES (37,2,'Lua',11,7,0,41,153938,1324,0)
INSERT INTO [dbo].[character] VALUES (38,19,'Rahas',1,2,0,20,6928,591,0)
INSERT INTO [dbo].[character] VALUES (39,22,'Jeebus',1,5,0,70,17937982,8212,0)
INSERT INTO [dbo].[character] VALUES (40,23,'Bully',8,10,0,80,2443408,7379,0)
INSERT INTO [dbo].[character] VALUES (41,19,'Admea',11,3,1,70,11284370,7042,0)
INSERT INTO [dbo].[character] VALUES (42,27,'Madesyn',1,9,1,5,101735,91,0)
INSERT INTO [dbo].[character] VALUES (43,27,'Anthony',11,2,0,2,100538,36,0)
INSERT INTO [dbo].[character] VALUES (44,18,'Monstros',7,4,0,8,101549,144,0)
INSERT INTO [dbo].[character] VALUES (45,28,'Zivanna',1,8,1,1,100000,1,0)
INSERT INTO [dbo].[character] VALUES (46,28,'Debbie',3,4,1,1,100000,1,0)
INSERT INTO [dbo].[character] VALUES (47,19,'Garict',3,1,0,1,100000,20,0)
INSERT INTO [dbo].[character] VALUES (48,15,'Lalarieli',11,7,1,68,18158551,6284,0)
INSERT INTO [dbo].[character] VALUES (49,19,'Anya',5,9,1,1,100000,1,0)
INSERT INTO [dbo].[character] VALUES (50,25,'Hammet',7,8,0,10,113214,167,0)
INSERT INTO [dbo].[character] VALUES (51,22,'Danhalen',11,6,0,63,4037977,10353,0)
INSERT INTO [dbo].[character] VALUES (52,2,'toto',4,6,0,58,1091224,7643,0)
INSERT INTO [dbo].[character] VALUES (53,1,'Death',1,6,0,58,384772,7983,0)
INSERT INTO [dbo].[character] VALUES (54,17,'Molagbal',4,6,0,60,1910769,8257,0)
INSERT INTO [dbo].[character] VALUES (55,19,'Sopira',4,6,1,58,1100000,7643,0)
INSERT INTO [dbo].[character] VALUES (56,35,'Genenthal',4,3,0,34,890031,1158,0)
INSERT INTO [dbo].[character] VALUES (57,34,'Jace',1,2,0,11,96122,288,0)
INSERT INTO [dbo].[character] VALUES (58,34,'Artanis',4,11,0,10,109388,207,0)
INSERT INTO [dbo].[character] VALUES (59,36,'Alaria',7,4,1,38,39834,1480,0)
INSERT INTO [dbo].[character] VALUES (60,2,'Grandwizel',7,8,0,40,21821,950,0)
INSERT INTO [dbo].[character] VALUES (61,39,'Agarwaen',1,5,0,30,167880,932,0)
INSERT INTO [dbo].[character] VALUES (62,34,'Valyrian',4,1,0,33,301085,1248,0)
INSERT INTO [dbo].[character] VALUES (63,39,'Turambar',3,1,0,6,95740,115,0)
INSERT INTO [dbo].[character] VALUES (64,2,'Pascal',1,9,0,24,320838,653,0)
INSERT INTO [dbo].[character] VALUES (65,40,'Russ',11,2,0,4,100833,72,0)
INSERT INTO [dbo].[character] VALUES (66,34,'Taris',3,4,0,6,102719,110,0)
INSERT INTO [dbo].[character] VALUES (67,34,'Wizbang',7,8,0,16,110337,322,0)
INSERT INTO [dbo].[character] VALUES (68,39,'Vasa',4,3,1,7,100453,128,0)
INSERT INTO [dbo].[character] VALUES (69,35,'Yuanji',8,4,1,19,191395,561,0)
INSERT INTO [dbo].[character] VALUES (70,41,'Baba',3,2,0,52,2527039,2937,0)
INSERT INTO [dbo].[character] VALUES (71,35,'Harken',6,1,0,20,112958,918,0)
INSERT INTO [dbo].[character] VALUES (72,34,'Zazgrul',8,3,0,2,100000,43,0)
INSERT INTO [dbo].[character] VALUES (73,36,'Kira',1,8,1,16,133568,397,0)
INSERT INTO [dbo].[character] VALUES (74,34,'Bolgrim',3,3,0,25,66316,806,0)
INSERT INTO [dbo].[character] VALUES (75,42,'Luna',4,11,1,40,443452,1463,0)
INSERT INTO [dbo].[character] VALUES (76,42,'Flappycap',7,1,0,27,130245,1144,0)
INSERT INTO [dbo].[character] VALUES (77,42,'Namans',11,7,0,3,100548,63,0)



select *
from
Character;

/* Insert rows for the Inventory table */

INSERT INTO [dbo].[Inventory] VALUES (1,1,1,1,0)
INSERT INTO [dbo].[Inventory] VALUES (2,1,7,0,1)
INSERT INTO [dbo].[Inventory] VALUES (3,1,11,0,1)
INSERT INTO [dbo].[Inventory] VALUES (4,1,14,0,0)
INSERT INTO [dbo].[Inventory] VALUES (5,1,23,0,0)
INSERT INTO [dbo].[Inventory] VALUES (6,2,1,0,1)
INSERT INTO [dbo].[Inventory] VALUES (7,2,4,0,1)
INSERT INTO [dbo].[Inventory] VALUES (8,2,15,1,0)
INSERT INTO [dbo].[Inventory] VALUES (9,3,2,1,0)
INSERT INTO [dbo].[Inventory] VALUES (10,3,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (11,4,32,0,0)
INSERT INTO [dbo].[Inventory] VALUES (12,5,1,1,0)
INSERT INTO [dbo].[Inventory] VALUES (13,5,9,0,0)
INSERT INTO [dbo].[Inventory] VALUES (14,5,32,0,0)
INSERT INTO [dbo].[Inventory] VALUES (15,6,23,1,0)
INSERT INTO [dbo].[Inventory] VALUES (16,7,1,0,0)
INSERT INTO [dbo].[Inventory] VALUES (17,7,7,1,0)
INSERT INTO [dbo].[Inventory] VALUES (18,8,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (19,9,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (20,10,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (21,11,7,1,0)
INSERT INTO [dbo].[Inventory] VALUES (22,11,8,0,0)
INSERT INTO [dbo].[Inventory] VALUES (23,14,3,1,0)
INSERT INTO [dbo].[Inventory] VALUES (24,14,21,0,0)
INSERT INTO [dbo].[Inventory] VALUES (25,15,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (26,16,21,1,0)
INSERT INTO [dbo].[Inventory] VALUES (27,17,1,1,0)
INSERT INTO [dbo].[Inventory] VALUES (28,17,4,0,0)
INSERT INTO [dbo].[Inventory] VALUES (29,17,12,0,0)
INSERT INTO [dbo].[Inventory] VALUES (30,18,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (31,19,6,1,0)
INSERT INTO [dbo].[Inventory] VALUES (32,20,9,1,0)
INSERT INTO [dbo].[Inventory] VALUES (33,21,11,1,0)
INSERT INTO [dbo].[Inventory] VALUES (34,22,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (35,23,1,1,0)
INSERT INTO [dbo].[Inventory] VALUES (36,24,3,1,0)
INSERT INTO [dbo].[Inventory] VALUES (37,24,7,0,1)
INSERT INTO [dbo].[Inventory] VALUES (38,23,12,1,0)
INSERT INTO [dbo].[Inventory] VALUES (39,24,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (40,25,2,1,0)
INSERT INTO [dbo].[Inventory] VALUES (41,26,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (42,27,2,1,0)
INSERT INTO [dbo].[Inventory] VALUES (43,27,3,0,0)
INSERT INTO [dbo].[Inventory] VALUES (44,28,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (45,29,3,1,0)
INSERT INTO [dbo].[Inventory] VALUES (46,30,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (47,31,8,1,0)
INSERT INTO [dbo].[Inventory] VALUES (48,32,4,0,0)
INSERT INTO [dbo].[Inventory] VALUES (49,32,12,1,0)
INSERT INTO [dbo].[Inventory] VALUES (50,32,24,0,1)
INSERT INTO [dbo].[Inventory] VALUES (51,32,32,0,0)
INSERT INTO [dbo].[Inventory] VALUES (52,33,2,1,0)
INSERT INTO [dbo].[Inventory] VALUES (53,34,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (54,35,2,1,0)
INSERT INTO [dbo].[Inventory] VALUES (55,36,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (56,37,1,1,0)
INSERT INTO [dbo].[Inventory] VALUES (57,38,15,1,0)
INSERT INTO [dbo].[Inventory] VALUES (58,39,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (59,40,1,1,0)
INSERT INTO [dbo].[Inventory] VALUES (60,41,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (61,42,4,1,0)
INSERT INTO [dbo].[Inventory] VALUES (62,43,7,1,0)
INSERT INTO [dbo].[Inventory] VALUES (63,44,19,1,0)
INSERT INTO [dbo].[Inventory] VALUES (64,45,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (65,46,20,1,0)
INSERT INTO [dbo].[Inventory] VALUES (66,47,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (67,48,1,1,0)
INSERT INTO [dbo].[Inventory] VALUES (68,49,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (69,49,1,0,0)
INSERT INTO [dbo].[Inventory] VALUES (70,49,7,0,0)
INSERT INTO [dbo].[Inventory] VALUES (71,50,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (72,51,4,1,0)
INSERT INTO [dbo].[Inventory] VALUES (73,52,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (74,53,1,1,0)
INSERT INTO [dbo].[Inventory] VALUES (75,54,23,1,0)
INSERT INTO [dbo].[Inventory] VALUES (76,55,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (77,56,12,1,0)
INSERT INTO [dbo].[Inventory] VALUES (78,57,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (79,58,2,1,0)
INSERT INTO [dbo].[Inventory] VALUES (80,59,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (81,60,2,1,0)
INSERT INTO [dbo].[Inventory] VALUES (82,61,4,0,1)
INSERT INTO [dbo].[Inventory] VALUES (83,61,9,0,1)
INSERT INTO [dbo].[Inventory] VALUES (84,61,12,1,0)
INSERT INTO [dbo].[Inventory] VALUES (85,62,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (86,63,12,1,0)
INSERT INTO [dbo].[Inventory] VALUES (87,64,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (88,65,1,1,0)
INSERT INTO [dbo].[Inventory] VALUES (89,66,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (90,67,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (91,67,1,0,1)
INSERT INTO [dbo].[Inventory] VALUES (92,68,2,1,0)
INSERT INTO [dbo].[Inventory] VALUES (93,68,6,0,1)
INSERT INTO [dbo].[Inventory] VALUES (94,69,1,1,0)
INSERT INTO [dbo].[Inventory] VALUES (95,69,10,0,0)
INSERT INTO [dbo].[Inventory] VALUES (96,69,32,0,0)
INSERT INTO [dbo].[Inventory] VALUES (97,70,2,1,0)
INSERT INTO [dbo].[Inventory] VALUES (98,70,4,0,0)
INSERT INTO [dbo].[Inventory] VALUES (99,71,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (100,72,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (101,73,2,1,0)
INSERT INTO [dbo].[Inventory] VALUES (102,73,29,0,0)
INSERT INTO [dbo].[Inventory] VALUES (103,74,32,1,0)
INSERT INTO [dbo].[Inventory] VALUES (104,75,1,1,0)
INSERT INTO [dbo].[Inventory] VALUES (105,76,2,1,0)


select *
from
Inventory;