 1. El total de ordenes del cliente con el ID 3

 SELECT COUNT(orderid) FROM orders WHERE customerid = 3;
COUNT(orderid)
          

2. El total de ordenes del cliente con el ContactName igual a 'Jim Wood'

SELECT COUNT(orderid) FROM orders
  INNER JOIN customers 
    ON orders.customerid = customers.customerid
      WHERE contactname = 'Jim Wood';


3. El total de ordenes del cliente con CompanyName igual a 'Slots Carpet'
SELECT COUNT(orderid) FROM orders
  INNER JOIN customers 
    ON orders.customerid = customers.customerid
      WHERE companyname = 'Slots Carpet';

4. El total de ordenes de cada compañía ordenado de manera descendente

SELECT companyname, COUNT(orderid) AS pedidos FROM orders
  INNER JOIN customers 
    ON orders.customerid = customers.customerid
      GROUP BY companyname
        ORDER BY companyname DESC;

 - Total orders for each company ordered by the company with the most orders

 SELECT companyname, COUNT(orderid) AS pedidos FROM orders
   INNER JOIN customers 
    ON orders.customerid = customers.customerid
      GROUP BY companyname
        ORDER BY pedidos DESC;

5. El total de ordenes de cada compañía ordenado de manera ascendente

SELECT companyname, COUNT(orderid) AS pedidos FROM orders
  INNER JOIN customers 
    ON orders.customerid = customers.customerid
      GROUP BY companyname
        ORDER BY companyname ASC;

- Total de pedidos para cada empresa ordenada por la empresa con el menor número de pedidos

SELECT companyname, COUNT(orderid) AS pedidos FROM orders
  INNER JOIN customers 
    ON orders.customerid = customers.customerid
      GROUP BY companyname
        ORDER BY pedidos ASC;

 6. La compañía con el mayor número de ordenes

SELECT companyname, COUNT(orderid) AS pedidos
  FROM orders
    INNER JOIN customers
      ON orders.customerid = customers.customerid
        GROUP BY companyname
          ORDER BY pedidos DESC
            LIMIT 1;

7. La suma total de piezas que fueron ordenadas por cada compañía.

SELECT companyname, SUM(quantity) AS piezas 
FROM orders
  INNER JOIN customers
    ON orders.customerid = customers.customerid
      INNER JOIN orderdetails
        ON orders.orderid = orderdetails.orderid
          GROUP BY companyname
            ORDER BY piezas DESC; 

8. El monto total en pesos de la orden con ID 4

SELECT orderid, unitprice * quantity AS costo_total
  FROM orderdetails
    WHERE orderid = 4;

 9. El monto total en pesos de cada orden

SELECT orderid, SUM(unitprice * quantity) AS total 
  FROM orderdetails
    GROUP BY orderid;

10. La consulta del inciso anterior pero únicamente mostrando aquellas ordenes que sean mayores a $1,000.00 pesos

SELECT orderid, SUM(unitprice * quantity) AS total 
  FROM orderdetails
      GROUP BY orderid
        HAVING SUM(unitprice * quantity) > 1000;

11. El total de piezas en cada orden

SELECT orderid, SUM(quantity) 
  FROM orderdetails
    GROUP BY orderid;