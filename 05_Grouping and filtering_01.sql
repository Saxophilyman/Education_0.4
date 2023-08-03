6.3.1. Выполните агрегацию таблицы Contacts по полю ContactType.
      SELECT ContactType FROM Contacts
      GROUP BY ContactType;
  
6.3.2. Выведите средние цены товаров (UnitPrice) в каждой из категорий (CategoryId) таблицы Products, отсортированные по возрастанию.
      SELECT AVG(UnitPrice) as AVG_Price
      FROM Products
      GROUP BY CategoryId
      ORDER BY AVG_Price;

  
Рефлексия по предыдущему заданию:
В пункте 5.4.3. выводил результирующие отдельно. Интересно, что можно осуществить всё в одну строчку. Запомню для использования.
