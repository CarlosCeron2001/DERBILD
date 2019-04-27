drop database if exists Derbild;
create database if not exists Derbild;
use Derbild;

create table if not exists Rol(
IdRol	int(1),
DescRol	varchar(25), /*tipo de rol*/
primary key (IdRol)
);
insert into Rol values(1,'Cliente');
insert into Rol values(2,'Fotógrafo');
insert into Rol values(3,'Operador');
insert into Rol values(4,'Gerente de soporte');
insert into Rol values(5,'Ingeniero de soporte');

create table if not exists Usuario(
Rol int,
IdUser	int auto_increment,
NomUsuario varchar(10),
Nom		varchar(20), /*nombre completo*/
ApP varchar(10),
ApM varchar(10),
Pass	varchar(10), /*contraseña no más de 10 dígitos*/
Edad	int(3),
Correo varchar(50),
Deleg varchar(25),
primary key(IdUser),
foreign key(Rol) references Rol(IdRol)
);
insert into Usuario values
(1,null,'carlos123','Carlos Alberto','Ceron','Puente','a1','17','carlos123@hotmail.com','Miguel Hidalgo');
insert into Usuario values
(2,null,'gaddi123','Gaddi Salatiel','Amaya','Rivas','b2','20','gaddi123@hotmail.com','Milpa Alta');
insert into Usuario values
(3,null,'fer123','Fernanda Noemi','Martinez','Castillo','c3','19','fer123@hotmail.com','Gustavo A. Madero');
insert into Usuario values
(4,null,'pablo123','Pablo Fernando','Rosas','Hernandez','d4','18','pablo123@hotmail.com','Iztacalco');
insert into Usuario values
(5,null,'ale123','Alejandro','Romero','Gonzalez','e5','30','ale123@hotmail.com','Xochimilco');

create table if not exists ReporteEventos(
IdRE int auto_increment,
IUser int,
FechaRE varchar(10),
DescRE varchar(500),
TipoE varchar(25),
RespE varchar(500),
StatusRE varchar(30),
primary key(IdRE),
foreign key(IUser) references Usuario(IdUser)
);


create table if not exists Usu_has_RepEve(
	IdR 	int auto_increment,
    IUser 	int(3),
    IRE  	int(3),
    primary key(IdR),
    foreign key(IUser) references Usuario(IdUser),
    foreign key(IRE) references ReporteEventos(IdRE)
);

select * from Rol;
select * from Usuario;
select * from ReporteEventos;

/*consulta: verificar si el usuario existe*/
select * from Usu_has_RepEve;


