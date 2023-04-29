use Examen;
CREATE TABLE `provincia` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
);

insert into provincia 
values
	(1, 'Cordoba', true),
    (2, 'Misiones', true),
    (3, 'Buenos Aires', true),
    (4, 'Santigo del estero', true),
    (5, 'Mendoza', false),
    (6, 'Tucuman', true);
    
update provincia
set name= 'Santiago del Estero'
where id= 4;

update provincia
set active= true
where id= 5 ;
    
    
select * from provincia; 

create table ciudad(
id int auto_increment primary key not null,
name varchar(50) not null,
active boolean not null,
provincia_id int references provincia(id)
);

insert into ciudad ( name, active, provincia_id)
values
	('Cordoba capital', false, 1),
    ('Mendoza capital', false, 5);
    
insert into ciudad (name, active, provincia_id)
values
	('Villa Maria', true, 1),
    ('Tucuman capital', true, 6),
    ('Villa Vueva', true, 1),
    ('Carlos Paz', true, 1),
    ('El soberbio', true, 2),
    ('San Vicente', true, 2);
    
select * from ciudad;

update ciudad 
set name= 'Cordoba Capital', 
	active = true 
where id= 1 ;

update ciudad 
set name= 'Mendoza Capital',
	active= true
where id= 2 ;

update ciudad 
set name= 'Tucuman Capital'
where id= 4 ;

select name, id from ciudad;

select c.id, c.name, p.name from ciudad c left join provincia p on p.id=c.provincia_id;

select count(c.id),c.name 
from ciudad c 
left join provincia p on p.id=c.provincia_id 
group by c.provincia_id;



select *
from ciudad;

select *
from provincia;


update provincia
set active = False
where id = 5;

# Inner Join
select provincia.name as provincia_nombre, ciudad.name as ciudad_nombre
from provincia
inner join ciudad on provincia.id  = ciudad.provincia_id
where provincia.active = true
and ciudad.active = true
order by provincia_nombre, ciudad_nombre;


# Left join

#insert into provincia (id, name, active) values(7, 'Desconocida', True);
insert into provincia values(7, 'Desconocida', True);

select p.name as provincia_nombre, c.name as ciudad_nombre
from provincia p
left join ciudad c on p.id  = c.provincia_id
where p.active = true
#and c.active = true
order by provincia_nombre, ciudad_nombre;

# Agregaciones:
# elem: 1, 2, 5, 4
# count -> contar la cantidad de elementos = 4
# sum -> suma los elementos = 12
# min -> devuelve el valor mínimo = 1
# max -> devuelve el valor máximo = 5
# avg -> average / promedio = 3

# Requerimientos:
# 1. Traer nombre de provincia y ciudad. OK
# 2. No queremos provincias basura. OK
# 3. Solo traer provincias que tengan al menos una ciudad. OK

select p.name as nombre_provincia, c.name as nombre_ciudad
from provincia p
inner join ciudad c on p.id=c.provincia_id
where p.active=true
order by p.name, c.name; 

# 4. Cantidad de ciudades por provincia
# provincia | cantidad_ciudades

select 
	p.name as nombre_provincia, 
	count(c.id) as cantidad_ciudades
from provincia p
inner join ciudad c on p.id=c.provincia_id
where p.active=true
group by p.name
order by p.name
# LIMIT 1
;


/* Clause schema

SELECT 
	{column1} AS alias1, 
    {column2} AS alias2, 
    {column3} AS alias3, ...
FROM {table1} t1
JOIN {table2} t2 ON {condition}
WHERE {condition1}
  AND/OR {condition2}
  AND/OR {condition3}
GROUP BY 
	{column1}, 
    {colum2}, ..
ORDER BY
	{column1}, 
    {colum2}, ..
LIMIT {number};
*/

/* Conditions with comparison operators / relation operators
=: Igual a
!= o <>: Diferente de
<: Menor que
>: Mayor que
<=: Menor o igual que
>=: Mayor o igual que
*/

/*
Taller
1. AND/OR
1. Comparison operators
*/