1. Создайте в новой базе таблицу Territories со структурой, аналогичной структуре таблицы Territories из учебной базы. 
  
   CREATE TABLE Territories ( 
   TerritoryID nvarchar(20) NOT NULL, 
   TerritoryDescription nchar(50) NOT NULL,
	 RegionID int NOT NULL); 

2. Добавьте в неё и таблицу Region несколько значений так, чтобы они оказались связаны друг с другом через FK.

   
