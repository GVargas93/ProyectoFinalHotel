-- =================================================
-- Autor:			Gerardo, Jose, Alvaro
-- Fecha:			19/04/2016
-- Descripción:		Hotel-Software
-- Versión:			0.1.1
-- =================================================

use BD_Hotel

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '1 INICIA PROCEDURE Insertar_Hotel 1'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Ins_Hotel]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Ins_Hotel]
END
GO

CREATE PROCEDURE [dbo].[Ins_Hotel]
@Hotel_iD			int OUTPUT,
@Nombre			varchar(50),
@Direccion				varchar(50),
@Telefono				varchar(50)

AS
BEGIN
INSERT INTO [DML].[Tbl_Hotel]         
values (@Nombre,@Direccion,@Telefono)
SET @Hotel_iD	 = SCOPE_IDENTITY();
select @Hotel_iD = @@IDENTITY
END
GO
PRINT '1 FINALIZA PROCEDURE Insertar_Hotel 1'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].[Ins_Hotel] null,'Yotau','2do Anillo',71328041
exec [dbo].[Ins_Hotel] null,'Buganvillas','3er Anillo Roca y Coronado',71025879
exec [dbo].[Ins_Hotel] null,'Los Tajibos','3er Anillo San Martin',71328041
exec [dbo].[Ins_Hotel] null,'Las Palmas','2do Anillo El Trompillo',71328041
exec [dbo].[Ins_Hotel] null,'Los Cedros','2do Anillo Urbari',71328041
select * from [DML].[Tbl_Hotel]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '2 INICIA PROCEDURE Upd_Hotel 2'

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Upd_Hotel]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Upd_Hotel]
END
GO

CREATE PROCEDURE [dbo].[Upd_Hotel]
@Hotel_iD			int,
@Nombre		varchar(50),
@Direccion				varchar(50),
@Telefono				varchar(50)
as
begin
update [DML].[Tbl_Hotel] set Nombre = @Nombre, Direccion = @Direccion, Telefono = @Telefono
where  Hotel_iD = @Hotel_iD;
end
go

