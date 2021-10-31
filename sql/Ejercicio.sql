Create database Hospital
Use Hospital

Create table Pacientes(
	Numero_Seguridad_Social int primary key identity(1,1)  not null,
	Nombres_Paciente varchar(max),
	Apellidos_Paciente varchar(max),
	Domicilio varchar(max),
	Provincia varchar(max),
	Codigo_Postal varchar(max),
	Num_Historial_Clinico int,
	observacione varchar(max),
	sexo varchar(max)not null,
	)

Create table Medicos(
	#Medico int primary key not null,
	Nombres_Medico varchar(max),
	Apellidos_Medico varchar(max),
	Numero_Colegiado Varchar(max),
	);

Create table Ingresos(
	Numero_Seguridad_Social int foreign key(Numero_Seguridad_Social) references Pacientes(Numero_Seguridad_Social),
	#Medico int foreign key(#Medico) references Medicos(#Medico),
	Id_Ingresos int primary key identity(1,1),
	Procedencia varchar(max),
	Fecha_Ingreso date,
	Numero_Planta  int,
	Numero_Cama int,
	Observaciones varchar(max),
	);



Create table Contacto(
	Numero_Seguridad_Social int foreign key(Numero_Seguridad_Social) references Pacientes(Numero_Seguridad_Social),
	Id_Contacto int primary key identity(1,1),
	Num_Telefonico int
	);



Create table Especialidades (
	#Medico int foreign key(#Medico) references Medicos(#Medico),
	Id_Especialidad int primary key identity(1,1),
	Nombre varchar(max)
	);


Create table Cargos (
	#Medico int foreign key (#Medico) references Medicos(#Medico),
	Id_Cargo int primary key identity(1,1),
	Nombre varchar(max),
	Descripción varchar(max)
	);


Insert into Pacientes
Values
( 'noe isai', 'cardoza landaverde', 'hacienda metayate', 'Chalatenango', '129', 1, 'dolor de cabeza y bomito','M'),
( 'maria carmer', 'alas lemus', 'arracados', 'Chalatenango', '234', 9, 'diarrea', 'F'),
( 'joel antonio', 'Gutierres garrafino', 'agua caliente', 'Chalatenango', '503', 8, 'gripe', 'M'),
( 'brando rodrigo ', 'avelar pocasangre', 'nueva concepcion', 'Chalatenango', '04', 5, 'desmallos', 'M'),
( 'rodrigo alexis', 'alas rivera', 'nueva concepcion', 'Chalatenango', '09', 5, 'desmallos y tos', 'M'),
( 'cristian misael ', 'alas lemus', 'nueva concepcion', 'Chalatenango', '04', 5, 'gripe', 'M'),
( 'maria soila', 'alas', 'arracados', 'Chalatenango', '234', 9, 'diarrea', 'F'),
( 'manuel antonio', 'mengano garrafino', 'agua caliente', 'Chalatenango', '503', 8, 'tos', 'M'),
( 'julio rodrigo ', 'rosales sangre', 'nueva concepcion', 'Chalatenango', '04', 5, 'desmallos y fiebre', 'M'),
( 'rodrigo manuel', 'sisneros rivera', 'nueva concepcion', 'Chalatenango', '09', 5, 'diarrea', 'M');



Insert into Medicos
Values
(01,'jose miguel', 'parado sentado', '001'),
(02,'misael edwin', 'pineda landaverde', '002' ),
(03,'keila stefani', 'roldan funes', '003' ),
(04,'joel miguel', 'matraña humaña', '004' ),
(05, 'kenia noemy','pineda ', '005'),
(06, 'alisson johana', 'flores peñate','006');


Insert into Cargos
Values
(02,'Emergencia', 'operaciones'),
(01, 'curaciones', 'cortaduras');

Insert into Especialidades
Values
(01,'cardiologuia'),
(02,'ciruguia general'),
(03,'dermataloguia'),
(03,'gastroenterologia'),
(06,'Psiquiatría'),
(01,'genegologia')





Insert into Contacto
Values
(1,7909455),
(1,7905754),
(2,87978974),
(4,14254466),
(5,6666000),
(6,64650123);


Insert into Ingresos
Values
(1,3,'chalatenago', '2020-12-24', 1, 22, 'gripe'),
(2,4,'chalatenago', '2020-08-24', 1, 21, 'diarrea'),
(3,3,'chalatenago', '2021-01-18', 1, 21, 'se murio'),
(4,3,'chalatenago', '2021-04-10', 1, 15, 'anemia'),
(5,4,'chalatenago', '2021-06-14', 1, 12, 'Se murio'),
(1,4,'chalatenago', '2021-02-24', 1, 32, 'mano cquebrada'),
(4,6,'chalatenago', '2021-07-28', 1, 13, 'Irritación'),
(9,2,'chalatenago', '2021-07-25', 1, 44, 'contucion'),
(1,1,'chalatenago', '2021-05-23', 1, 21, 'se murio'),
(9,4,'chalatenago', '2020-12-02', 1, 12, 'dolor abdominal'),
(5,5,'chalatenago', '2020-12-03', 1, 21, 'dolor de muelas'),
(9,6,'chalatenago', '2011-01-24', 1, 12, 'dolor muscular'),
(8,3,'chalatenago', '2012-02-22', 1, 23, 'fatiga'),
(7,3,'chalatenago', '2019-12-22', 1, 42, 'anomalia de poderes'),
(3,2,'chalatenago', '2021-02-23', 1, 85, 'perdida de poderes'),
(4,2,'chalatenago', '2021-03-11', 1, 55, 'trastormo psicologico'),
(4,1,'chalatenago', '2021-12-14', 1, 25, 'murio');