DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getFavouriteItem`(IN sub_category  varchar(15))
BEGIN
    declare max_value int;
   drop table if exists total;
   CREATE TEMPORARY TABLE total (product_id varchar(10) not null, amount int);
   INSERT INTO total (product_id, amount)
   select m.product_id, sum(amount) 
   from orderdetails od, menu as m
   where od.product_id = m.product_id and sub_category_id in (select sub_category_id 
   from subcategory s
   where s.sub_category = sub_category) 
   group by m.product_id;
   set max_value = (select max(amount)
   from total);
   drop table if exists maximum;
   create temporary table maximum (product_id varchar(10) not null, amount int);
   INSERT INTO maximum (product_id)
   select t.product_id
   from total t
   where t.amount = max_value;
   select distinct(product_name) 
   from maximum pmax, menu m
   where m.product_id = pmax.product_id;
   drop table total;
   drop table maximum;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrderdetail`(IN SSN varchar(10))
BEGIN
    select c.first_name Fname, c.last_name Surname, m.product_name product, 
    od.amount amount, o.order_id order_num, (od.amount*m.cost) as cost, o.delivery_date
    from orders o, orderdetails od, menu m, customer c
    where c.SSN = SSN and o.order_id = od.order_id and od.product_id = m.product_id and o.order_id in
	(select o.order_id 
    from orders o
    where o.customer_SSN = SSN)
    group by o.order_id;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOrderdetails`(IN order_id VARCHAR(10))
BEGIN
	select m.product_name, od.amount
    from orders o, orderdetails od, menu m
    where o.order_id = order_id and o.order_id = od.order_id and od.product_id = m.product_id;
END$$
DELIMITER ;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductbyCategory`(IN category_name VARCHAR(20))
BEGIN
    drop table if exists temp;
    CREATE TEMPORARY TABLE temp (category_id varchar(10));
    INSERT INTO temp (category_id)
    select c.category_id 
    from category c
    where c.category_name = category_name;
    drop table if exists temp0;
    CREATE TEMPORARY TABLE temp0 (sub_category_id varchar(15));
    INSERT INTO temp0 (sub_category_id)
    select s.sub_category_id 
    from subcategory s, temp t
    where s.category_id = t.category_id;
	Select distinct p.product_name from temp0 t, menu p 
    where  p.sub_category_id = t.sub_category_id;
    drop table temp;
    drop table temp0;
END$$
DELIMITER ;


