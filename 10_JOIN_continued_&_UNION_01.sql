11.5.1. Отберите с помощью LEFT JOIN все записи из таблицы Customers, для которых FK-ключ таблицы Orders пустой.
        SELECT * FROM Customers
        LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
        WHERE Orders.CustomerID IS NULL;  

11.5.2. Выведите конкретную информацию по всем пользователям Customers и поставщикам Suppliers -
        имя контактной персоны, город и страну, а также идентификацию группы (пользователь или поставщик).
        SELECT 'Customer' As Type, ContactName, City, Country FROM Customers
        UNION
        SELECT 'Supplier' As Type, ContactName, City, Country FROM Suppliers;

Рефлексия по предыдущему заданию:
10.4.1. Выбирал из Products, а не [Order Details]. По результатам совпадает.
