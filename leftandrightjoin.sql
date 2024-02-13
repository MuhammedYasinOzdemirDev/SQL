-- left join amac sol tarafa yazılanı getirir ve ortak olanlari yani butun kullanıcılar gelir ama şipariş etmeyenlerede gelir id null olma durumuna gore kim etmemiş bulunur
-- Siparis etmeyenleri bulma
-- select c.first_name,o.id from customers c left join orders o on c.id=o.customer_id where o.id is null order by c.first_name
-- Satılmayanlari bulma
-- select p.id,p.product_name,o.id from northwind.products as p left join northwind.order_details as o on p.id=o.product_id where o.id is null
-- right join sag taraf için gecerli
-- Siparis olmayan calisan bulma
select e.first_name,o.id from northwind.orders o right join northwind.employees e on e.id=o.employee_id where o.id is null
