-- SQL Day 1

use bank;

select * from trans;

select * from bank.trans; 
-- Es lo mismo que lo primero pero más seguro por si estamos usando mas de una base de datos
select trans_id, account_id, date, type from bank.trans;
-- Por si queremos columnas en concreto
-- También podemos seleccionar con alias como en Python
select trans_id as Transaction_ID from bank.trans as bt
limit 10;
-- No pongo punto y coma en la previa, y lo pongo despues del "limit 10" para que sólo me muestre 10 valores y no los millones que puede haber

select count(*) from bank.trans;
-- me devuelve las filas en el fichero trans

select "Hello World";
select distinct type from bank.card;
-- Es como la función unique() de python
select distinct A2 as District, A3 as Region from bank.district order by A2 asc limit 30;
-- Ponemos que sea por orden ascendente de A2 y limitado a los 30 primeros valores

select *, amount-payments as balance from bank.loan;
-- Me crea un nuevo campo 'balance' restando los dos indicados

select * from bank.loan
where status in ('B','b') and amount > 100000;
-- Para elegir algo que cumpla una condición dentro de una selección más grande

-- Activity 3 lesson 2.02
-- 1
select * from bank.card where type = 'junior' and issued > 980000;

-- 2
select * from bank.trans where type = 'VYDAJ' and (operation = 'VKLAD' or operation = 'VYBER') limit 30;
-- Cuando hay un 'or', poner los paréntesis para que no se líe

-- 3
select loan_id, account_id, (amount-payments) as debt from bank.loan where status = 'B' and (amount - payments) > 1000;

-- Fin actividad

select count(order_id) from bank.order;
-- Para contar el número de pedidos
select max(amount) from bank.order;

select floor(avg(amount)) from bank.order;
-- Floor es redondear para abajo
select ceiling(avg(amount)) from bank.order;
-- Ceiling es redondear hacia arriba

select *, length(k_symbol) as 'Symbol_length' from bank.order;
-- Longitud de los valores de la columna k_symbol

select *, concat(order_id, account_id) as 'concat' from bank.order;
-- Nos concatena las columnas indicadas

select *, format(amount, 2) from bank.loan;
-- Formatea a los decimales indicados los valores de la columna indicados

select *, lower(A2), upper(A3) from bank.district;
-- Convierte a mayus/minus los valores de las cols indicadas

select A2, left(A2, 5), A3, ltrim(A3) from bank.district;

select issued, substring_index(issued, ' ',1) from bank.card;
-- Separar un string por el valor indicado (en este caso espacio)y quedarme con lo de la posición indicada
-- Muy parecido al split() de Python

-- Activity 4 lesson 2.02
-- 1
select max(amount), min(amount) from bank.trans where amount > 0;

-- 2
select *, substr(date, 1, 2) as year from bank.account;
-- Substring --> A partir del primer carácter, cógeme 2