1. Создайте в новой базе таблицу Territories со структурой, аналогичной структуре таблицы Territories из учебной базы. 
  
   CREATE TABLE Territories ( 
   TerritoryID nvarchar(20) NOT NULL, 
   TerritoryDescription nchar(50) NOT NULL,
	 RegionID int NOT NULL); 

2. Добавьте в неё и таблицу Region несколько значений так, чтобы они оказались связаны друг с другом через FK.
   INSERT INTO Region (RegionID, RegionDescription)
   VALUES (1, 'Central'), (2, 'Northwest'), (3, 'South');

   INSERT INTO Territories (TerritoryID,TerritoryDescription, RegionID)
   VALUES (1, 'Belgorodskaya', 1), (2, 'Bryanskaya', 1), (3, 'Vladimirskaya', 1),
   (4, 'Arhangelskaya', 2), (5, 'Vologodskaya', 2), (6, 'Kaliningradskaya', 2),
   (7, 'Adugeya', 3), (8, 'Astrahanskaya', 3), (9, 'Volgogradskaya', 3);

Насколько понимаю непосредственную связь между ключами нужно задавать отдельно. Но по аналогии должно выглядеть вышеописанным образом.
   
