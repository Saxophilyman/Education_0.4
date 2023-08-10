10.4.1. Перепишите задание 8.3.2 через синтаксис JOIN.
8.3.2 Организуйте эквисоединение, которое выводит цену и названия тех товаров, для которых цена за единицу (UnitPrice) в таблице Order Details меньше 20.

  
  
10.4.2. Имеется запрос
SELECT Orders.Freight, Customers.CompanyName
FROM Orders INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
ORDER BY Freight;
Проверьте этот запрос с вариантом FULL JOIN -- за счёт чего выдача получилась объёмнее? Почему значения NULL встречаются в обоих полях набора?

  
  
10.4.3. Подумайте, как с помощью предложения WHERE превратить запрос CROSS JOIN в INNER JOIN.


  
10.4.4. Перепишите данный запрос в INNER JOIN:
SELECT Products.ProductName, [Order Details].UnitPrice
FROM Products CROSS JOIN [Order Details]
WHERE Products.ProductID = [Order Details].ProductID
