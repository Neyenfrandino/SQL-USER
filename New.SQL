use users;

show databases;  
create table users (
id int not null auto_increment,
name varchar (50) not null,
edad int not null,
email varchar(100) not null,
apellido varchar (100) not null,
primary key (id)
);
insert into users (name, apellido, edad, email) values ('oscar', 'padrilla', 25, 'oscar@gmail.com');
insert into users (name, apellido, edad, email) values ('liliana ', 'loaiza', 30, 'ljloaiza@gmail.com');
insert into users (name, apellido, edad, email) values ('agusto', 'patriganani', 27, 'agustop@gmail.com');
insert into users (name, apellido, edad, email) values ('pupi', 'zanetti', 25, 'pupiz@gmail.com');
insert into users (name, apellido, edad, email) values ('agustin', 'minetti', 26, 'aguminetti@gmail.com');

# Con esto agrego una columna nueva
alter table users add apellido varchar (100);


delete from users where id = 2 ;
delete from users where id = 3;

# esto es para domicar la estructura de la table
alter table users modify column edad int (35);


#actualizar un registo de las columnas especificas 
update users set edad = '35' where id = 1; 


