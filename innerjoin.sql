-- Join işlemi tablolari birleştirmeye yarar
-- select * from northwind.orders inner join northwind.customers on northwind.customers.id=northwind.orders.customer_id
-- inner join on komutu ile birleştirilme şartı belirlendi
 -- select o.id,o.order_date tarih,o.ship_name ,c.id "customer id",concat(c.firstname,c.lastname) 'username' from orders o inner join customers c on customers.id=orders.customer_id where o.ship_city="New York"
 -- where şart o ve c kısaltma konıulabilir
 -- Sipariler once şiparis edenin bilgileri sonra sipariş bilgileri ile birleştirilir
  -- select * from northwind.orders inner join northwind.customers on northwind.customers.id=northwind.orders.customer_id
  -- inner join northwind.order_details on northwind.order_details.id=northwind.orders.id -- eski
  -- burda kişilerin şipariş id sine kişi ismi ve şiparis tarihine gıre sıralanır
  -- select order_id ,product_name,concat(first_name," " ,last_name) customername,(quantity*unit_price) total,order_date from northwind.orders inner join northwind.customers on northwind.customers.id=northwind.orders.customer_id
 --  inner join northwind.order_details on northwind.order_details.id=northwind.orders.id
 --  inner join northwind.products on northwind.products.id=northwind.order_details.product_id
  -- order by customername
  -- Burda order id şipariş numarasi produk name siparis ismi total product tablusana gore hesaplanır
  -- Amaç şiparişleri tek tek kim vermis ne kadar tutmus kisi ismine gore sıralanmıs
  -- select northwind.orders.id ,concat(first_name," " ,last_name) customername,sum(quantity*unit_price) total,order_date from northwind.orders inner join northwind.customers on northwind.customers.id=northwind.orders.customer_id
  -- inner join northwind.order_details on northwind.order_details.id=northwind.orders.id
  -- inner join northwind.products on northwind.products.id=northwind.order_details.product_id
 -- group by northwind.orders.id burda siparişe gore gruplanır
