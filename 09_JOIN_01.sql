10.4.1. Перепишите задание 8.3.2 через синтаксис JOIN.
8.3.2 Организуйте эквисоединение, которое выводит цену и названия тех товаров, для которых цена за единицу (UnitPrice) в таблице Order Details меньше 20.
  
        SELECT  Products.ProductName, [Order Details].UnitPrice
        FROM Products JOIN [Order Details]
        ON  [Order Details].ProductID = Products.ProductID AND [Order Details].UnitPrice < 20;


  
10.4.2. Имеется запрос
SELECT Orders.Freight, Customers.CompanyName
FROM Orders INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
ORDER BY Freight;
Проверьте этот запрос с вариантом FULL JOIN -- за счёт чего выдача получилась объёмнее? Почему значения NULL встречаются в обоих полях набора?

        Насколько понимаю выдача получается за тсчёт разницы обработки запросов INNER и FULL JOIN.
        Так как INNER JOIN объединяет таблицы исходя из наличия данных и соответствия в первой и второй таблице.
        А FULL JOIN объединяет данные и без наличия соответствия данных из противоположной таблице, задавая им значение NULL.
  
  
10.4.3. Подумайте, как с помощью предложения WHERE превратить запрос CROSS JOIN в INNER JOIN.
        
        Предполагаю, что нужно задать с помощью команды  WHERE уточнения в виде соответствия по FK ключам, тогда вместо декартового произведения, например
        10*10=100 строк, получится те же 10*10=10 строк в соответствии по FK ключам..
        Пример:
        SELECT Employees.FirstName, Employees.LastName, Orders.Freight
        FROM Employees CROSS JOIN Orders;
        WHERE Orders.EmployeeID = Employees.EmployeeID

  
10.4.4. Перепишите данный запрос в INNER JOIN:
SELECT Products.ProductName, [Order Details].UnitPrice
FROM Products CROSS JOIN [Order Details]
WHERE Products.ProductID = [Order Details].ProductID
