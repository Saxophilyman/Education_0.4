13.3.1. Увеличьте скидку (Discount) в таблице Order Details до 20% (0.20) для тех единиц товара, которых на складе хранится больше 50 (поле Quantity). 
        Напишите запрос, но не выполняйте, чтобы не вносить изменения в таблицу.
        UPDATE Order Details
        SET Discount = 0.20
        WHERE Quantity > 50;

13.3.2. В таблице Contacts измените все контактные данные, ранее приходившиеся на Berlin (поле City) и Germany (поле Country), 
        соответственно на Piter и Russia. Напишите запрос, но не выполняйте, чтобы не вносить изменения в таблицу.
        UPDATE Contacts
        SET City = 'Piter' and Country = 'Russia'
        WHERE City = 'Berlin' and Country = 'Germany'

13.3.3. Добавьте и затем удалите несколько записей в таблице Shippers. По какому критерию вы удаляли свежие записи?
        Добавление:
        1) INSERT INTO Shippers (CompanyName, Phone)
           VALUES ('Fast Trails', '(503) 555-5555');
        
        2) INSERT INTO Shippers (CompanyName, Phone)
           VALUES ('Pony Express', '(503) 555-5556');

        Удаление:
        1) DELETE FROM Shippers
           WHERE ShipperID = 5;

        2) DELETE FROM Shippers
           WHERE CompanyName = 'Fast Trails';

        Удалял по ShipperID и по CompanyName, оба варианта работают.


Рефлексия по предыдущему заданию:
12.3.1. добавил поле TitleOfCourtesy
12.3.3. Выводы сделал не совсем в ту сторону, но идея понятна, многие связи в процессе подобного добавления не учтены, что может существенно сказаться на структуре данных в целом в дальнейшем.
