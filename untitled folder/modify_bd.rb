----------- Paso 1: INSERT

  Agrega a la tabla de Orders una nueva orden relacionándola con un cliente existente. Adicionalmente para esta nueva 
  orden crea dos registros en la tabla de OrderDetails. Por ahora no importan los datos invéntalos.

  # Nueva orden

  INSERT INTO orders 
    (OrderID, CustomerID, OrderDate, RequiredDate, ShippedDate)
      VALUES (21, 1, '2013-03-20', '2013-03-25', '2013-03-22');

  # Registros OrderDetails

  INSERT INTO OrderDetails
    (orderdetailid, orderid, productid, unitprice,quantity)
      VALUES (48, 21, 3, 5.0, 20 );

  INSERT INTO OrderDetails
    (orderdetailid, orderid, productid, unitprice,quantity)
      VALUES (49, 21, 1, 1.1, 5 );

----------- Paso 2: INSERT / SELECT / UPDATE

En este paso modificaremos de manera más avanzada la base de datos.

La empresa Floor Co. creará una nueva empresa y te esta pidiendo que las ordenes que hizo en 2013 se las asignes a esta nueva 
empresa. Para ello deberás:

- Primero crear un nuevo cliente en la tabla Customers. (Inventa los datos)

INSERT into Customers
  (customerid, companyname, contactname, contacttitle, address, city, state)
    VALUES (6, 'Nokogiri', 'Jesus Ramirez', 'Owner', 'numero 395 Sin Nombre', 'El Paso', 'Texas');

- Has una consulta para saber cuales son las ordenes de la empresa Floor Co.

SELECT orderid, customers.customerid, OrderDate, companyname 
  FROM orders
    INNER JOIN Customers
      ON orders.customerid = customers.customerid
        WHERE companyname = 'Floor Co.';


- Finalmente deberás cambiar a las ordenes de 2013 su valor de CustomerID

# mal
# UPDATE orders 
#   SET CustomerID = 6
#     WHERE orderid = 18 AND orderid = 20;

UPDATE orders
  SET customerid = 6
    WHERE orderid IN (18,20);

SELECT orderid, customerid, orderdate
  FROM orders
    WHERE orderdate > '2012-12-31' AND customerid = 3;

UPDATE orders 
  SET CustomerID = 6
     WHERE orderdate > '2012-12-31' AND customerid = 3;

---------------- Paso 3: Borrar

Borra al cliente Slots Carpet

# Busquedas para verificar la información

--- tabla customers

SELECT * FROM customers
  WHERE companyname = 'Slots Carpet';

Slots Carpert id = 5

--- tabla orders

SELECT * FROM orders
  WHERE customerid = 5;

  orderid = 13,17

--- tabla ordersdetails

SELECT * FROM orderdetails
  WHERE orderid IN (13,17);


SELECT * FROM orderdetails
  WHERE orderid = 13 OR orderid = 17;

# Comparaciones correctas

sqlite> select count(*) from OrderDetails;
=>
count(*)  
----------
45

sqlite> select count(*) from Orders;
=>
count(*)  
----------
19

sqlite> select count(*) from Customers;
=>
count(*)  
----------
5

# Deletes

DELETE FROM orderdetails
  WHERE orderid IN (13,17);

DELETE FROM orders
  WHERE customerid = 5;

DELETE FROM customers
  WHERE customerid = 5;