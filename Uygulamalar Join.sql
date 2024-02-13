-- Hangi urunden kaç tane satılmıs
-- select p.id,p.product_name,count(*) adet from products p inner join order_details od
 -- on p.id=od.product_id 
 -- group by p.id order by adet
 -- En çok kazandıran il 3 urun
 -- select p.product_name,sum((quantity*unit_price)) total from order_details od inner join products p on p.id=od.product_id group by p.id order by total desc limit 3
 -- Hangi kargo şirketleri toplam ne kadar odeme yapmıstır
 -- select s.company ,sum(shipping_fee) toplam from orders o inner join shippers s on s.id=o.shipper_id group by shipper_id order by toplam desc
 -- en uygun kargo şirketi
 select s.company ,avg(shipping_fee) toplam from orders o inner join shippers s on s.id=o.shipper_id where shipping_fee >0  group by shipper_id having count(*)>10 order by toplam limit 3  -- bedavalar dahil değil ve having kısmında en az 10 şipariş yapmıs sirketler
