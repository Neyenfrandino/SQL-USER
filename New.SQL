SELECT * FROM users.users;
create table prodacts(
id int not null auto_increment,
name varchar (50) not null,
created_by int not null,
marca varchar (50) not null,
primary key (id),
foreign key (created_by) references users (id)
);
rename table prodacts to product;

insert into product (name, created_by, marca)
values
	('ipad', 1, 'apple'),
    ('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook', 1, 'apple'),
    ('imac', 3, 'apple'),
    ('ipad mini', 2, 'apple');
    select * from product;
    
    #left join cruzando las tablas de id de users(u) con la de created_by (id) de producto(P). 
    select u.id, u.name, p.name from users u left join product p on u.id=p.created_by;
    
    
    