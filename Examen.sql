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



