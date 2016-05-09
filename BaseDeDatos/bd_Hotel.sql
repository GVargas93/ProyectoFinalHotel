-- =================================================
-- Autor:			Gerardo, Jose, Alvaro
-- Fecha:			19/04/2016
-- Descripción:		Hotel-Software
-- Versión:			0.1.1
-- =================================================

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------

PRINT 'INICIANDO CREACION DE LA BASE DE DATOS'

USE master;
GO

IF EXISTS(SELECT name FROM sys.databases WHERE name = 'Hotel')
	DROP DATABASE BD_Hotel
GO

IF NOT EXISTS(SELECT name FROM sys.databases WHERE name = 'BD_Hotel')
	CREATE DATABASE BD_Hotel;
GO

USE BD_Hotel
GO

PRINT 'FIN CREACION BASE DE DATOS'
GO


PRINT 'INICIANDO CREACION DE ESQUEMAS'

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'DML')
	Exec('CREATE SCHEMA DML')
GO

PRINT 'FIN CREACION DE ESQUEMAS'
GO
------------------------------------- Soy Una Barra Separadora :) ----------------------------------------

PRINT 'INICIANDO CREACION DE TABLAS'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
Print 'Iniciando 1 Tabla-Tbl_Hotel'

IF EXISTS(SELECT name FROM BD_Hotel..sysobjects WHERE name = N'Tbl_Hotel' AND xtype='U')
	DROP TABLE [DML].[Tbl_Hotel]
	GO

CREATE TABLE [DML].[Tbl_Hotel]
(
Hotel_iD			int identity(1,1) not null,
Nombre			varchar(50) not null,
Direccion				varchar(50) not null,
Telefono				varchar(50) not null,
Constraint	Pk_tbl_Hotel primary key (Hotel_iD)
)
Go
Print 'Finalizando 1 Tabla-Tbl_Hotel'

------------------------------------- Soy Una Barra Separadora :) ----------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 2 Tabla-Tbl_TipoHabitacion'

IF EXISTS(SELECT name FROM BD_Hotel..sysobjects WHERE name = N'Tbl_TipoHabitacion' AND xtype='U')
	DROP TABLE [DML].[Tbl_TipoHabitacion]
	GO

CREATE TABLE [DML].[Tbl_TipoHabitacion]
(
TipoHabitacion_iD		int identity(1,1) not null,
Nombre			varchar(50) not null,
Descripcion			varchar(50) not null,
CONSTRAINT PK_Tbl_TipoHabitacion primary key(TipoHabitacion_iD)
)
Go
Print 'Finalizando 2 Tabla-Tbl_TipoHabitacion'
------------------------------------- Soy Una Barra Separadora  :) --------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 3 Tabla-Tbl_Habitacion'

IF EXISTS(SELECT name FROM BD_Hotel..sysobjects WHERE name = N'Tbl_Habitacion' AND xtype='U')
	DROP TABLE [DML].[Tbl_Habitacion]
	GO

CREATE TABLE [DML].[Tbl_Habitacion]
(
Habitacion_iD		int identity(1,1) not null,
Precio			int not null,
NumeroCamas			varchar(50) not null,
Estado			varchar(50) not null,
Observacion			varchar(50) not null,
Fk_TipoHabiatacion_id		int not null,
Fk_Hotel_id		int not null,
CONSTRAINT PK_Tbl_Habitacion primary key(Habitacion_iD),
constraint FK_Tbl_Hotel foreign key(Fk_Hotel_id) references [DML].[Tbl_Hotel](Hotel_iD),
constraint FK_Tbl_TipoHabitacion foreign key(Fk_TipoHabiatacion_id) references [DML].[Tbl_TipoHabitacion](TipoHabitacion_iD)	
)
Go
Print 'Finalizando 3 Tabla-Tbl_Habitacion'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 4 Tabla-Tbl_TipoCliente'

IF EXISTS(SELECT name FROM BD_Hotel..sysobjects WHERE name = N'Tbl_TipoCliente' AND xtype='U')
	DROP TABLE [DML].[Tbl_TipoCliente]
	GO

CREATE TABLE [DML].[Tbl_TipoCliente]
(
TipoCliente_iD			int identity(1,1) not null,
Descripcion				varchar(50) not null,
CONSTRAINT PK_Tbl_TipoCliente primary key(TipoCliente_iD)
)
Go
Print 'Finalizando 4 Tabla-Tbl_TipoCliente'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 5 Tabla-Tbl_Cliente'

IF EXISTS(SELECT name FROM BD_Hotel..sysobjects WHERE name = N'Tbl_Cliente' AND xtype='U')
	DROP TABLE [DML].[Tbl_Cliente]
	GO

CREATE TABLE [DML].[Tbl_Cliente]
(
Cliente_iD			int identity(1,1) not null,
nombre				varchar(50) not null,
apellido				varchar(50) not null,
direccion				varchar(50) not null,
telefono				varchar(50) not null,
Fk_TipoCliente_iD		int not null,
CONSTRAINT PK_Tbl_Cliente primary key(Cliente_iD),
constraint FK_Tbl_TipoCliente foreign key(Fk_TipoCliente_iD) references [DML].[Tbl_TipoCliente](TipoCliente_iD)
)
Go

Print 'Finalizando 5 Tabla-Tbl_Cliente'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------ Soy Una Barra Separadora :) ----------------------------------------
Print 'Iniciando 6 Tabla-Tbl_Estadia'

IF EXISTS(SELECT name FROM BD_Hotel..sysobjects WHERE name = N'Tbl_Estadia' AND xtype='U')
	DROP TABLE [DML].[Tbl_Estadia]
	GO

CREATE TABLE [DML].[Tbl_Estadia]
(
Estadia_iD			int identity(1,1) not null,
fecha_Llegada				varchar(50) not null,
fecha_Salida				varchar(50) not null,
Fk_Habitacion_iD		int not null,
Fk_Cliente_iD		int not null,
CONSTRAINT PK_Tbl_Estadia primary key(Estadia_iD),
constraint FK_Tbl_Habitacion foreign key(Fk_Habitacion_iD) references [DML].[Tbl_Habitacion](Habitacion_iD),
constraint FK_Tbl_Cliente foreign key(Fk_Cliente_iD) references [DML].[Tbl_Cliente](Cliente_iD)
)
Go
Print 'Finalizando 6 Tabla-Tbl_Estadia'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------



