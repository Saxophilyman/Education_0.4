7.3.1. Выведите вычислимое поле таблицы Order Details, в котором укажите значение поля Discount (скидка), выраженное в процентах.
       SELECT Discount*100 FROM [Order Details];

  
7.3.2. Выведите все поля таблицы Order Details, для которых количество единиц товара на складе больше 40. 
Поле UnitsInStock (складские запасы) извлеките вложенным запросом через FK-поле ProductId, ссылающееся на таблицу Products.
       SELECT * FROM [Order Details]
       WHERE ProductID IN
       (SELECT ProductID FROM Products
        WHERE UnitsInStock > 40);
  
7.3.3. Расширьте предыдущий запрос проверкой, чтобы стоимость товара (поле Freight таблицы Orders) было не менее 50. Связь с таблицей Orders происходит через FK-поле OrderID.
       SELECT * FROM [Order Details]
       WHERE ProductID IN
      	(SELECT ProductID FROM Products
		      WHERE UnitsInStock > 40)
       AND OrderID IN
	      (SELECT OrderID FROM Orders
		      WHERE Freight > 50);

Рефлексия по предыдущему заданию:
В первом задании 6.3.1. не учёл, что необходимо ещё подсчёт осуществить.
Общая ошибка всех задач - отсутствует указатель на 2ю таблицу. Насколько понимаю группировка происходит, но совсем не полноценная.