PRINT '2 FINALIZA PROCEDURE Upd_Hotel 2'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/* 
exec [dbo].[Upd_Hotel] 2,'gerardo',usrGVargas,71025879
select * from [DML].[Tbl_Hotel]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '3 INICIA PROCEDURE Drop_Hotel 3'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Drop_Hotel]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Drop_Hotel]
END
GO

CREATE PROCEDURE [dbo].[Drop_Hotel]
@Hotel_iD			int
AS
BEGIN
delete from [DML].[Tbl_Hotel]
WHERE Hotel_iD = @Hotel_iD;
end
go
PRINT '3 FINALIZA PROCEDURE Drop_Hotel 3'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].Drop_Hotel 9
select * from [DML].[Tbl_Hotel]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '4 INICIA PROCEDURE Select_Hotel 4'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Select_Hotel]') 
AND OBJECTPROPERTY(id, N'Select_Hotel') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Select_Hotel]
END
GO

CREATE PROCEDURE [dbo].[Select_Hotel]
AS
BEGIN
SELECT        *
FROM           [DML].[Tbl_Hotel]
END
GO
PRINT '4 FINALIZA PROCEDURE Select_Hotel 4'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
--exec [dbo].[Select_Hotel]
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '5 INICIA PROCEDURE Insertar_TipoHabitacion 5'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Ins_TipoHabitacion]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Ins_TipoHabitacion]
END
GO

CREATE PROCEDURE [dbo].[Ins_TipoHabitacion]
@TipoHabitacion_iD	int OUTPUT,
@Nombre			varchar(50),
@Descripcion		varchar(50)

AS
BEGIN
INSERT INTO [DML].[Tbl_TipoHabitacion]         
values (@Nombre,@Descripcion)
SET @TipoHabitacion_iD	 = SCOPE_IDENTITY();
select @TipoHabitacion_iD = @@IDENTITY
END
GO
PRINT '5 FINALIZA PROCEDURE Insertar_TipoHabitacion 5'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].[Ins_TipoHabitacion] null,'Cuarto Simple','Cama de 1 plaza, sin tv'
exec [dbo].[Ins_TipoHabitacion] null,'Cuarto doble','2 Cama de 1 plaza 1/2, con tv'
exec [dbo].[Ins_TipoHabitacion] null,'Cuarto tripe','3 Cama de 2 plaza, con tv y banho privado'
exec [dbo].[Ins_TipoHabitacion] null,'Cuarto Matrimonial','Cama de King size, tv pantalla plana'
exec [dbo].[Ins_TipoHabitacion] null,'Cuarto Suite','Cama de Queen size, tv de 50p'
select * from [DML].[Tbl_TipoHabitacion]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '6 INICIA PROCEDURE Upd_TipoHabitacion 6'

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Upd_TipoHabitacion]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Upd_TipoHabitacion]
END
GO

CREATE PROCEDURE [dbo].[Upd_TipoHabitacion]
@TipoHabitacion_iD	int,
@Nombre			varchar(50),
@Descripcion		varchar(50)
as
begin
update [DML].[Tbl_TipoHabitacion] set Nombre = @Nombre, Descripcion = @Descripcion
where  TipoHabitacion_iD= @TipoHabitacion_iD ;
end
go

PRINT '6 FINALIZA PROCEDURE Upd_TipoHabitacion 6'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/* 
exec [dbo].[Upd_TipoHabitacion] 5,'Cuarto Suite','Cama de Queen size, tv de 60p'
select * from [DML].[Tbl_TipoHabitacion]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '7 INICIA PROCEDURE Drop_TipoHabitacion 7'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Drop_TipoHabitacion]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Drop_TipoHabitacion]
END
GO

CREATE PROCEDURE [dbo].[Drop_TipoHabitacion]
@TipoHabitacion_iD			int
AS
BEGIN
delete from [DML].[Tbl_TipoHabitacion]
WHERE TipoHabitacion_iD = @TipoHabitacion_iD;
end
go
PRINT '7 FINALIZA PROCEDURE Drop_TipoHabitacion 7'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].Drop_TipoHabitacion 5
select * from [DML].[Tbl_TipoHabitacion]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '8 INICIA PROCEDURE Select_TipoHabitacion 8'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Select_TipoHabitacion]') 
AND OBJECTPROPERTY(id, N'Select_TipoHabitacion') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Select_TipoHabitacion]
END
GO

CREATE PROCEDURE [dbo].[Select_TipoHabitacion]
AS
BEGIN
SELECT        *
FROM           [DML].[Tbl_TipoHabitacion]
END
GO
PRINT '8 FINALIZA PROCEDURE Select_TipoHabitacion 8'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
--exec [dbo].[Select_TipoHabitacion]
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '9 INICIA PROCEDURE Insertar_Habitacion 9'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Ins_Habitacion]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Ins_Habitacion]
END
GO

CREATE PROCEDURE [dbo].[Ins_Habitacion]
@Habitacion_iD		int OUTPUT,
@Precio				int,
@NumeroCamas 		varchar(50),
@Estado 			varchar(50),
@Observacion 		varchar(50),
@Fk_TipoHabiatacion_id 	int,
@Fk_Hotel_id		int

AS
BEGIN
INSERT INTO [DML].[Tbl_Habitacion]         
values (@Precio, @NumeroCamas, @Estado, @Observacion, @Fk_TipoHabiatacion_id, @Fk_Hotel_id)
SET @Habitacion_iD	 = SCOPE_IDENTITY();
select @Habitacion_iD = @@IDENTITY
END
GO
PRINT '9 FINALIZA PROCEDURE Insertar_Habitacion 9'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].[Ins_Habitacion] null,100,'1','Vacio','Ninguna',1,1
exec [dbo].[Ins_Habitacion] null,200,'2','Ocupado','Ninguna',2,2
exec [dbo].[Ins_Habitacion] null,300,'3','Vacio','Ninguna',3,3
exec [dbo].[Ins_Habitacion] null,400,'4','Ocupado','Limpiar',4,4
exec [dbo].[Ins_Habitacion] null,500,'5','Vacio','Ninguna'5,5
select * from [DML].[Tbl_Habitacion]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '10 INICIA PROCEDURE Upd_Habitacion 10'

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Upd_Habitacion]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Upd_Habitacion]
END
GO

CREATE PROCEDURE [dbo].[Upd_Habitacion]
@Habitacion_iD		int OUTPUT,
@Precio				int,
@NumeroCamas 		varchar(50),
@Estado 			varchar(50),
@Observacion 		varchar(50),
@Fk_TipoHabiatacion_id 	int,
@Fk_Hotel_id		int
as
begin
update [DML].[Tbl_Habitacion] set Precio = @Precio, NumeroCamas = @NumeroCamas, Estado = @Estado, Observacion = @Observacion, Fk_TipoHabiatacion_id = @Fk_TipoHabiatacion_id, Fk_Hotel_id = @Fk_Hotel_id
where  Habitacion_iD= @Habitacion_iD ;
end
go

PRINT '10 FINALIZA PROCEDURE Upd_Habitacion 10'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/* 
exec [dbo].[Upd_Habitacion] 4,400,'4','Vacio','Limpiar',4,4
select * from [DML].[Tbl_Habitacion]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '11 INICIA PROCEDURE Drop_Habitacion 11'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Drop_Habitacion]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Drop_Habitacion]
END
GO

CREATE PROCEDURE [dbo].[Drop_Habitacion]
@Habitacion_iD			int
AS
BEGIN
delete from [DML].[Tbl_Habitacion] 
WHERE Habitacion_iD = @Habitacion_iD;
end
go
PRINT '11 FINALIZA PROCEDURE Drop_Habitacion 11'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].Drop_Habitacion 4
select * from [DML].[Tbl_Habitacion] 
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '12 INICIA PROCEDURE Select_Habitacion 12'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Select_Habitacion]') 
AND OBJECTPROPERTY(id, N'Select_Habitacion') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Select_Habitacion]
END
GO

CREATE PROCEDURE [dbo].[Select_Habitacion]
AS
BEGIN
SELECT        *
FROM           [DML].[Tbl_Habitacion]
END
GO
PRINT '12 FINALIZA PROCEDURE Tbl_Permiso 12'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
--exec [dbo].[Select_Habitacion]
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '13 INICIA PROCEDURE Insertar_TipoCliente 13'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Ins_TipoCliente]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Ins_TipoCliente]
END
GO

CREATE PROCEDURE [dbo].[Ins_TipoCliente]
@TipoCliente_iD		int OUTPUT,
@Descripcion 		varchar(50)

AS
BEGIN
INSERT INTO [DML].[Tbl_TipoCliente]         
values (@Descripcion)
SET @TipoCliente_iD	 = SCOPE_IDENTITY();
select @TipoCliente_iD = @@IDENTITY
END
GO
PRINT '13 FINALIZA PROCEDURE Insertar_TipoCliente 13'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].[Ins_TipoCliente] null,'VIP'
exec [dbo].[Ins_TipoCliente] null,'NORMAL'
exec [dbo].[Ins_TipoCliente] null,'NORMAL'
exec [dbo].[Ins_TipoCliente] null,'VIP'
exec [dbo].[Ins_TipoCliente] null,'VIP'
select * from [DML].[Tbl_TipoCliente]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '14 INICIA PROCEDURE Upd_TipoCliente 14'

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Upd_TipoCliente]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Upd_TipoCliente]
END
GO

CREATE PROCEDURE [dbo].[Upd_TipoCliente]
@TipoCliente_iD		int OUTPUT,
@Descripcion 		varchar(50)
as
begin
update [DML].[Tbl_TipoCliente] set Descripcion = @Descripcion
where  TipoCliente_iD= @TipoCliente_iD ;
end
go

PRINT '14 FINALIZA PROCEDURE Upd_TipoCliente 14'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/* 
exec [dbo].[Upd_TipoCliente] 5,'NORMAL'
select * from [DML].[Tbl_TipoCliente]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '15 INICIA PROCEDURE Drop_TipoCliente 15'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Drop_TipoCliente]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Drop_TipoCliente]
END
GO

CREATE PROCEDURE [dbo].[Drop_TipoCliente]
@TipoCliente_iD			int
AS
BEGIN
delete from [DML].[Tbl_TipoCliente] 
WHERE TipoCliente_iD = @TipoCliente_iD;
end
go
PRINT '15 FINALIZA PROCEDURE Drop_TipoCliente 15'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].Drop_TipoCliente 5
select * from [DML].[Tbl_TipoCliente] 
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '16 INICIA PROCEDURE Select_TipoCliente 16'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Select_TipoCliente]') 
AND OBJECTPROPERTY(id, N'Select_TipoCliente') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Select_TipoCliente]
END
GO

CREATE PROCEDURE [dbo].[Select_TipoCliente]
AS
BEGIN
SELECT        *
FROM           [DML].[Tbl_TipoCliente]
END
GO
PRINT '16 FINALIZA PROCEDURE Select_TipoCliente 16'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
--exec [dbo].[Select_TipoCliente]
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '17 INICIA PROCEDURE Insertar_Cliente 17'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Ins_Cliente]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Ins_Cliente]
END
GO

CREATE PROCEDURE [dbo].[Ins_Cliente]
@Cliente_iD		int OUTPUT,
@nombre				varchar(50),
@apellido 		varchar(50),
@direccion 			varchar(50),
@telefono 		varchar(50),
@Fk_TipoCliente_iD 	int

AS
BEGIN
INSERT INTO [DML].[Tbl_Cliente]         
values (@nombre, @apellido, @direccion, @telefono, @Fk_TipoCliente_iD)
SET @Cliente_iD	 = SCOPE_IDENTITY();
select @Cliente_iD = @@IDENTITY
END
GO
PRINT '17 FINALIZA PROCEDURE Insertar_Cliente 17'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].[Ins_Cliente] null,'Pedro','Martinez','Av Landivar','71329317',1
exec [dbo].[Ins_Cliente] null,'Diana','Rodriguez','Roca y Coronado','34578398',2
exec [dbo].[Ins_Cliente] null,'Jose','Clavijo','Av Brazil','9913241',3
exec [dbo].[Ins_Cliente] null,'Marco','Coronado','Virgen de Cotoca','798531431',4
exec [dbo].[Ins_Cliente] null,'Nando','Perez','1er Anillo','69061353',5
select * from [DML].[Tbl_Cliente]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '18 INICIA PROCEDURE Upd_Cliente 18'

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Upd_Cliente]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Upd_Cliente]
END
GO

CREATE PROCEDURE [dbo].[Upd_Cliente]
@Cliente_iD		int OUTPUT,
@nombre				varchar(50),
@apellido 		varchar(50),
@direccion 			varchar(50),
@telefono 		varchar(50),
@Fk_TipoCliente_iD 	int
as
begin
update [DML].[Tbl_Cliente] set nombre = @nombre, apellido = @apellido, direccion = @direccion, telefono = @telefono, Fk_TipoCliente_iD = @Fk_TipoCliente_iD
where  Cliente_iD= @Cliente_iD ;
end
go

PRINT '18 FINALIZA PROCEDURE Upd_Cliente 18'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/* 
exec [dbo].[Upd_Cliente] 13,'Pedro','Martinez','Av Landivar','71823764',1
select * from [DML].[Tbl_Cliente]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '19 INICIA PROCEDURE Drop_Cliente 19'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Drop_Cliente]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Drop_Cliente]
END
GO

CREATE PROCEDURE [dbo].[Drop_Cliente]
@Cliente_iD			int
AS
BEGIN
delete from [DML].[Tbl_Cliente] 
WHERE Cliente_iD = @Cliente_iD;
end
go
PRINT '19 FINALIZA PROCEDURE Drop_Cliente 19'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].Drop_Cliente 13
select * from [DML].[Tbl_Cliente] 
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '20 INICIA PROCEDURE Select_Cliente 20'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Select_Cliente]') 
AND OBJECTPROPERTY(id, N'Select_Cliente') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Select_Cliente]
END
GO

CREATE PROCEDURE [dbo].[Select_Cliente]
AS
BEGIN
SELECT        *
FROM           [DML].[Tbl_Cliente]
END
GO
PRINT '20 FINALIZA PROCEDURE Tbl_Permiso 20'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
--exec [dbo].[Select_Cliente]
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '21 INICIA PROCEDURE Insertar_Estadia 21'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Ins_Estadia]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Ins_Estadia]
END
GO

CREATE PROCEDURE [dbo].[Ins_Estadia]
@Estadia_iD		int OUTPUT,
@fecha_Llegada				varchar(50),
@fecha_Salida 		varchar(50),
@Fk_Habitacion_iD  	int,
@Fk_Cliente_iD 		int

AS
BEGIN
INSERT INTO [DML].[Tbl_Estadia]         
values (@fecha_Llegada, @fecha_Salida, @Fk_Habitacion_iD, @Fk_Cliente_iD)
SET @Estadia_iD	 = SCOPE_IDENTITY();
select @Estadia_iD = @@IDENTITY
END
GO
PRINT '21 FINALIZA PROCEDURE Insertar_Estadia 21'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].[Ins_Estadia] null,'21/05/2016','21/06/2016',1,1
exec [dbo].[Ins_Estadia] null,'12/03/2016','21/04/2016',2,2
exec [dbo].[Ins_Estadia] null,'05/04/2016','21/05/2016',3,3
exec [dbo].[Ins_Estadia] null,'16/06/2016','21/07/2016',4,4
exec [dbo].[Ins_Estadia] null,'19/01/2016','21/02/2016',5,5
select * from [DML].[Tbl_Estadia]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '22 INICIA PROCEDURE Upd_Estadia 22'

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Upd_Estadia]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Upd_Estadia]
END
GO

CREATE PROCEDURE [dbo].[Upd_Estadia]
@Estadia_iD		int OUTPUT,
@fecha_Llegada				varchar(50),
@fecha_Salida 		varchar(50),
@Fk_Habitacion_iD  	int,
@Fk_Cliente_iD 		int
as
begin
update [DML].[Tbl_Estadia] set fecha_Llegada = @fecha_Llegada, fecha_Salida = @fecha_Salida, Fk_Habitacion_iD = @Fk_Habitacion_iD, Fk_Cliente_iD = @Fk_Cliente_iD
where  Estadia_iD= @Estadia_iD ;
end
go

PRINT '22 FINALIZA PROCEDURE Upd_Estadia 22'

------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/* 
exec [dbo].[Ins_Estadia] null,'19/02/2016','21/03/2016',5,5
select * from [DML].[Tbl_Estadia]  
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '23 INICIA PROCEDURE Drop_Estadia 23'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Drop_Estadia]') 
AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Drop_Estadia]
END
GO

CREATE PROCEDURE [dbo].[Drop_Estadia]
@Estadia_iD			int
AS
BEGIN
delete from [DML].[Tbl_Estadia] 
WHERE Estadia_iD = @Estadia_iD;
end
go
PRINT '23 FINALIZA PROCEDURE Drop_Estadia 23'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
/*
exec [dbo].Drop_Estadia 2
select * from [DML].[Tbl_Estadia] 
*/
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
PRINT '24 INICIA PROCEDURE Select_Estadia 24'
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'[dbo].[Select_Estadia]') 
AND OBJECTPROPERTY(id, N'Select_Estadia') = 1)
BEGIN
	DROP PROCEDURE [dbo].[Select_Estadia]
END
GO

CREATE PROCEDURE [dbo].[Select_Estadia]
AS
BEGIN
SELECT        *
FROM           [DML].[Tbl_Estadia]
END
GO
PRINT '24 FINALIZA PROCEDURE Tbl_Permiso 24'
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------
-- =================================================
--exec [dbo].[Select_Estadia]
-- =================================================
------------------------------------- Soy Una Barra Separadora  :) ----------------------------------------