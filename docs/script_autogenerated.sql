USE [master]
GO
/****** Object:  Database [BBraunPharmaDB]    Script Date: 10/27/2024 12:21:19 PM ******/
CREATE DATABASE [BBraunPharmaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BBraunPharmaDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLDEVCARLOS\MSSQL\DATA\BBraunPharmaDB.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BBraunPharmaDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLDEVCARLOS\MSSQL\DATA\BBraunPharmaDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BBraunPharmaDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BBraunPharmaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BBraunPharmaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BBraunPharmaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BBraunPharmaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BBraunPharmaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BBraunPharmaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BBraunPharmaDB] SET  MULTI_USER 
GO
ALTER DATABASE [BBraunPharmaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BBraunPharmaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BBraunPharmaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BBraunPharmaDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BBraunPharmaDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BBraunPharmaDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BBraunPharmaDB', N'ON'
GO
ALTER DATABASE [BBraunPharmaDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [BBraunPharmaDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BBraunPharmaDB]
GO
/****** Object:  Table [dbo].[administradores]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administradores](
	[id_empleado] [char](6) NOT NULL,
 CONSTRAINT [pk_admin] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[almacen](
	[id_almacen] [char](6) NOT NULL,
	[local] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asistentes_almacen]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asistentes_almacen](
	[id_empleado] [char](6) NOT NULL,
	[idAlmacen] [char](6) NULL,
 CONSTRAINT [pk_asistAlm] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asistentes_compra]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asistentes_compra](
	[id_empleado] [char](6) NOT NULL,
 CONSTRAINT [pk_asistComp] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asistentes_venta]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asistentes_venta](
	[id_empleado] [char](6) NOT NULL,
 CONSTRAINT [pk_asistVent] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[authorization_consent]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorization_consent](
	[principal_name] [varchar](255) NOT NULL,
	[registered_client_id] [varchar](255) NOT NULL,
	[authorities] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[principal_name] ASC,
	[registered_client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caracteristicas_proveedor]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caracteristicas_proveedor](
	[id_caracteristica] [int] NOT NULL,
	[calidad] [int] NULL,
	[cumplimiento] [int] NULL,
	[precio] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_caracteristica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias](
	[id_categoria] [char](5) NOT NULL,
	[categoria] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[client_id] [varchar](255) NULL,
	[client_secret] [varchar](255) NULL,
	[require_proof_key] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client_authentication_methods]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_authentication_methods](
	[client_id] [int] NOT NULL,
	[authentication_methods] [varbinary](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client_authorization_grant_types]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_authorization_grant_types](
	[client_id] [int] NOT NULL,
	[authorization_grant_types] [varbinary](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client_post_logout_redirect_uris]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_post_logout_redirect_uris](
	[client_id] [int] NOT NULL,
	[post_logout_redirect_uris] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client_redirect_uris]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_redirect_uris](
	[client_id] [int] NOT NULL,
	[redirect_uris] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client_scopes]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_scopes](
	[client_id] [int] NOT NULL,
	[scopes] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [char](6) NOT NULL,
	[empresa] [varchar](100) NULL,
	[representante] [varchar](100) NULL,
	[dni] [char](8) NULL,
	[email] [varchar](50) NULL,
	[telefono] [char](9) NULL,
	[direccion] [varchar](300) NULL,
	[id_departamento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cotizaciones_compra]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cotizaciones_compra](
	[id_solicitud_cotizacion] [char](6) NOT NULL,
	[id_proveedor] [char](6) NOT NULL,
	[id_estado] [int] NULL,
	[monto] [float] NULL,
	[fecha_entrega] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_solicitud_cotizacion] ASC,
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cotizaciones_venta]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cotizaciones_venta](
	[id_cotizacion] [char](6) NOT NULL,
	[id_empleado] [char](6) NULL,
	[id_estado] [int] NULL,
	[nombre_cliente] [nvarchar](50) NULL,
	[monto_producto] [float] NULL,
	[fecha_emision] [date] NULL,
	[email] [nvarchar](50) NULL,
	[monto_impuesto] [float] NULL,
	[monto_total] [float] NULL,
	[id_departamento] [int] NULL,
	[dni] [char](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departamentos]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamentos](
	[id_departamento] [int] NOT NULL,
	[nombre_departamento] [nvarchar](30) NULL,
	[costo_envio] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalles_cotizacion_compra]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalles_cotizacion_compra](
	[id_solicitud_cotizacion] [char](6) NOT NULL,
	[id_proveedor] [char](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_solicitud_cotizacion] ASC,
	[id_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalles_cotizacion_venta]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalles_cotizacion_venta](
	[idCotizacion] [char](6) NOT NULL,
	[idProducto] [char](6) NOT NULL,
	[cantidad] [int] NULL,
	[monto] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCotizacion] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalles_hoja_ingreso]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalles_hoja_ingreso](
	[idProducto] [char](6) NOT NULL,
	[idHoja] [char](6) NOT NULL,
	[cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC,
	[idHoja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[idEmpleado] [char](6) NOT NULL,
	[idCuenta] [int] NULL,
	[nombre] [varchar](255) NULL,
	[apellido] [varchar](255) NULL,
	[telefono] [varchar](255) NULL,
	[dni] [varchar](255) NULL,
	[direccion] [varchar](255) NULL,
	[fechaNacimiento] [date] NULL,
	[genero] [varchar](255) NULL,
	[cargo] [varchar](255) NULL,
 CONSTRAINT [PK__empleado__5295297C901F21EB] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados](
	[idEstado] [int] NOT NULL,
	[estado] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados_disponibilidad]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados_disponibilidad](
	[idEstadoDisponibilidad] [int] NOT NULL,
	[estado] [nvarchar](20) NULL,
 CONSTRAINT [pk_eDispo] PRIMARY KEY CLUSTERED 
(
	[idEstadoDisponibilidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados_envio]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados_envio](
	[idEstadoEnvio] [int] NOT NULL,
	[estado] [nvarchar](50) NULL,
 CONSTRAINT [PK__estados___3C7B23664A742EAD] PRIMARY KEY CLUSTERED 
(
	[idEstadoEnvio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados_operativos]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados_operativos](
	[idEstadoOperativo] [int] NOT NULL,
	[estado] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstadoOperativo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados_pago]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados_pago](
	[idEstadoPago] [int] NOT NULL,
	[estado] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstadoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados_seguridad]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados_seguridad](
	[idEstadoSeguridad] [int] NOT NULL,
	[estado] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstadoSeguridad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facturas_compra]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturas_compra](
	[idFactura] [char](6) NOT NULL,
	[idOrdenCompra] [char](6) NULL,
	[fecha_limite] [date] NULL,
	[fecha_pago] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facturas_venta]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturas_venta](
	[idFactura] [char](6) NOT NULL,
	[idPedido] [char](6) NULL,
	[idEstadoPago] [int] NULL,
	[fechaLimite] [date] NULL,
	[fechaPago] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[formas_farmaceuticas]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[formas_farmaceuticas](
	[id_forma_farmaceutica] [char](4) NOT NULL,
	[forma] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_forma_farmaceutica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[guias_remision]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[guias_remision](
	[idGuiaRemision] [char](6) NOT NULL,
	[idEmpleado] [char](6) NULL,
	[fecha_envio] [date] NULL,
	[idPedido] [char](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[idGuiaRemision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hojas_de_ingreso]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hojas_de_ingreso](
	[idHoja] [char](6) NOT NULL,
	[idEmpleado] [char](6) NULL,
	[fechaIngreso] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHoja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lotes]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lotes](
	[idLote] [char](6) NOT NULL,
	[idEstadoOperativo] [int] NULL,
	[idEstadoDisponibilidad] [int] NULL,
	[idEstadoSeguridad] [int] NULL,
	[idProducto] [char](6) NULL,
	[stock] [int] NULL,
	[fechaVencimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[metodos_pago]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[metodos_pago](
	[idMetodoPago] [int] NOT NULL,
	[metodo] [nvarchar](50) NULL,
 CONSTRAINT [PK__metodos___817BFC322451264F] PRIMARY KEY CLUSTERED 
(
	[idMetodoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordenes_compra]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordenes_compra](
	[id_orden_compra] [char](6) NOT NULL,
	[id_solicitud_cotizacion] [char](6) NULL,
	[id_proveedor] [char](6) NULL,
	[fecha_emision] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_orden_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedidos]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedidos](
	[idPedido] [char](6) NOT NULL,
	[idCotizacion] [char](6) NULL,
	[idCliente] [char](6) NULL,
	[idMetodoPago] [int] NULL,
	[idEstadoEnvio] [int] NULL,
	[idEmpleado] [char](6) NULL,
	[fechaEntrega] [date] NULL,
	[fechaEmision] [date] NULL,
 CONSTRAINT [PK__pedidos__A9F619B7F2F7F309] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[id_producto] [char](6) NOT NULL,
	[id_categoria] [char](5) NULL,
	[id_forma_farmaceutica] [char](4) NULL,
	[id_almacen] [char](6) NULL,
	[nombre] [nvarchar](50) NULL,
	[precio] [int] NULL,
	[concentracion] [nvarchar](30) NULL,
	[presentacion] [nvarchar](70) NULL,
	[descripcion] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[idProveedor] [char](6) NOT NULL,
	[idCaracteristica] [int] NULL,
	[empresa] [nvarchar](150) NULL,
	[direccion] [nvarchar](200) NULL,
	[telefono] [char](9) NULL,
	[email] [nvarchar](50) NULL,
	[RUC] [char](11) NULL,
	[rate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rol] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitudes_compra]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitudes_compra](
	[idSolicitudCompra] [char](6) NOT NULL,
	[idEstado] [int] NULL,
	[idAsistenteAlmacen] [char](6) NULL,
	[idAsistenteCompra] [char](6) NULL,
	[nombreProducto] [nvarchar](50) NULL,
	[cantidad] [int] NULL,
	[fecha_entrega] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idSolicitudCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitudes_cotizacion]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitudes_cotizacion](
	[id_solicitud_cotizacion] [char](6) NOT NULL,
	[id_solicitud_compra] [char](6) NULL,
	[fecha_creacion] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_solicitud_cotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transportistas]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transportistas](
	[idEmpleado] [char](6) NOT NULL,
	[placa] [char](6) NULL,
	[estado] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_rol]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_rol](
	[usuario_id] [int] NOT NULL,
	[rol_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usuario_id] ASC,
	[rol_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 10/27/2024 12:21:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[credentials_expired] [bit] NOT NULL,
	[disabled] [bit] NOT NULL,
	[email] [varchar](255) NULL,
	[expired] [bit] NOT NULL,
	[locked] [bit] NOT NULL,
	[password] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[administradores] ([id_empleado]) VALUES (N'EMP002')
GO
INSERT [dbo].[almacen] ([id_almacen], [local]) VALUES (N'ALM001', N'Av. Los Héroes')
GO
INSERT [dbo].[asistentes_almacen] ([id_empleado], [idAlmacen]) VALUES (N'EMP005', N'ALM001')
GO
INSERT [dbo].[asistentes_compra] ([id_empleado]) VALUES (N'EMP004')
GO
INSERT [dbo].[asistentes_venta] ([id_empleado]) VALUES (N'EMP001')
GO
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (1, 2, 3, 5)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (2, 7, 4, 10)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (3, 10, 0, 2)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (4, 1, 8, 2)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (5, 4, 6, 0)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (6, 2, 4, 7)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (7, 2, 0, 1)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (8, 1, 1, 6)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (9, 1, 1, 8)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (10, 10, 3, 7)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (11, 0, 7, 9)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (12, 8, 7, 10)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (13, 2, 7, 7)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (14, 5, 7, 2)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (15, 9, 7, 6)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (16, 8, 3, 1)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (17, 3, 6, 10)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (18, 10, 7, 10)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (19, 8, 10, 0)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (20, 3, 6, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (21, 2, 6, 5)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (22, 10, 8, 0)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (23, 0, 2, 10)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (24, 9, 0, 7)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (25, 9, 7, 8)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (26, 2, 9, 0)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (27, 3, 4, 0)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (28, 4, 7, 2)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (29, 9, 4, 1)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (30, 5, 2, 7)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (31, 8, 7, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (32, 6, 4, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (33, 5, 5, 0)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (34, 10, 5, 2)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (35, 5, 3, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (36, 0, 4, 4)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (37, 5, 8, 4)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (38, 7, 1, 9)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (39, 4, 7, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (40, 8, 8, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (41, 9, 5, 0)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (42, 9, 2, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (43, 4, 9, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (44, 8, 1, 4)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (45, 4, 7, 7)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (46, 0, 10, 2)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (47, 0, 6, 0)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (48, 3, 5, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (49, 7, 6, 1)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (50, 3, 5, 7)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (51, 3, 8, 8)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (52, 8, 10, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (53, 5, 5, 7)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (54, 4, 5, 1)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (55, 7, 1, 8)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (56, 8, 10, 9)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (57, 1, 8, 6)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (58, 9, 7, 8)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (59, 6, 5, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (60, 0, 7, 8)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (61, 6, 3, 0)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (62, 3, 10, 10)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (63, 7, 8, 1)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (64, 5, 6, 4)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (65, 7, 2, 0)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (66, 6, 8, 4)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (67, 2, 5, 9)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (68, 5, 8, 3)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (69, 6, 9, 10)
INSERT [dbo].[caracteristicas_proveedor] ([id_caracteristica], [calidad], [cumplimiento], [precio]) VALUES (70, 5, 7, 10)
GO
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT001', N'Anisiolitico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT002', N'Antisicotico Atipico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT003', N'Barbiturico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT004', N'Analgesico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT005', N'Anestesico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT006', N'Psicoestimulante')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT007', N'Oxitocico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT008', N'GammaGlobulina Humana')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT009', N'Antidiabetico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT010', N'Vacuna')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT011', N'Relajante Musculo esqueletico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT012', N'Analgesico/Antipiretico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT013', N'Diuretico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT014', N'Antiviral')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT015', N'Vitamina')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT016', N'Queratolitico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT017', N'Antiepileptico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT018', N'Antiarritmico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT019', N'Estimulante Cardiaco')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT020', N'Dilusor')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT021', N'Antiparasitario')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT022', N'Antihipertensivo')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT023', N'Antigotoso')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT024', N'Antiparkinsoniano')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT025', N'Antibacteriano')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT026', N'Broncodilatador')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT027', N'Antidepresivo')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT028', N'Anticolinergico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT029', N'Antiinflamatorio')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT030', N'Corticosteroide')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT031', N'Laxante')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT032', N'Minerales y Oligoelemen')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT033', N'Electrolito')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT034', N'Anticonvulsivante')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT035', N'Antidoto')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT036', N'Antihistaminico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT037', N'Antiagregante Plaquetario')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT038', N'Antimalarico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT039', N'Antimicotico Topico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT040', N'Hipolipemiante')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT041', N'Antibacteriano+Aminoglu')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT042', N'Antialergico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT043', N'Antipruriginoso/Acaricida')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT044', N'Nutriente')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT045', N'Disolvente')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT046', N'Digitalico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT047', N'Antitusivo')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT048', N'Antiveritginaoso')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT049', N'Simpaticomimetico Inotropico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT050', N'Antirretroviral')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT051', N'Anticonceptivo Hormonal')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT052', N'Antimigranoso')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT053', N'Estrogeno Derivado')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT054', N'Vasopresor')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT055', N'Vasoconstrictor+Corticosteroide')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT056', N'Anticonvulsivante/Antiarr')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT057', N'Antimicotico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT058', N'Antimigrañoso')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT059', N'Corticosteroide/Antiinflamatorio Oftalmico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT060', N'Antineoplasico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT061', N'Fibrato')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT062', N'Hipoglicemiante')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT063', N'Antisicotico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT064', N'Anticoagulante')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT065', N'Corticosteroide/Antiinflamatorio')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT066', N'Corticosteroide+Anestesico Local')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT067', N'Antiacido')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT068', N'Antiespasmodico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT069', N'Anticolinergico/Brocodilatador')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT070', N'Vasodilatador Coronario')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT071', N'Hormona Tiroidea')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT072', N'Anestesico Local/Antiarritmico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT073', N'Antimaniaco')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT074', N'Antidiarreico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT075', N'Restaurador de electrolitos/Anticonvulsivante')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT076', N'Anticonceptivo Hormona')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT077', N'Antitiroideo')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT078', N'Rejalante Muscular')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT079', N'Antiemetico/Procinetico Digestivo')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT080', N'Antihipertensivo/Antiarrit')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT081', N'Analgesico/Antipiretico/Aintiinflamatorio No E')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT082', N'Antihipertensivo/Antiangi')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT083', N'Vasodilatador Cerebral')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT084', N'Antianginoso/Vasodilatador Coronario')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT085', N'Vasodilatador Arterial y Venoso')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT086', N'Bloqueador de la Bomba de Protones')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT087', N'Vasoconstrictor Local')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT088', N'Antisicotico de Deposito')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT089', N'Antihelmintico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT090', N'Anestesico Local')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT091', N'Bloqueador de la Secrec')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT092', N'Antibacteriano/Antituberculoso')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT093', N'Electrolitos y Glucosa para Rehidratacion Ora')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT094', N'Alcalinizante')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT095', N'Solucion Polielectrolitica Expansora de volum')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT096', N'Solucion Rehidratante polielectrolitica Prente')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT097', N'Solucion Electrolitica')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT098', N'Protector de la mucosa Gastrica')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT099', N'Antianemico')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT100', N'Antiglaucomatoso')
GO
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT101', N'Antiamebiano Tisular')
INSERT [dbo].[categorias] ([id_categoria], [categoria]) VALUES (N'CT102', N'Midriatico')
GO
SET IDENTITY_INSERT [dbo].[client] ON 

INSERT [dbo].[client] ([id], [client_id], [client_secret], [require_proof_key]) VALUES (1, N'client', N'$2a$10$Oh6doMrcGAz6OE3eUIi67.eAV6L3FI.ODB8HGI/ci0LHCbbk.FErS', 1)
INSERT [dbo].[client] ([id], [client_id], [client_secret], [require_proof_key]) VALUES (2, N'gateway', N'$2a$10$crwTmTZ7oFVwSfdblXK4ROeoPkzU2.x.avkOX4R73Hj65rNpByhXe', 0)
SET IDENTITY_INSERT [dbo].[client] OFF
GO
INSERT [dbo].[client_authentication_methods] ([client_id], [authentication_methods]) VALUES (1, 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F72652E436C69656E7441757468656E7469636174696F6E4D6574686F64000000000000026C0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B7870740013636C69656E745F7365637265745F6261736963)
INSERT [dbo].[client_authentication_methods] ([client_id], [authentication_methods]) VALUES (2, 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F72652E436C69656E7441757468656E7469636174696F6E4D6574686F64000000000000026C0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B7870740013636C69656E745F7365637265745F6261736963)
GO
INSERT [dbo].[client_authorization_grant_types] ([client_id], [authorization_grant_types]) VALUES (1, 0xACED00057372003F6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F72652E417574686F72697A6174696F6E4772616E7454797065000000000000026C0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074000D726566726573685F746F6B656E)
INSERT [dbo].[client_authorization_grant_types] ([client_id], [authorization_grant_types]) VALUES (1, 0xACED00057372003F6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F72652E417574686F72697A6174696F6E4772616E7454797065000000000000026C0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B7870740012636C69656E745F63726564656E7469616C73)
INSERT [dbo].[client_authorization_grant_types] ([client_id], [authorization_grant_types]) VALUES (1, 0xACED00057372003F6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F72652E417574686F72697A6174696F6E4772616E7454797065000000000000026C0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B7870740012617574686F72697A6174696F6E5F636F6465)
INSERT [dbo].[client_authorization_grant_types] ([client_id], [authorization_grant_types]) VALUES (2, 0xACED00057372003F6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F72652E417574686F72697A6174696F6E4772616E7454797065000000000000026C0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074000D726566726573685F746F6B656E)
INSERT [dbo].[client_authorization_grant_types] ([client_id], [authorization_grant_types]) VALUES (2, 0xACED00057372003F6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F72652E417574686F72697A6174696F6E4772616E7454797065000000000000026C0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B7870740012636C69656E745F63726564656E7469616C73)
INSERT [dbo].[client_authorization_grant_types] ([client_id], [authorization_grant_types]) VALUES (2, 0xACED00057372003F6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F72652E417574686F72697A6174696F6E4772616E7454797065000000000000026C0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B7870740012617574686F72697A6174696F6E5F636F6465)
INSERT [dbo].[client_authorization_grant_types] ([client_id], [authorization_grant_types]) VALUES (2, 0xACED00057372003F6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F72652E417574686F72697A6174696F6E4772616E7454797065000000000000026C0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B7870740013636C69656E745F7365637265745F6261736963)
GO
INSERT [dbo].[client_post_logout_redirect_uris] ([client_id], [post_logout_redirect_uris]) VALUES (2, N'http://localhost:9000/logged-out')
GO
INSERT [dbo].[client_redirect_uris] ([client_id], [redirect_uris]) VALUES (1, N'http://localhost:4200/authorized')
INSERT [dbo].[client_redirect_uris] ([client_id], [redirect_uris]) VALUES (2, N'http://localhost:9000/login/oauth2/code/gateway')
GO
INSERT [dbo].[client_scopes] ([client_id], [scopes]) VALUES (1, N'openid')
INSERT [dbo].[client_scopes] ([client_id], [scopes]) VALUES (2, N'openid')
GO
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C04807', N'Simutril', N'Jorge Luna', N'55425258', N'jorge@gmail.com', N'975464789', N'Av. Tacna', 2)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C12337', N'SUMIVITALES LTDA', N'CHU GONZALES, LUIS ANTONIO', N'83896959', N'leonardolaverde@sumivitales.com', N'118989473', N'PREDIO S/N CASERIO DE PORTACHUELO.', 8)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C12876', N'OPERADOR FARMACEUTICO OFYDSA', N'HORNY HAMANN, ALBERT FREDERICK', N'81920413', N'contacto@ofydsa.com', N'982735737', N'AV. ARGENTINA N° 2529', 21)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C13678', N'TECNOMEDICA RIONEGRO-DEPÓSITO', N'AGUIRRE GARRAGATE, EFRAIN ALFONSO', N'76713453', N'regenterionegro@tecnomedica.c om.co', N'680920160', N'OSCAR R. BENAVIDES N° 5991', 19)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C14215', N'SUMINISTROS HOSPITALRIOS HO', N'MARTINEZ ECHEANDIA, RODOLFO', N'79745393', N'suministroshospitalariosho@gma il.com', N'229462818', N'SECTOR INTIPAMPA LOTES 7-8', 5)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C14594', N'V J CARDIOSISTEMAN', N'DEL CASTILLO CUBA, MARIO HERNAN', N'89415454', N'cardiosimed@vjcardiosistemas.com', N'746570297', N'AV. MANSICHE S/N, SUB LOTE 01-B Y 02-B1-B', 1)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C15291', N'Bebis', N'Melani Laveriano Porroa', N'78546987', N'soybebe@bebe.com', N'985635478', N'av 200 millas', 5)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C16157', N'MMS DISTRIBUCIONES', N'HUBERDINO HUAMANYAURI BERNABEL', N'70353982', N'mmsdistribuciones@hotmail.com', N'420919434', N'CALLE 27 DE NOVIEMBRE Nº 645 ALTO LIBERTAD', 20)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C17107', N'TIENDA DE LA PIEL PUNTO CLAVE', N'HIGUCHI MIYAGAWA, PABLO', N'79775666', N'comercial@tiendadelapiel.com', N'388133756', N'AV. BERTELLO MZ. B, LOTE 12, URB. PHILADELFIA', 22)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C17899', N'ORTOPEDICOS FUTURO COLOMBIA S.A.S.', N'HUALLPA ANTEZANA, MIGUEL AMOS', N'76509831', N'medellinberrio@ortopedicosfutur o.com', N'756348376', N'AV. DE LA CULTURA N° 725', 2)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C18597', N'YOJAR DISTRIBUCIONES S.A.S.', N'MARCELA DEL ROSARIO MORÁN RIVERA', N'82939609', N'yojardistribuciones@yahoo.com', N'376385003', N'AV. MANUEL F. VEGA 151', 2)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C19267', N'MEDIPIEL', N'JOSE MANUEL ZEGARRA FREUND', N'87576524', N'medipieldeposito@medipiel.com', N'890142470', N'AV. CARLOS VILLARAN Nº 140 - URB SANTA CATALINA', 10)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C19973', N'ORTOPLASTICA', N'JUAN ENRIQUE PENDAVIS PERALES', N'82897122', N'suwrsalortoplasticakamex.@gmai l.com', N'513127805', N'ARGENTINA N 6037 ZONA INDUSTRIAL INDUSTRIAL', 10)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C20365', N'FSSALA', N'PEDRO OSORIO BELTRAN', N'99999999', N'pedro@gmail.com', N'985858589', N'AV.TACNA', 1)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C21241', N'RONELLY', N'MONTOYA PERALDO, MARIA LILIA', N'78828842', N'dadministrativa@ronelly.com', N'721001182', N'CAMPAMENTO MINERO LA GRANJA - CENTRO POBLADO LA GRANJA', 11)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C21564', N'EMPRESTEST', N'TESTESR', N'77777777', N'test@test.com', N'111111111', N'avv test', 6)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C22301', N'OXIEQUIPOS MEDICOS', N'JULIO CESAR ROJAS ECHENIQUE', N'76872665', N'oxiequiposm@gmail.com', N'879707868', N'AV. ANGAMOS ESTE N° 2520 URB. LA CALERADE LA MERCED', 5)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C22584', N'PROVIGASA MEDICAL', N'HAROLD PERCY CAPUÑAY CHOFOCLE', N'77954991', N'presidencia@provigasamedical.com.co', N'431372792', N'EDUARDO LOPEZ DE ROMAÑA N° 112', 12)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C23434', N'MEDI - HOSP', N'MOISES ANTONIO MEJIA ECHEVARRIA', N'76266970', N'medihosp.medellin@gmail.com', N'675211493', N'CALLE AMAUTA MZ. B LOTE 06 URB SEMIRUSTICA MAMPUESTO', 23)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C24380', N'PRODUCTOS PARA LA CIENCIA MEDICA', N'HAMIDEH HAMIDEH, FADEL', N'78954199', N'procimeltda@yahoo.es', N'697763785', N'AV. PROLONGACION GRAU Nº 499', 18)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C25636', N'RP PHARMA', N'ARRIETA WILSON, HUMBERTO', N'72136341', N'gerencia@rpharma.com', N'119805494', N'AV. VICTOR ANDRES BELAUNDE N°1060', 23)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C27382', N'UNION MEDICAL', N'FUMAGALLI DRAGO, MANUEL', N'86731855', N'asistentedesarrolloh@une.net.co', N'225683712', N'FUNDO LA CALERA S/N - ALTO LARAN', 10)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C28068', N'MX DEPOSITO S.A.S.', N'BENAVIDES ROMERO, MANUEL FRANCISCO', N'84456270', N'mxdeposito@gmail.com', N'576903019', N'AV. MATERIALES N° 2215', 12)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C28911', N'PHARMA STOCK S.A.S.', N'JORGE LUIS CARDENAS CABRERA', N'85601053', N'pharmastock@outlook.com', N'246824685', N'CALLE PABLO BOONER N°188 MZ I-7; LOTE 13-14, ZONA INDUSTRIAL', 4)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C29491', N'ORTOPEDICOS FUTURO SUCURSAL N°9', N'DANIEL ESCALANTE GOMEZ', N'70995614', N'medellin@ortopedicosfuturo.com', N'437173759', N'MZ. CZ-3 LTS. 35-36 SECTOR EL VALLE COMUNIDAD CAMPESINA DE JICAMARCA PAMPA CANTO GRANDE', 17)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C29547', N'PRADO DENTALES', N'TENICELA HUBY, LUIS', N'87575692', N'pradodentales@gmail.com', N'368677682', N'AV. TUPAC AMARU N° 1586 - URB. MOCHICA', 9)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C31319', N'TERAPIA INTENSIVA', N'VENTURO CASTRO, CLEVER FLORENCIO', N'72447110', N'wbeimar.pavas@terapiaintensiva.com.co', N'517381049', N'URB. POPULAR DE INTERES SOCIAL DEL PROYECTO ESPECIAL CIUDAD DE PACHACUTEC, AV. STA. ROSA ', 20)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C31683', N'SERVICIO DE INGENIERIA MÉDICOHOSPITALARIO S.I.M.H', N'GAMARRA ESPINOZA, JULIO ALBERTO FERNANDO ZACARIAS', N'75632600', N'comercial@simh.com.co', N'862744652', N'PARAJE SANTA ANA - SAN MIGUEL DE CAURI', 4)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C33698', N'MEGADENTALES', N'WILLIAM DAVID GOICOCHEA MECHATO', N'79962975', N'gerencia@megadentales.com', N'819972456', N'CARRET. PANAMERICANA NORTE KM. 1,122.30 CAMPAMENTO 321 LOTE II', 20)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C34746', N'PRO DENTAL', N'JOHN DAVID, LUCAS', N'77111100', N'prodental1@hotmail.com', N'426151127', N'TERMINAL PORTUARIO DE MATARANI', 13)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C35401', N'REFIMAX', N'DA GIAU ROOSE, JOSE ANGEL', N'72829076', N'regentedefarmacia@refimax.co', N'490455226', N'INTERSECCION AV. ANCON Y CALLE 4, MZ. D, LOTES 2 Y 14, LOTIZACION EL ARENAL, CENTRO POBLADO ZAPALLAL OESTE', 23)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C36593', N'MEDICAS COLOMBIA J Y D', N'PALOMINO CERRON, LUIS ANTONIO', N'70984236', N'danielsalazarrr@hotmail.com', N'271578232', N'CARRETERA SECHURA - BAYOVAR KM. 115', 16)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C37691', N'TECNOMEDICA DEPOSITO', N'MAXIMILIANO JAVIER MARTURET', N'83421192', N'regentebodega@tecnomedica.co m.co', N'440800415', N'CARRETERA SULLANA TAMBOGRANDE S/N FUNDO SAN VICENTE CASERIO', 21)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C37972', N'OHMPHARMA', N'GAMARRA ESPINOZA, JULIO ALBERTO FERNANDO ZACARIAS', N'89577460', N'gerencia@ohmpharmacolombia.c om', N'837695784', N'KM. 18 CARRETERA SULLANA - PAITA', 11)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C39477', N'PROGEN', N'NORIEGA CHICCO, ARMANDO', N'88152980', N'distribuidoraprogen@hotmail.com', N'555650337', N'AV. 28 DE JULIO NO 1824', 19)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C41041', N'SUPERTEX', N'RIVERO SIPAN, FELIX ALBERTO', N'89599625', N'beatriz.hoyos@supertex.com.co', N'429228235', N'AV. PAUL POBLET LIND N° 458', 19)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C41757', N'S.A.C Boonsd', N'Maycol Henry', N'78965842', N'maycol.s@gmail.com', N'985647526', N'av.alacazar', 3)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C42452', N'SOLUCIONES VITALES EN SALUD', N'MAXIMILIANO JAVIER MARTURET', N'70105695', N'direcciontecnica@sovisalud.com.co', N'238849615', N'AV. ARGENTINA N° 3655', 21)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C42547', N'MEDINSUMOS E Y S', N'ARELLANO RAMIREZ, MARCO', N'83611633', N'eliarca22@hotmail.com', N'975475925', N'JR. TALARA N° 821, MZ.121-A, LT.7, AA.HH. JOSE GALVEZ BARRENECHEA', 17)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C43332', N'M Y M DIAGNOSTICS S.A.S.', N'PORRAS VERASTEGUI, JAIME SAUL', N'70564336', N'carlos.espinoza23@unmsm.edu.pe ', N'990574421', N'EX FUNDO LA HUACA LOTE 39', 24)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C45449', N'NEW STETIC', N'JUAN ANTONIO ANGULO FLORES', N'78304233', N'jiyepes@newstetic.com', N'722466700', N'CARRETERA A SULLANA KM. 3', 7)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C45590', N'PROCTOSHOP SEDE 1', N'MAXIMILIANO JAVIER MARTURET', N'84499277', N'vivivi583@gmail.com', N'541434973', N'PARCELA EL BOSQUE - SECTOR EL BOSQUE', 10)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C46188', N'SYMEB SUMINISTROS MEDICAMENTOS Y EQUIPOS BIOMEDICOS', N'DE AUBEYZON MONTOTO, JOSE', N'87195228', N'symebsas@une.net.co', N'354560468', N'CARRETERA PANAMERICANA NORTE Nº 774', 16)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C47042', N'PROMODENTAL PLUSS', N'ARELLANO RAMIREZ, MARCO', N'76498169', N'gloriaperez3@hotmail.com', N'253060917', N'LA FLORIDA S/N', 20)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C47075', N'MOLI PRINCIPAL', N'PORFIRIO COCHACHIN MORALES', N'76941863', N'logisticamoli@une.net.co', N'715809304', N'JR. SICAYA N° 110', 14)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C47387', N'METRO QUIRÚRGICOS', N'GERDER ERNESTO ANDRES RODRIGUEZ RODRIGUEZ', N'74414195', N'metroquirurgicos@une.net.co', N'277438206', N'CARRETERA PANAMERICANA NORTE KM. 265 - PAMPA LAS ZORRAS', 9)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C49656', N'MORENO GIRALDO Y CIA REPRESENTACIONES -EDMOR', N'BARREDA PALACIOS, LUIS ARMANDO', N'85474011', N'morenogiraldoycia@gmail.com', N'650919367', N'CALLE 3 MZ B LOTE 08 URB LA RONCADORA SANTA CLARA', 6)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C50627', N'ORTHO PROFESIONAL DENTAL', N'TITO JESUS ORREGO GONZALES', N'75432951', N'orthopromeda@une.net.co', N'281301270', N'COMPLEJO PESQUERO SAMANCO S/N', 7)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C51398', N'MERCASALUD', N'GALLOFRE CASSADO, MANUEL ANTONIO', N'77270799', N'mercasaludsas@hotmail.com', N'535282572', N'MZ.B LT.6 PARCELA II URB. PARQUE INDUSTRIAL', 14)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C51759', N'SUPPLIER IN HEALTH', N'ARANIBAR PONCE, VICENTE JOSE', N'77706722', N'suppliersinheath@gmail.com', N'474799109', N'SECTOR 03, AMPLIACION LAS DELICIAS – PREDIO RUSTICO', 4)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C54618', N'PRODEFARMA S.A.S.', N'MENDEZ MONGE, WILLIAM ROBERTO', N'77794770', N'comercial@prodefarma.com.co', N'359220357', N'JR. LAS MAQUINARIAS MZ. S-2 LOTE 10, PARCELA II DEL PARQUE INDUSTRIAL DEL CONO SUR', 10)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C54986', N'ONYSID MEDICAMENTOS S.A.', N'CAMPOS ESTEVES, RONAL ENRIQUE', N'77717984', N'direcciontecnica@onysid.co', N'368708513', N'PLANTA DE TRATAMIENTO DE CURUMUY', 8)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C55516', N'MEDICAS BELLO', N'CARLOS ALBERTO SAAVEDRA CASTILLO', N'75027862', N'medicasbello@gmail.com', N'275077116', N'CONCESION MINERA ROJITAS I', 20)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C56280', N'REPRESENTACIONES FARMACEUTICAS GALEX S.A.S.', N'PERICHE RUIZ, ANTONIO', N'87511142', N'william.gallego@galex.com.co', N'919398689', N'JR. MANUEL DEL MAR Y BERNEDO Nº 1324, URB. CHACRA RÍOS', 11)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C57434', N'SMC ALQUISALUD', N'JUAN ABELARDO PEREZ MATIAS', N'86876926', N'alquisalud.smc@hotmail.com', N'694933500', N'AV. ANDRES A. CACERES S/N - ALTO ZAPATA', 19)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C57885', N'POWER MEDICAL', N'RAURAU OBLITAS, JULIO', N'70437031', N'powermedical@une.net.co', N'942615325', N'SANCHEZ CERRO MZ. 239 ZONA INDUSTRIAL', 19)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C57967', N'ORTOMED', N'WONG LU VEGA, ERASMO JESUS ROLANDO', N'77258430', N'ortomed@ortomed.com.co', N'126375174', N'ESTACION NAVAL DE PAITA - PLANTA DE HARINA DE PESCADO', 9)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C58025', N'OSTEOMEDICAL - MEDELLIN', N'FALCON GOMEZ SANCHEZ, ALEJANDRO IGNACIO', N'87897215', N'claudia.cardona@osteomedical.c om.co', N'458316417', N'CONCESION MINERA METALICA "GALLO DE ORO 2002" A 7.5 KM. DE HUEPETUHE', 8)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C61494', N'ST JUDE MEDICAL COLOMBIA LTDA', N'HUGO GONZALES CASTAÑEDA', N'73279978', N'marbelaez@sjm.com', N'553275645', N'PARCELA N° 6, LIMONCILLO, PREDIO CERRO BLANCO Y UNANUE ', 12)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C61611', N'SALUD RENT S.A.S.', N'MENDOZA TALAVERA, ADRIAN', N'76925931', N'compras@saludrent.co', N'490802649', N'PASAJE DON OSCAR Nº 155 - ZONA INDUSTRIAL ACAPULCO', 24)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C62055', N'ODONTOMEDICAS COLOMBIA', N'JOSE CARLOS MANRIQUE MACAGGI', N'76849732', N'odontologicoscolombia@hotmail. com.co', N'628553839', N'CASERIO SANTA ROSA MZ A LOTE 77', 16)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C62713', N'VIDA PLUS SER + S.A.S.', N'GONZALES MOZOMBITE, JORGE LUIS', N'72464500', N'vidaplusser+sas@gmail.com', N'279511944', N'AV. INDUSTRIAL MZ. D, LOTE 12, ZONA COLONOS, TABLADA DE LURIN', 17)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C64793', N'REPRESENTACIONES Y DISTRIBUCIONES HOSPITALARIAS - REDIHOS-', N'EDUARDO ALFREDO ARBULU SECLEN', N'73286308', N'redihos@une.net.co', N'852400567', N'AV. CELESTINO ZAPATA Nº 101 - CALETA CULEBRAS', 19)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C65727', N'MEDISOLUCIONES S.A.S.', N'KELY MARIBEL SANCHEZ NEYRA', N'74214289', N'directorcomercial@medisolucion es.com', N'862476581', N'PROLONGACION MARISCAL NIETO 185', 9)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C65812', N'ORTOPEDICOS FUTURO COLOMBIA S.A.S.', N'TORPOCO CERRON, JESUS H.', N'83354094', N'medellinberrio@ortopedicosfutur o.com', N'108671330', N'SECTOR A LA PAMPA CON COORDENADAS VTM W6584 E:492923 N:871716.4466', 3)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C66326', N'SURTIMEDICOS', N'JORGE TITO RAMON MENDOZA BALAREZO', N'80236772', N'surtimedicos@hotmail.com', N'125330371', N'ZONA OESTE AV. INDUSTRIAL S/N', 18)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C67786', N'R.P. DENTAL', N'SOTO MOTTA, JUAN LUIS', N'85027481', N'rpdentalsa@une.net.co', N'557747587', N'CARRETERA PANAMERICANA NORTE KM. 542, SECTOR V, LOTES 12D-1, 12D-2', 14)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C68373', N'QUIRUMEDICAS', N'BENITES DAVILA, LIZARDO A.', N'77220985', N'soe.yabur@quirumedicas.com.co', N'822688474', N'CALLE CARLOS CONCHA Nº 180', 23)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C69188', N'VACUNAME CIC S.A.', N'CERNA SAN MARTIN, FRANCISCO', N'79022485', N'vacunamecic@centrocic.com', N'752553795', N'AV. SAENZ PEÑA N° 1771', 10)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C70531', N'SAMPHARMA', N'HIDALGO LAZO, FABIAN LENHUAR', N'82600565', N'sampharmasas@gmail.com', N'262309011', N'KM 290 DE LA CARRETERA SAN GABAN', 4)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C71094', N'VISION FARMA', N'JALMIRO LAZARINI JUNIOR', N'86869306', N'compravisionfarma@gmail.com', N'565200857', N'AV. LA MARINA N° 369, PUERTO SUPE', 12)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C71810', N'SEDE ADMINISTRATIVA PROGRAMA MAGISTERIO', N'GAMARRA ESPINOZA, JULIO ALBERTO FERNANDO ZACARIAS', N'78344299', N'ant.jefeserviciofarmaceutico@fundamep.com', N'248529586', N'AV. CIRCUNVALACION Nº 300', 23)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C73378', N'RAUDAL DISTRIBUCIONES', N'GANDOLFI ALMORA, CRISTIAN R JOSE', N'80418679', N'rdca@une.net.co', N'704156238', N'AV. UNIVERSITARIA 9844 ASOCIACION DE VIVIENDA LA ALBORADA', 22)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C74111', N'MEDISERVIS', N'BAZAN DE ARANGURI, ROSARIO', N'89456143', N'dirtecnica@mediservis.com.co', N'586650357', N'AV. ALFONSO NAVARRO CAUPER 980', 3)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C74724', N'MYMEDICAL', N'SOO KIM, HAN', N'79460456', N'mymedical2014@hotmail.com', N'376723204', N'A.A.H.H. VIRGEN DEL SOCORRO MZ P 20 LOTES 01 Y 02', 12)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C75488', N'TECNOMEDICOS DISTRIBUIDOR', N'HECTOR RAUL GARCIA BEJAR', N'77823683', N'administrador@tecnomedicos.co m.co', N'540273624', N'MAZ Q, LTES 8, 9 Y 10, TERCERA ETAPA, URB. LAS PRADERAS', 23)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C77755', N'R.P. MEDICAS', N'CARRILLO M., CARLOS', N'89369594', N'servicioalcliente@rpmedicas.com', N'119700058', N'AV. TRUJILLO S/N', 14)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C79800', N'SURTILINEAS', N'HANS WERNER OSKAR RICHARD KRUMDIEK SORG', N'85944495', N'distribucionessurtilineas@gmail.c om', N'282137654', N'MZ.K, LOTES 21-26 URB. LOS JAZMINES III ETAPA', 9)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C79883', N'SUPPLIES & SOLUTIONS', N'OSCAR JESUS FLORES FERNANDEZ', N'88021447', N'gerencia@suppliessolution.com', N'628859869', N'AV. PROLONGACION BOLOGNESI S/N LADO OESTE, URB. LAS BRISAS', 15)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C79915', N'SUMINEURO', N'REVOREDO GARCIA-CALDERON, HUGO RENE', N'80991042', N'mgonzalez@sumineuro.com', N'210015391', N'MZ I LT 1 AA.HH LA PAZ', 23)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C80721', N'RED FARMACEUTICA', N'LUIS GUILERMO CHAVEZ PEREZ', N'76614091', N'redfarmaceuticamed@gmail.com', N'374186555', N'AV. ARGENTINA 1630-C2 - CALLAO 1', 2)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C83491', N'PROFESIONALES GINECOLOGICOS - PROGYNE-', N'HERBI YBORI SALAZAR GOMEZ', N'86593778', N'bodega@progyne.com', N'798129280', N'MINA MORRITOS', 3)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C84479', N'OPERADOR LOGISTICO Y TRANSPORTADORA - OPEN MARKET', N'CLAUDIO ALBERTO THIERMANN VORWERK', N'72949665', N'juan.bedoya@openmarket.com.c o', N'406292330', N'ESPERANZA DE CARAVELI S/N', 12)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C84671', N'S & S FARMACEUTICA', N'ALVARADO PITTMAN, EDUARDO GUSTAVO', N'88823148', N'ssfarmaceutica@gmail.com', N'863831094', N'CARRETERA CENTRAL KM. 35 - ESQUINA AV. HUAROCHIRI -EX- FUNDO MAYORASGO', 10)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C84798', N'MUNDOMEDIC', N'IRMA OLINDA LINO NATIVIDAD', N'83548991', N'mundomedic2012@hotmail.com', N'130866927', N'CALLE ERNESTO GUNTHER 246 PARQUE INDUSTRIAL', 2)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C84970', N'MEDINORTE BARBOSA', N'LUIS MEDINA ABREGO', N'71675164', N'macj27@hotmail.com', N'392753315', N'CALLE LAS LIMAS N° 240 - CANTO BELLO', 19)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C85572', N'QUICK HELP S.A.S.', N'LUCIO GONZALES LEON', N'89345576', N'diana.aguirre@colsubsidio.com', N'357442542', N'AV. SAN DIEGO DE ALCALA SUB LOTE 2-A (EX FUNDO CHUQUITANTA)', 12)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C86646', N'UNIDROMAYOR MEDELLIN', N'DIEGO PIO LARRABURE COCKBURN', N'84178677', N'info@dromayor.com.co', N'959070885', N'CALLE 1 N° 463 -URB. INDUSTRIAL BOCANEGRA', 1)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C86865', N'REPRESENTACIONES ALCOST PHARMACEUTICAL', N'SALAS SUYOC, GUILLERMO', N'77063136', N'direcciontecnica@alcost.com.co', N'346401265', N'AV. SALAVERRY Nº842', 21)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C88308', N'ORTHOSYSTEM', N'GALBIATI FERRARI DE BENITES, MARIA AIDA', N'71112834', N'yuly.ceballo@orthosystem.co', N'705123528', N'CALLE 1 ESQ. CON CALLE A MZ.B LOT-4A', 8)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C88335', N'RELUZDENT', N'GONZALES FAGONDE, DANIEL', N'78280637', N'reluzdent@yahoo.es', N'730769988', N'LOTE 01 DEL FUNDO SAN PABLO ALT. KM 200 CARRETERA PANAMERICANA SUR.', 12)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C89182', N'VARIEDADES LA SALUD', N'MALAGA LUNA, ROLANDO FRANCISCO', N'75506980', N'variedadeslasalud@gmail.com', N'580281286', N'QUEBRADA PUCARA S/N PASAJE CERRO CONEJO PACHACAMAC', 13)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C89680', N'PRODUCTOS DENTALES IVOLAB', N'MUELLE FLORES, OSCAR', N'76895455', N'ivolabsas@gmail.com', N'780223020', N'MZ. LL, LT. 1, P.J. ENRIQUE LOPEZ ALBUJAR', 19)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C91709', N'SUMISALUD', N'ROBERTO PAULINO PARRAGA CORREA', N'72504397', N'sumisalud1@gmail.com', N'462898455', N'CARRETERA A BA?OS DEL INCA KM. 5,2 - FUNDO EL PORONGO', 15)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C92450', N'REPRESENTACIONES MEDICAS ALCOST PHARMACEUTICAL', N'GUZMAN RODRIGUEZ, JULIO HUMBERTO', N'73787758', N'info@alcost.com.co', N'774901491', N'AV. PACHACUTEC, MZ. BJ, LOTE 04 Y 05, ANEXO 22', 7)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C92742', N'SUPLIMED', N'BAZAN NUÑEZ, JOSE FRANCISCO', N'74234067', N'regente@suplimed.com.co', N'132710758', N'CAMPO MAQUIA. LOTE 31 - B', 20)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C93980', N'RECUPERATE', N'GANOZA CALDERON, RAMON', N'89309477', N'recuperate@yahoo.es', N'907151106', N'AV. INDUSTRIAL SUB LOTE 5-B-2 URB. LAS PRADERAS DE LURIN', 6)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C94138', N'MEDIREX', N'ARELLANO RAMIREZ, MARCO', N'89134795', N'medellinpedidos@medirexsas.co m', N'572541769', N'AV. DEL RIO S/N SECTOR CAUDIVILLA HUACOY Y PUNCHAUCA', 17)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C94221', N'S Y D COLOMBIA S.A. AGENCIA MUNICIPIO DE MEDELLIN', N'ANTONIO BOLOGNA OLIVARI', N'71856294', N'quimicomedellin@syd.com.co', N'117053555', N'CARRETERA CAJAMARCA - BAMBAMARCA KM. 36 (CARACHUGO ZONA 3)', 8)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C95002', N'SOLUCIONES INTEGRALES DE SALUD MEDICAL COMFORT', N'CICCIA CICCIA, MIGUEL', N'89190516', N'polosalud@hotmail.com', N'969196625', N'ESQUINA ANTIGUA PANAMERICANA SUR, PROGRAMA DE VIVIENDA SAN JOSE III ETAPA, MZ. M LOTE 01', 3)
GO
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C96458', N'OSANA NUTRACEUTICA', N'PALLETE TOCUNAGA, ALFREDO', N'83899405', N'osananutraceutica@gmail.com', N'526363947', N'AV. PANAMERICANA NORTE KM. 666', 3)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C97218', N'MERCADENT', N'SILVA TAPIA, GUILLERMO', N'84284392', N'mercadent@une.net.co', N'281677002', N'LOCAL MUNICIPAL PLAZA DE ARMAS', 1)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C97796', N'MEDICAMENTOS Y SERVICIOS', N'MARINO BERNARDO VENTURA CASQUIN', N'70083337', N'mediservis@une.net.co', N'636516994', N'PLAYA LOS LOBOS S/N, PUERTO ETEN', 19)
INSERT [dbo].[cliente] ([id_cliente], [empresa], [representante], [dni], [email], [telefono], [direccion], [id_departamento]) VALUES (N'C98617', N'MEDICAS COLOMBIA', N'BLANCA ELENA APOSTOLOVICH DE LA QUINTANA', N'88622026', N'daniel_salazar@hotmail.com', N'277242020', N'AV. MALASQUEZ S/N', 3)
GO
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-001', N'P_1334', 3, 400, CAST(N'2024-06-10' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-001', N'P_4436', 3, 420, CAST(N'2024-06-10' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-001', N'P_5809', 3, 370, CAST(N'2024-06-09' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-001', N'P_7745', 2, 380, CAST(N'2024-06-02' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-002', N'P_5626', 3, 200, CAST(N'2024-06-12' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-002', N'P_5890', 2, 1000, CAST(N'2024-10-09' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-002', N'P_9580', 3, 180, CAST(N'2024-06-12' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-003', N'P_3715', 3, 545, CAST(N'2024-06-03' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-003', N'P_9580', 3, 500, CAST(N'2024-06-11' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-005', N'P_3370', 2, 1500, CAST(N'2024-10-09' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-006', N'P_1480', 1, 2000, CAST(N'2024-07-30' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-006', N'P_2072', 2, 1500, CAST(N'2024-07-27' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-008', N'P_5626', 3, 1500, CAST(N'2025-08-03' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-008', N'P_8549', 3, 1800, CAST(N'2025-10-04' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-008', N'P_9385', 2, 1800, CAST(N'2024-07-17' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-009', N'P_1480', 2, 1800, CAST(N'2024-09-19' AS Date))
INSERT [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor], [id_estado], [monto], [fecha_entrega]) VALUES (N'SC-010', N'P_1480', 2, 1800, CAST(N'2024-09-19' AS Date))
GO
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-001', N'EMP001', 2, N'DIEGO PIO LARRABURE COCKBURN', 1500, CAST(N'2024-04-14' AS Date), N'info@dromayor.com', 270, 1820, 2, N'74552564')
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-002', N'EMP001', 2, N'CHU GONZALES, LUIS ANTONIO', 2000, CAST(N'2024-04-16' AS Date), N'leonardolaverde@sumivitales.com', 360, 2375, 3, N'74444455')
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-003', N'EMP001', 3, N'OSCAR JESUS FLORES FERNANDEZ', 1250, CAST(N'2024-04-25' AS Date), N'gerencia@suppliessolution.com', 225, 1490, 3, N'85224156')
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-004', N'EMP001', 2, N'CERNA SAN MARTIN, FRANCISCO', 3600, CAST(N'2024-04-30' AS Date), N'vacunamecic@centrocic.com', 648, 4298, 4, N'58542266')
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-005', N'EMP001', 1, N'Tessita', 5100, CAST(N'2024-07-03' AS Date), N'tessita@gmail.com', 283.33334350585938, 5383.33349609375, 1, N'74552155')
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-006', N'EMP001', 1, N'Teresa', 1500, CAST(N'2024-07-12' AS Date), N'teresa@gmail.com', 83.333335876464844, 1583.3333740234375, 6, N'75522014')
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-007', N'EMP001', 1, N'ssss', 1000, CAST(N'2024-07-12' AS Date), N'dsds@dsd', 55.555557250976562, 1055.5555419921875, 5, N'75220445')
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-008', N'EMP001', 1, N'sdsdsd', 3500, CAST(N'2024-07-12' AS Date), N'ssdsd@dsds', 194.44444274902344, 3694.4443359375, 5, N'47552245')
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-009', N'EMP001', 1, N'Teresita', 2000, CAST(N'2024-07-12' AS Date), N'sdsdsd@sdsdsdsd', 111.11111450195313, 2111.111083984375, 13, N'75524565')
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-010', N'EMP001', 1, N'Horacio Gomez', 500, CAST(N'2024-07-13' AS Date), N'horacio@gmail.com', 27.777778625488281, 527.77777099609375, 2, N'72639455')
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-011', N'EMP001', 1, N'Mauricio Lopez', 2000, CAST(N'2024-07-15' AS Date), N'mauricio@gmail.com', 111.11111450195313, 2111.111083984375, 4, NULL)
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-012', N'EMP001', 1, N'Jorge Luna', 3000, CAST(N'2024-07-16' AS Date), N'jorgito@gmail.com', 166.66667175292969, 3166.666748046875, 2, N'55425258')
INSERT [dbo].[cotizaciones_venta] ([id_cotizacion], [id_empleado], [id_estado], [nombre_cliente], [monto_producto], [fecha_emision], [email], [monto_impuesto], [monto_total], [id_departamento], [dni]) VALUES (N'CV-013', N'EMP001', 1, N'PEDRO OSORIO BELTRAN', 2000, CAST(N'2024-07-17' AS Date), N'pedro@gmail.com', 111.11111450195313, 2111.111083984375, 1, N'99999999')
GO
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (1, N'MOQUEGUA', 70.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (2, N'LA LIBERTAD', 50.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (3, N'LIMA', 15.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (4, N'AREQUIPA', 50.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (5, N'LORETO', 120.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (6, N'PIURA', 70.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (7, N'AYACUCHO', 60.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (8, N'JUNIN', 40.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (9, N'ICA', 20.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (10, N'LAMBAYEQUE', 60.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (11, N'CAJAMARCA', 60.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (12, N'UCAYALI', 90.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (13, N'ANCASH', 40.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (14, N'HUANCAVELICA', 30.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (15, N'TUMBES', 80.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (16, N'PUNO', 90.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (17, N'TACNA', 80.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (18, N'SAN MARTIN', 70.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (19, N'AMAZONAS', 70.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (20, N'PASCO', 50.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (21, N'APURIMAC', 50.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (22, N'MADRE DE DIOS', 120.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (23, N'CUZCO', 60.0000)
INSERT [dbo].[departamentos] ([id_departamento], [nombre_departamento], [costo_envio]) VALUES (24, N'HUANUCO', 50.0000)
GO
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-001', N'P_1334')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-001', N'P_4436')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-001', N'P_5809')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-001', N'P_7745')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-002', N'P_5626')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-002', N'P_5890')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-002', N'P_9580')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-003', N'P_3715')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-003', N'P_9580')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-004', N'P_3239')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-004', N'P_3370')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-004', N'P_7745')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-005', N'P_1480')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-005', N'P_3370')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-006', N'P_1480')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-006', N'P_2072')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-006', N'P_7745')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-007', N'P_3370')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-007', N'P_7745')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-008', N'P_5626')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-008', N'P_8549')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-008', N'P_9385')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-009', N'P_1480')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-009', N'P_2072')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-010', N'P_1480')
INSERT [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor]) VALUES (N'SC-010', N'P_2072')
GO
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-001', N'PRO001', 300, NULL)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-002', N'PRO002', 400, NULL)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-003', N'PRO003', 250, NULL)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-004', N'PRO004', 300, NULL)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-006', N'PRO013', 100, NULL)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-007', N'PRO003', 200, NULL)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-008', N'PRO003', 100, 500)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-008', N'PRO021', 200, 3000)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-009', N'PRO001', 200, 1000)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-009', N'PRO003', 100, 500)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-010', N'PRO001', 100, 500)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-011', N'PRO003', 300, 1500)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-011', N'PRO010', 100, 500)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-012', N'PRO015', 200, 3000)
INSERT [dbo].[detalles_cotizacion_venta] ([idCotizacion], [idProducto], [cantidad], [monto]) VALUES (N'CV-013', N'PRO001', 400, 2000)
GO
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO001', N'HO-001', 400)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO002', N'HO-002', 200)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO003', N'HO-003', 600)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO027', N'HO-006', 200)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO060', N'HO-008', 200)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO292', N'HO-006', 200)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO319', N'HO-004', 200)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO320', N'HO-005', 400)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO321', N'HO-005', 400)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO322', N'HO-005', 400)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO323', N'HO-006', 200)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO324', N'HO-006', 200)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO325', N'HO-006', 200)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO326', N'HO-007', 200)
INSERT [dbo].[detalles_hoja_ingreso] ([idProducto], [idHoja], [cantidad]) VALUES (N'PRO327', N'HO-008', 400)
GO
INSERT [dbo].[empleados] ([idEmpleado], [idCuenta], [nombre], [apellido], [telefono], [dni], [direccion], [fechaNacimiento], [genero], [cargo]) VALUES (N'EMP001', 1, N'Carlos Daniel', N'Espinoza Ramirez', N'990574421', N'72639789', N'Av. Alcazar', CAST(N'2002-07-01' AS Date), N'Masculino', N'Transportista')
INSERT [dbo].[empleados] ([idEmpleado], [idCuenta], [nombre], [apellido], [telefono], [dni], [direccion], [fechaNacimiento], [genero], [cargo]) VALUES (N'EMP002', 2, N'Melani Yulli ', N'Laveriano Porroa', N'990232144', N'77238943', N'Av. 200 Millas', CAST(N'2001-04-28' AS Date), N'Femenino', N'Administrador')
INSERT [dbo].[empleados] ([idEmpleado], [idCuenta], [nombre], [apellido], [telefono], [dni], [direccion], [fechaNacimiento], [genero], [cargo]) VALUES (N'EMP003', 3, N'Nixon', N'Sanchez Villalta', N'939224343', N'83828392', N'Av. Pro', CAST(N'2000-01-20' AS Date), N'Masculino', N'Transportista')
INSERT [dbo].[empleados] ([idEmpleado], [idCuenta], [nombre], [apellido], [telefono], [dni], [direccion], [fechaNacimiento], [genero], [cargo]) VALUES (N'EMP004', 4, N'Gari ', N'Suca Mariño', N'992323211', N'48848383', N'Av. Universitaria', CAST(N'2001-10-11' AS Date), N'Masculino', N'Asistente de venta')
INSERT [dbo].[empleados] ([idEmpleado], [idCuenta], [nombre], [apellido], [telefono], [dni], [direccion], [fechaNacimiento], [genero], [cargo]) VALUES (N'EMP005', 5, N'Melvin', N'Huaricacha Masias', N'990932939', N'80843883', N'Av. Venezuela', CAST(N'2000-04-04' AS Date), N'Masculino', N'Asistente de compra')
INSERT [dbo].[empleados] ([idEmpleado], [idCuenta], [nombre], [apellido], [telefono], [dni], [direccion], [fechaNacimiento], [genero], [cargo]) VALUES (N'EMP006', 6, N'Renzo', N'Porta Calderon', N'995140500', N'84700449', N'Av. Angamos', CAST(N'2000-02-02' AS Date), N'Masculino', N'Asistente de almacen')
GO
INSERT [dbo].[estados] ([idEstado], [estado]) VALUES (1, N'Pendiente')
INSERT [dbo].[estados] ([idEstado], [estado]) VALUES (2, N'Aceptado')
INSERT [dbo].[estados] ([idEstado], [estado]) VALUES (3, N'Rechazado')
GO
INSERT [dbo].[estados_disponibilidad] ([idEstadoDisponibilidad], [estado]) VALUES (1, N'Disponible')
INSERT [dbo].[estados_disponibilidad] ([idEstadoDisponibilidad], [estado]) VALUES (2, N'Agotado')
INSERT [dbo].[estados_disponibilidad] ([idEstadoDisponibilidad], [estado]) VALUES (3, N'Reservado')
INSERT [dbo].[estados_disponibilidad] ([idEstadoDisponibilidad], [estado]) VALUES (4, N'Vendido')
GO
INSERT [dbo].[estados_envio] ([idEstadoEnvio], [estado]) VALUES (1, N'En preparación')
INSERT [dbo].[estados_envio] ([idEstadoEnvio], [estado]) VALUES (2, N'En transito')
INSERT [dbo].[estados_envio] ([idEstadoEnvio], [estado]) VALUES (3, N'Entregado')
INSERT [dbo].[estados_envio] ([idEstadoEnvio], [estado]) VALUES (4, N'Listo para enviar')
GO
INSERT [dbo].[estados_operativos] ([idEstadoOperativo], [estado]) VALUES (1, N'Completo')
INSERT [dbo].[estados_operativos] ([idEstadoOperativo], [estado]) VALUES (2, N'Incompleto')
GO
INSERT [dbo].[estados_pago] ([idEstadoPago], [estado]) VALUES (1, N'Pendiente')
INSERT [dbo].[estados_pago] ([idEstadoPago], [estado]) VALUES (2, N'Pagado')
INSERT [dbo].[estados_pago] ([idEstadoPago], [estado]) VALUES (3, N'Vencido')
GO
INSERT [dbo].[estados_seguridad] ([idEstadoSeguridad], [estado]) VALUES (1, N'Vigente')
INSERT [dbo].[estados_seguridad] ([idEstadoSeguridad], [estado]) VALUES (2, N'Caducado')
GO
INSERT [dbo].[facturas_compra] ([idFactura], [idOrdenCompra], [fecha_limite], [fecha_pago]) VALUES (N'FC-001', N'OC-001', CAST(N'2024-06-01' AS Date), CAST(N'2024-05-19' AS Date))
INSERT [dbo].[facturas_compra] ([idFactura], [idOrdenCompra], [fecha_limite], [fecha_pago]) VALUES (N'FC-002', N'OC-002', CAST(N'2024-05-28' AS Date), CAST(N'2024-05-20' AS Date))
INSERT [dbo].[facturas_compra] ([idFactura], [idOrdenCompra], [fecha_limite], [fecha_pago]) VALUES (N'FC-003', N'OC-003', CAST(N'2024-06-02' AS Date), CAST(N'2024-05-21' AS Date))
INSERT [dbo].[facturas_compra] ([idFactura], [idOrdenCompra], [fecha_limite], [fecha_pago]) VALUES (N'FC-009', N'OC-009', CAST(N'2024-05-13' AS Date), CAST(N'2024-05-23' AS Date))
INSERT [dbo].[facturas_compra] ([idFactura], [idOrdenCompra], [fecha_limite], [fecha_pago]) VALUES (N'FC-010', N'OC-010', CAST(N'2024-05-13' AS Date), CAST(N'2024-05-23' AS Date))
INSERT [dbo].[facturas_compra] ([idFactura], [idOrdenCompra], [fecha_limite], [fecha_pago]) VALUES (N'FC-011', N'OC-011', CAST(N'2024-09-13' AS Date), CAST(N'2024-09-23' AS Date))
INSERT [dbo].[facturas_compra] ([idFactura], [idOrdenCompra], [fecha_limite], [fecha_pago]) VALUES (N'FC-012', N'OC-012', CAST(N'2024-09-13' AS Date), CAST(N'2024-09-23' AS Date))
GO
INSERT [dbo].[facturas_venta] ([idFactura], [idPedido], [idEstadoPago], [fechaLimite], [fechaPago]) VALUES (N'FV-001', N'PE-001', 2, CAST(N'2024-05-04' AS Date), CAST(N'2024-05-02' AS Date))
INSERT [dbo].[facturas_venta] ([idFactura], [idPedido], [idEstadoPago], [fechaLimite], [fechaPago]) VALUES (N'FV-002', N'PE-002', 2, CAST(N'2024-05-13' AS Date), CAST(N'2024-05-10' AS Date))
INSERT [dbo].[facturas_venta] ([idFactura], [idPedido], [idEstadoPago], [fechaLimite], [fechaPago]) VALUES (N'FV-003', N'PE-003', 2, CAST(N'2024-05-15' AS Date), CAST(N'2024-05-10' AS Date))
INSERT [dbo].[facturas_venta] ([idFactura], [idPedido], [idEstadoPago], [fechaLimite], [fechaPago]) VALUES (N'FV-004', N'PE-004', 2, CAST(N'2024-07-23' AS Date), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[facturas_venta] ([idFactura], [idPedido], [idEstadoPago], [fechaLimite], [fechaPago]) VALUES (N'FV-005', N'PE-005', 2, CAST(N'2024-07-16' AS Date), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[facturas_venta] ([idFactura], [idPedido], [idEstadoPago], [fechaLimite], [fechaPago]) VALUES (N'FV-006', N'PE-006', 2, CAST(N'2024-07-17' AS Date), CAST(N'2024-07-17' AS Date))
GO
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F001', N'Tableta')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F002', N'Solucion Oral')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F003', N'Solucion Inyectabl')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F004', N'Elixir')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F005', N'Suspension Inyect')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F006', N'Jarabe')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F007', N'Suspension Oral')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F008', N'Unguento Oftalmic')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F009', N'Unguento Topico')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F010', N'Locion Topica')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F011', N'Crema topica')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F012', N'Capsula Blanda')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F013', N'Capsula')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F014', N'Aerosol Bucal')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F015', N'Inhalador Nasal')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F016', N'Polvo')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F017', N'Solucion Topica')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F018', N'Crema Vaginal')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F019', N'Tableta Vaginal')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F020', N'Suspension Otica')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F021', N'Solucion Nasal')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F022', N'Solucion Oftalmica')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F024', N'Tableta Recubierta')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F025', N'Unguento Oftalmico')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F027', N'Supositorio')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F028', N'Tableta Sublingual')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F029', N'Gragea')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F030', N'Implante Subcutaneo')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F031', N'Jalea Uretral')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F032', N'Spray')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F033', N'Ovulo Vaginal')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F034', N'Suspension Topica')
INSERT [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica], [forma]) VALUES (N'F035', N'Polvo para Recons')
GO
INSERT [dbo].[guias_remision] ([idGuiaRemision], [idEmpleado], [fecha_envio], [idPedido]) VALUES (N'GR-001', N'EMP005', CAST(N'2024-04-14' AS Date), N'PE-001')
INSERT [dbo].[guias_remision] ([idGuiaRemision], [idEmpleado], [fecha_envio], [idPedido]) VALUES (N'GR-002', N'EMP005', CAST(N'2024-08-01' AS Date), N'PE-002')
INSERT [dbo].[guias_remision] ([idGuiaRemision], [idEmpleado], [fecha_envio], [idPedido]) VALUES (N'GR-003', N'EMP005', CAST(N'2024-04-20' AS Date), N'PE-003')
INSERT [dbo].[guias_remision] ([idGuiaRemision], [idEmpleado], [fecha_envio], [idPedido]) VALUES (N'GR-004', N'EMP005', CAST(N'2024-07-18' AS Date), N'PE-001')
INSERT [dbo].[guias_remision] ([idGuiaRemision], [idEmpleado], [fecha_envio], [idPedido]) VALUES (N'GR-005', N'EMP005', CAST(N'2024-07-22' AS Date), N'PE-004')
GO
INSERT [dbo].[hojas_de_ingreso] ([idHoja], [idEmpleado], [fechaIngreso]) VALUES (N'HO-001', N'EMP005', CAST(N'2024-05-12' AS Date))
INSERT [dbo].[hojas_de_ingreso] ([idHoja], [idEmpleado], [fechaIngreso]) VALUES (N'HO-002', N'EMP005', CAST(N'2024-05-14' AS Date))
INSERT [dbo].[hojas_de_ingreso] ([idHoja], [idEmpleado], [fechaIngreso]) VALUES (N'HO-003', N'EMP005', CAST(N'2024-05-16' AS Date))
INSERT [dbo].[hojas_de_ingreso] ([idHoja], [idEmpleado], [fechaIngreso]) VALUES (N'HO-004', N'EMP005', CAST(N'2024-06-29' AS Date))
INSERT [dbo].[hojas_de_ingreso] ([idHoja], [idEmpleado], [fechaIngreso]) VALUES (N'HO-005', N'EMP005', CAST(N'2024-06-29' AS Date))
INSERT [dbo].[hojas_de_ingreso] ([idHoja], [idEmpleado], [fechaIngreso]) VALUES (N'HO-006', N'EMP005', CAST(N'2024-07-17' AS Date))
INSERT [dbo].[hojas_de_ingreso] ([idHoja], [idEmpleado], [fechaIngreso]) VALUES (N'HO-007', NULL, CAST(N'2024-07-19' AS Date))
INSERT [dbo].[hojas_de_ingreso] ([idHoja], [idEmpleado], [fechaIngreso]) VALUES (N'HO-008', N'EMP005', CAST(N'2024-09-06' AS Date))
GO
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00001', 1, 1, 1, N'PRO001', 200, CAST(N'2027-06-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00002', 1, 1, 1, N'PRO001', 200, CAST(N'2028-06-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00003', 1, 1, 1, N'PRO001', 200, CAST(N'2027-09-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00004', 1, 1, 1, N'PRO002', 200, CAST(N'2027-11-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00005', 1, 1, 1, N'PRO002', 200, CAST(N'2028-08-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00006', 1, 1, 1, N'PRO002', 200, CAST(N'2028-06-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00007', 1, 1, 1, N'PRO003', 200, CAST(N'2027-12-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00008', 1, 1, 1, N'PRO003', 200, CAST(N'2028-07-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00009', 1, 1, 1, N'PRO003', 200, CAST(N'2028-09-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00010', 1, 1, 1, N'PRO004', 200, CAST(N'2028-10-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00011', 1, 1, 1, N'PRO004', 200, CAST(N'2027-09-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00012', 1, 1, 1, N'PRO004', 200, CAST(N'2027-09-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00013', 1, 1, 1, N'PRO005', 200, CAST(N'2026-05-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00014', 1, 1, 1, N'PRO005', 200, CAST(N'2027-05-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00015', 1, 1, 1, N'PRO005', 200, CAST(N'2026-12-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00016', 1, 1, 1, N'PRO006', 200, CAST(N'2027-10-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00017', 1, 1, 1, N'PRO006', 200, CAST(N'2027-08-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00018', 1, 1, 1, N'PRO006', 200, CAST(N'2028-05-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00019', 1, 1, 1, N'PRO007', 200, CAST(N'2027-05-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00020', 1, 1, 1, N'PRO007', 200, CAST(N'2027-08-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00021', 1, 1, 1, N'PRO007', 200, CAST(N'2026-12-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00022', 1, 1, 1, N'PRO008', 200, CAST(N'2027-11-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00023', 1, 1, 1, N'PRO008', 200, CAST(N'2027-10-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00024', 1, 1, 1, N'PRO008', 200, CAST(N'2026-07-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00025', 1, 1, 1, N'PRO009', 200, CAST(N'2027-05-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00026', 1, 1, 1, N'PRO009', 200, CAST(N'2028-07-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00027', 1, 1, 1, N'PRO009', 200, CAST(N'2026-11-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00028', 1, 1, 1, N'PRO010', 200, CAST(N'2026-08-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00029', 1, 1, 1, N'PRO010', 200, CAST(N'2026-08-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00030', 1, 1, 1, N'PRO010', 200, CAST(N'2026-08-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00031', 1, 1, 1, N'PRO011', 200, CAST(N'2027-07-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00032', 1, 1, 1, N'PRO011', 200, CAST(N'2027-05-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00033', 1, 1, 1, N'PRO011', 200, CAST(N'2027-05-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00034', 1, 1, 1, N'PRO012', 200, CAST(N'2026-12-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00035', 1, 1, 1, N'PRO012', 200, CAST(N'2027-11-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00036', 1, 1, 1, N'PRO012', 200, CAST(N'2026-12-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00037', 1, 1, 1, N'PRO013', 200, CAST(N'2026-09-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00038', 1, 1, 1, N'PRO013', 200, CAST(N'2028-05-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00039', 1, 1, 1, N'PRO013', 200, CAST(N'2026-08-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00040', 1, 1, 1, N'PRO014', 200, CAST(N'2026-06-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00041', 1, 1, 1, N'PRO014', 200, CAST(N'2028-11-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00042', 1, 1, 1, N'PRO014', 200, CAST(N'2027-07-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00043', 1, 1, 1, N'PRO015', 200, CAST(N'2026-10-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00044', 1, 1, 1, N'PRO015', 200, CAST(N'2028-12-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00045', 1, 1, 1, N'PRO015', 200, CAST(N'2028-08-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00046', 1, 1, 1, N'PRO016', 200, CAST(N'2026-06-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00047', 1, 1, 1, N'PRO016', 200, CAST(N'2028-11-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00048', 1, 1, 1, N'PRO016', 200, CAST(N'2026-08-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00049', 1, 1, 1, N'PRO017', 200, CAST(N'2027-11-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00050', 1, 1, 1, N'PRO017', 200, CAST(N'2027-12-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00051', 1, 1, 1, N'PRO017', 200, CAST(N'2027-05-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00052', 1, 1, 1, N'PRO018', 200, CAST(N'2028-11-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00053', 1, 1, 1, N'PRO018', 200, CAST(N'2026-07-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00054', 1, 1, 1, N'PRO018', 200, CAST(N'2026-12-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00055', 1, 1, 1, N'PRO019', 200, CAST(N'2028-06-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00056', 1, 1, 1, N'PRO019', 200, CAST(N'2026-08-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00057', 1, 1, 1, N'PRO019', 200, CAST(N'2027-05-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00058', 1, 1, 1, N'PRO020', 200, CAST(N'2028-06-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00059', 1, 1, 1, N'PRO020', 200, CAST(N'2026-07-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00060', 1, 1, 1, N'PRO020', 200, CAST(N'2028-07-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00061', 1, 1, 1, N'PRO021', 200, CAST(N'2026-05-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00062', 1, 1, 1, N'PRO021', 200, CAST(N'2028-12-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00063', 1, 1, 1, N'PRO021', 200, CAST(N'2027-12-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00064', 1, 1, 1, N'PRO022', 200, CAST(N'2027-10-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00065', 1, 1, 1, N'PRO022', 200, CAST(N'2028-08-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00066', 1, 1, 1, N'PRO022', 200, CAST(N'2028-10-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00067', 1, 1, 1, N'PRO023', 200, CAST(N'2026-08-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00068', 1, 1, 1, N'PRO023', 200, CAST(N'2027-05-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00069', 1, 1, 1, N'PRO023', 200, CAST(N'2026-12-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00070', 1, 1, 1, N'PRO024', 200, CAST(N'2028-08-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00071', 1, 1, 1, N'PRO024', 200, CAST(N'2026-12-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00072', 1, 1, 1, N'PRO024', 200, CAST(N'2026-08-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00073', 1, 1, 1, N'PRO025', 200, CAST(N'2026-10-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00074', 1, 1, 1, N'PRO025', 200, CAST(N'2027-09-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00075', 1, 1, 1, N'PRO025', 200, CAST(N'2027-11-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00076', 1, 1, 1, N'PRO026', 200, CAST(N'2026-10-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00077', 1, 1, 1, N'PRO026', 200, CAST(N'2026-06-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00078', 1, 1, 1, N'PRO026', 200, CAST(N'2027-10-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00079', 1, 1, 1, N'PRO027', 200, CAST(N'2027-12-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00080', 1, 1, 1, N'PRO027', 200, CAST(N'2027-09-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00081', 1, 1, 1, N'PRO027', 200, CAST(N'2028-11-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00082', 1, 1, 1, N'PRO028', 200, CAST(N'2026-10-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00083', 1, 1, 1, N'PRO028', 200, CAST(N'2028-06-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00084', 1, 1, 1, N'PRO028', 200, CAST(N'2026-08-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00085', 1, 1, 1, N'PRO029', 200, CAST(N'2026-09-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00086', 1, 1, 1, N'PRO029', 200, CAST(N'2028-08-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00087', 1, 1, 1, N'PRO029', 200, CAST(N'2027-06-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00088', 1, 1, 1, N'PRO030', 200, CAST(N'2028-09-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00089', 1, 1, 1, N'PRO030', 200, CAST(N'2027-11-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00090', 1, 1, 1, N'PRO030', 200, CAST(N'2026-11-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00091', 1, 1, 1, N'PRO031', 200, CAST(N'2028-11-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00092', 1, 1, 1, N'PRO031', 200, CAST(N'2026-07-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00093', 1, 1, 1, N'PRO031', 200, CAST(N'2027-11-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00094', 1, 1, 1, N'PRO032', 200, CAST(N'2028-12-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00095', 1, 1, 1, N'PRO032', 200, CAST(N'2027-09-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00096', 1, 1, 1, N'PRO032', 200, CAST(N'2028-06-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00097', 1, 1, 1, N'PRO033', 200, CAST(N'2026-05-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00098', 1, 1, 1, N'PRO033', 200, CAST(N'2028-11-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00099', 1, 1, 1, N'PRO033', 200, CAST(N'2028-05-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00100', 1, 1, 1, N'PRO034', 200, CAST(N'2027-12-14' AS Date))
GO
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00101', 1, 1, 1, N'PRO034', 200, CAST(N'2026-08-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00102', 1, 1, 1, N'PRO034', 200, CAST(N'2028-05-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00103', 1, 1, 1, N'PRO035', 200, CAST(N'2027-06-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00104', 1, 1, 1, N'PRO035', 200, CAST(N'2027-10-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00105', 1, 1, 1, N'PRO035', 200, CAST(N'2027-12-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00106', 1, 1, 1, N'PRO036', 200, CAST(N'2028-11-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00107', 1, 1, 1, N'PRO036', 200, CAST(N'2028-08-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00108', 1, 1, 1, N'PRO036', 200, CAST(N'2026-10-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00109', 1, 1, 1, N'PRO037', 200, CAST(N'2028-09-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00110', 1, 1, 1, N'PRO037', 200, CAST(N'2027-10-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00111', 1, 1, 1, N'PRO037', 200, CAST(N'2028-05-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00112', 1, 1, 1, N'PRO038', 200, CAST(N'2027-10-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00113', 1, 1, 1, N'PRO038', 200, CAST(N'2027-11-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00114', 1, 1, 1, N'PRO038', 200, CAST(N'2026-09-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00115', 1, 1, 1, N'PRO039', 200, CAST(N'2027-06-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00116', 1, 1, 1, N'PRO039', 200, CAST(N'2028-05-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00117', 1, 1, 1, N'PRO039', 200, CAST(N'2026-09-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00118', 1, 1, 1, N'PRO040', 200, CAST(N'2028-06-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00119', 1, 1, 1, N'PRO040', 200, CAST(N'2028-12-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00120', 1, 1, 1, N'PRO040', 200, CAST(N'2027-08-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00121', 1, 1, 1, N'PRO041', 200, CAST(N'2027-10-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00122', 1, 1, 1, N'PRO041', 200, CAST(N'2026-10-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00123', 1, 1, 1, N'PRO041', 200, CAST(N'2026-12-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00124', 1, 1, 1, N'PRO042', 200, CAST(N'2027-10-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00125', 1, 1, 1, N'PRO042', 200, CAST(N'2027-08-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00126', 1, 1, 1, N'PRO042', 200, CAST(N'2027-08-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00127', 1, 1, 1, N'PRO043', 200, CAST(N'2027-10-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00128', 1, 1, 1, N'PRO043', 200, CAST(N'2028-11-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00129', 1, 1, 1, N'PRO043', 200, CAST(N'2027-09-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00130', 1, 1, 1, N'PRO044', 200, CAST(N'2028-06-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00131', 1, 1, 1, N'PRO044', 200, CAST(N'2027-11-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00132', 1, 1, 1, N'PRO044', 200, CAST(N'2027-09-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00133', 1, 1, 1, N'PRO045', 200, CAST(N'2027-05-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00134', 1, 1, 1, N'PRO045', 200, CAST(N'2026-09-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00135', 1, 1, 1, N'PRO045', 200, CAST(N'2028-05-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00136', 1, 1, 1, N'PRO046', 200, CAST(N'2026-11-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00137', 1, 1, 1, N'PRO046', 200, CAST(N'2028-07-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00138', 1, 1, 1, N'PRO046', 200, CAST(N'2027-05-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00139', 1, 1, 1, N'PRO047', 200, CAST(N'2027-09-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00140', 1, 1, 1, N'PRO047', 200, CAST(N'2026-07-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00141', 1, 1, 1, N'PRO047', 200, CAST(N'2026-09-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00142', 1, 1, 1, N'PRO048', 200, CAST(N'2026-10-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00143', 1, 1, 1, N'PRO048', 200, CAST(N'2028-06-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00144', 1, 1, 1, N'PRO048', 200, CAST(N'2028-10-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00145', 1, 1, 1, N'PRO049', 200, CAST(N'2027-11-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00146', 1, 1, 1, N'PRO049', 200, CAST(N'2026-12-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00147', 1, 1, 1, N'PRO049', 200, CAST(N'2026-08-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00148', 1, 1, 1, N'PRO050', 200, CAST(N'2027-05-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00149', 1, 1, 1, N'PRO050', 200, CAST(N'2028-09-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00150', 1, 1, 1, N'PRO050', 200, CAST(N'2027-05-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00151', 1, 1, 1, N'PRO051', 200, CAST(N'2028-08-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00152', 1, 1, 1, N'PRO051', 200, CAST(N'2027-08-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00153', 1, 1, 1, N'PRO051', 200, CAST(N'2027-12-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00154', 1, 1, 1, N'PRO052', 200, CAST(N'2027-10-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00155', 1, 1, 1, N'PRO052', 200, CAST(N'2026-11-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00156', 1, 1, 1, N'PRO052', 200, CAST(N'2028-10-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00157', 1, 1, 1, N'PRO053', 200, CAST(N'2027-12-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00158', 1, 1, 1, N'PRO053', 200, CAST(N'2028-05-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00159', 1, 1, 1, N'PRO053', 200, CAST(N'2028-12-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00160', 1, 1, 1, N'PRO054', 200, CAST(N'2028-11-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00161', 1, 1, 1, N'PRO054', 200, CAST(N'2027-05-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00162', 1, 1, 1, N'PRO054', 200, CAST(N'2028-09-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00163', 1, 1, 1, N'PRO055', 200, CAST(N'2027-07-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00164', 1, 1, 1, N'PRO055', 200, CAST(N'2028-07-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00165', 1, 1, 1, N'PRO055', 200, CAST(N'2028-11-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00166', 1, 1, 1, N'PRO056', 200, CAST(N'2026-05-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00167', 1, 1, 1, N'PRO056', 200, CAST(N'2027-11-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00168', 1, 1, 1, N'PRO056', 200, CAST(N'2026-10-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00169', 1, 1, 1, N'PRO057', 200, CAST(N'2028-12-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00170', 1, 1, 1, N'PRO057', 200, CAST(N'2027-07-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00171', 1, 1, 1, N'PRO057', 200, CAST(N'2026-11-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00172', 1, 1, 1, N'PRO058', 200, CAST(N'2027-07-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00173', 1, 1, 1, N'PRO058', 200, CAST(N'2028-12-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00174', 1, 1, 1, N'PRO058', 200, CAST(N'2028-10-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00175', 1, 1, 1, N'PRO059', 200, CAST(N'2026-07-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00176', 1, 1, 1, N'PRO059', 200, CAST(N'2027-06-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00177', 1, 1, 1, N'PRO059', 200, CAST(N'2028-06-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00178', 1, 1, 1, N'PRO060', 200, CAST(N'2028-08-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00179', 1, 1, 1, N'PRO060', 200, CAST(N'2028-06-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00180', 1, 1, 1, N'PRO060', 200, CAST(N'2027-08-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00181', 1, 1, 1, N'PRO061', 200, CAST(N'2026-07-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00182', 1, 1, 1, N'PRO061', 200, CAST(N'2028-05-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00183', 1, 1, 1, N'PRO061', 200, CAST(N'2027-10-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00184', 1, 1, 1, N'PRO062', 200, CAST(N'2026-05-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00185', 1, 1, 1, N'PRO062', 200, CAST(N'2027-06-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00186', 1, 1, 1, N'PRO062', 200, CAST(N'2027-09-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00187', 1, 1, 1, N'PRO063', 200, CAST(N'2028-12-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00188', 1, 1, 1, N'PRO063', 200, CAST(N'2027-08-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00189', 1, 1, 1, N'PRO063', 200, CAST(N'2026-05-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00190', 1, 1, 1, N'PRO064', 200, CAST(N'2028-11-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00191', 1, 1, 1, N'PRO064', 200, CAST(N'2027-08-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00192', 1, 1, 1, N'PRO064', 200, CAST(N'2027-06-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00193', 1, 1, 1, N'PRO065', 200, CAST(N'2028-07-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00194', 1, 1, 1, N'PRO065', 200, CAST(N'2027-11-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00195', 1, 1, 1, N'PRO065', 200, CAST(N'2028-10-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00196', 1, 1, 1, N'PRO066', 200, CAST(N'2026-10-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00197', 1, 1, 1, N'PRO066', 200, CAST(N'2026-11-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00198', 1, 1, 1, N'PRO066', 200, CAST(N'2027-12-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00199', 1, 1, 1, N'PRO067', 200, CAST(N'2026-08-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00200', 1, 1, 1, N'PRO067', 200, CAST(N'2027-09-19' AS Date))
GO
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00201', 1, 1, 1, N'PRO067', 200, CAST(N'2027-10-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00202', 1, 1, 1, N'PRO068', 200, CAST(N'2026-09-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00203', 1, 1, 1, N'PRO068', 200, CAST(N'2027-08-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00204', 1, 1, 1, N'PRO068', 200, CAST(N'2028-05-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00205', 1, 1, 1, N'PRO069', 200, CAST(N'2027-11-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00206', 1, 1, 1, N'PRO069', 200, CAST(N'2027-07-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00207', 1, 1, 1, N'PRO069', 200, CAST(N'2028-10-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00208', 1, 1, 1, N'PRO070', 200, CAST(N'2026-05-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00209', 1, 1, 1, N'PRO070', 200, CAST(N'2028-09-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00210', 1, 1, 1, N'PRO070', 200, CAST(N'2028-06-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00211', 1, 1, 1, N'PRO071', 200, CAST(N'2028-05-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00212', 1, 1, 1, N'PRO071', 200, CAST(N'2027-05-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00213', 1, 1, 1, N'PRO071', 200, CAST(N'2027-07-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00214', 1, 1, 1, N'PRO072', 200, CAST(N'2026-08-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00215', 1, 1, 1, N'PRO072', 200, CAST(N'2027-12-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00216', 1, 1, 1, N'PRO072', 200, CAST(N'2028-06-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00217', 1, 1, 1, N'PRO073', 200, CAST(N'2026-11-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00218', 1, 1, 1, N'PRO073', 200, CAST(N'2028-08-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00219', 1, 1, 1, N'PRO073', 200, CAST(N'2027-05-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00220', 1, 1, 1, N'PRO074', 200, CAST(N'2026-10-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00221', 1, 1, 1, N'PRO074', 200, CAST(N'2026-05-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00222', 1, 1, 1, N'PRO074', 200, CAST(N'2026-06-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00223', 1, 1, 1, N'PRO075', 200, CAST(N'2027-06-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00224', 1, 1, 1, N'PRO075', 200, CAST(N'2027-12-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00225', 1, 1, 1, N'PRO075', 200, CAST(N'2028-08-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00226', 1, 1, 1, N'PRO076', 200, CAST(N'2028-05-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00227', 1, 1, 1, N'PRO076', 200, CAST(N'2027-07-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00228', 1, 1, 1, N'PRO076', 200, CAST(N'2026-09-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00229', 1, 1, 1, N'PRO077', 200, CAST(N'2028-05-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00230', 1, 1, 1, N'PRO077', 200, CAST(N'2027-05-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00231', 1, 1, 1, N'PRO077', 200, CAST(N'2028-06-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00232', 1, 1, 1, N'PRO078', 200, CAST(N'2027-07-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00233', 1, 1, 1, N'PRO078', 200, CAST(N'2028-10-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00234', 1, 1, 1, N'PRO078', 200, CAST(N'2028-09-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00235', 1, 1, 1, N'PRO079', 200, CAST(N'2028-10-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00236', 1, 1, 1, N'PRO079', 200, CAST(N'2028-09-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00237', 1, 1, 1, N'PRO079', 200, CAST(N'2027-11-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00238', 1, 1, 1, N'PRO080', 200, CAST(N'2026-09-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00239', 1, 1, 1, N'PRO080', 200, CAST(N'2026-11-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00240', 1, 1, 1, N'PRO080', 200, CAST(N'2028-07-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00241', 1, 1, 1, N'PRO081', 200, CAST(N'2028-07-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00242', 1, 1, 1, N'PRO081', 200, CAST(N'2026-10-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00243', 1, 1, 1, N'PRO081', 200, CAST(N'2027-07-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00244', 1, 1, 1, N'PRO082', 200, CAST(N'2026-10-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00245', 1, 1, 1, N'PRO082', 200, CAST(N'2027-09-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00246', 1, 1, 1, N'PRO082', 200, CAST(N'2026-10-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00247', 1, 1, 1, N'PRO083', 200, CAST(N'2026-10-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00248', 1, 1, 1, N'PRO083', 200, CAST(N'2026-05-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00249', 1, 1, 1, N'PRO083', 200, CAST(N'2028-05-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00250', 1, 1, 1, N'PRO084', 200, CAST(N'2027-08-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00251', 1, 1, 1, N'PRO084', 200, CAST(N'2028-09-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00252', 1, 1, 1, N'PRO084', 200, CAST(N'2026-06-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00253', 1, 1, 1, N'PRO085', 200, CAST(N'2026-10-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00254', 1, 1, 1, N'PRO085', 200, CAST(N'2027-05-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00255', 1, 1, 1, N'PRO085', 200, CAST(N'2027-07-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00256', 1, 1, 1, N'PRO086', 200, CAST(N'2026-08-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00257', 1, 1, 1, N'PRO086', 200, CAST(N'2027-09-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00258', 1, 1, 1, N'PRO086', 200, CAST(N'2026-07-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00259', 1, 1, 1, N'PRO087', 200, CAST(N'2026-08-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00260', 1, 1, 1, N'PRO087', 200, CAST(N'2028-06-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00261', 1, 1, 1, N'PRO087', 200, CAST(N'2028-12-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00262', 1, 1, 1, N'PRO088', 200, CAST(N'2026-11-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00263', 1, 1, 1, N'PRO088', 200, CAST(N'2027-12-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00264', 1, 1, 1, N'PRO088', 200, CAST(N'2026-06-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00265', 1, 1, 1, N'PRO089', 200, CAST(N'2027-07-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00266', 1, 1, 1, N'PRO089', 200, CAST(N'2028-10-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00267', 1, 1, 1, N'PRO089', 200, CAST(N'2026-08-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00268', 1, 1, 1, N'PRO090', 200, CAST(N'2028-12-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00269', 1, 1, 1, N'PRO090', 200, CAST(N'2026-11-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00270', 1, 1, 1, N'PRO090', 200, CAST(N'2026-06-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00271', 1, 1, 1, N'PRO091', 200, CAST(N'2028-10-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00272', 1, 1, 1, N'PRO091', 200, CAST(N'2027-11-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00273', 1, 1, 1, N'PRO091', 200, CAST(N'2026-09-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00274', 1, 1, 1, N'PRO092', 200, CAST(N'2028-12-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00275', 1, 1, 1, N'PRO092', 200, CAST(N'2027-12-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00276', 1, 1, 1, N'PRO092', 200, CAST(N'2026-05-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00277', 1, 1, 1, N'PRO093', 200, CAST(N'2028-09-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00278', 1, 1, 1, N'PRO093', 200, CAST(N'2027-09-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00279', 1, 1, 1, N'PRO093', 200, CAST(N'2026-06-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00280', 1, 1, 1, N'PRO094', 200, CAST(N'2026-10-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00281', 1, 1, 1, N'PRO094', 200, CAST(N'2028-09-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00282', 1, 1, 1, N'PRO094', 200, CAST(N'2026-07-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00283', 1, 1, 1, N'PRO095', 200, CAST(N'2026-11-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00284', 1, 1, 1, N'PRO095', 200, CAST(N'2027-12-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00285', 1, 1, 1, N'PRO095', 200, CAST(N'2027-06-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00286', 1, 1, 1, N'PRO096', 200, CAST(N'2027-06-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00287', 1, 1, 1, N'PRO096', 200, CAST(N'2028-10-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00288', 1, 1, 1, N'PRO096', 200, CAST(N'2026-11-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00289', 1, 1, 1, N'PRO097', 200, CAST(N'2028-07-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00290', 1, 1, 1, N'PRO097', 200, CAST(N'2028-10-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00291', 1, 1, 1, N'PRO097', 200, CAST(N'2027-06-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00292', 1, 1, 1, N'PRO098', 200, CAST(N'2027-08-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00293', 1, 1, 1, N'PRO098', 200, CAST(N'2027-09-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00294', 1, 1, 1, N'PRO098', 200, CAST(N'2026-05-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00295', 1, 1, 1, N'PRO099', 200, CAST(N'2028-05-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00296', 1, 1, 1, N'PRO099', 200, CAST(N'2028-10-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00297', 1, 1, 1, N'PRO099', 200, CAST(N'2028-07-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00298', 1, 1, 1, N'PRO100', 200, CAST(N'2028-12-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00299', 1, 1, 1, N'PRO100', 200, CAST(N'2028-11-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00300', 1, 1, 1, N'PRO100', 200, CAST(N'2026-11-24' AS Date))
GO
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00301', 1, 1, 1, N'PRO101', 200, CAST(N'2027-07-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00302', 1, 1, 1, N'PRO101', 200, CAST(N'2027-08-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00303', 1, 1, 1, N'PRO101', 200, CAST(N'2028-08-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00304', 1, 1, 1, N'PRO102', 200, CAST(N'2028-12-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00305', 1, 1, 1, N'PRO102', 200, CAST(N'2026-12-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00306', 1, 1, 1, N'PRO102', 200, CAST(N'2027-07-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00307', 1, 1, 1, N'PRO103', 200, CAST(N'2028-12-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00308', 1, 1, 1, N'PRO103', 200, CAST(N'2027-07-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00309', 1, 1, 1, N'PRO103', 200, CAST(N'2028-08-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00310', 1, 1, 1, N'PRO104', 200, CAST(N'2027-08-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00311', 1, 1, 1, N'PRO104', 200, CAST(N'2028-11-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00312', 1, 1, 1, N'PRO104', 200, CAST(N'2026-07-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00313', 1, 1, 1, N'PRO105', 200, CAST(N'2027-10-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00314', 1, 1, 1, N'PRO105', 200, CAST(N'2027-08-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00315', 1, 1, 1, N'PRO105', 200, CAST(N'2026-10-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00316', 1, 1, 1, N'PRO106', 200, CAST(N'2026-06-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00317', 1, 1, 1, N'PRO106', 200, CAST(N'2027-12-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00318', 1, 1, 1, N'PRO106', 200, CAST(N'2027-11-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00319', 1, 1, 1, N'PRO107', 200, CAST(N'2026-07-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00320', 1, 1, 1, N'PRO107', 200, CAST(N'2027-09-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00321', 1, 1, 1, N'PRO107', 200, CAST(N'2026-12-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00322', 1, 1, 1, N'PRO108', 200, CAST(N'2027-10-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00323', 1, 1, 1, N'PRO108', 200, CAST(N'2027-07-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00324', 1, 1, 1, N'PRO108', 200, CAST(N'2026-05-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00325', 1, 1, 1, N'PRO109', 200, CAST(N'2026-12-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00326', 1, 1, 1, N'PRO109', 200, CAST(N'2028-10-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00327', 1, 1, 1, N'PRO109', 200, CAST(N'2026-12-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00328', 1, 1, 1, N'PRO110', 200, CAST(N'2027-05-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00329', 1, 1, 1, N'PRO110', 200, CAST(N'2026-12-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00330', 1, 1, 1, N'PRO110', 200, CAST(N'2027-11-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00331', 1, 1, 1, N'PRO111', 200, CAST(N'2027-06-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00332', 1, 1, 1, N'PRO111', 200, CAST(N'2028-07-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00333', 1, 1, 1, N'PRO111', 200, CAST(N'2027-08-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00334', 1, 1, 1, N'PRO112', 200, CAST(N'2027-10-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00335', 1, 1, 1, N'PRO112', 200, CAST(N'2026-10-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00336', 1, 1, 1, N'PRO112', 200, CAST(N'2028-07-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00337', 1, 1, 1, N'PRO113', 200, CAST(N'2028-07-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00338', 1, 1, 1, N'PRO113', 200, CAST(N'2028-09-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00339', 1, 1, 1, N'PRO113', 200, CAST(N'2028-05-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00340', 1, 1, 1, N'PRO114', 200, CAST(N'2027-09-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00341', 1, 1, 1, N'PRO114', 200, CAST(N'2027-05-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00342', 1, 1, 1, N'PRO114', 200, CAST(N'2028-05-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00343', 1, 1, 1, N'PRO115', 200, CAST(N'2027-06-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00344', 1, 1, 1, N'PRO115', 200, CAST(N'2028-07-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00345', 1, 1, 1, N'PRO115', 200, CAST(N'2026-07-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00346', 1, 1, 1, N'PRO116', 200, CAST(N'2027-05-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00347', 1, 1, 1, N'PRO116', 200, CAST(N'2028-05-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00348', 1, 1, 1, N'PRO116', 200, CAST(N'2026-05-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00349', 1, 1, 1, N'PRO117', 200, CAST(N'2026-08-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00350', 1, 1, 1, N'PRO117', 200, CAST(N'2026-05-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00351', 1, 1, 1, N'PRO117', 200, CAST(N'2027-05-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00352', 1, 1, 1, N'PRO118', 200, CAST(N'2026-09-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00353', 1, 1, 1, N'PRO118', 200, CAST(N'2027-05-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00354', 1, 1, 1, N'PRO118', 200, CAST(N'2028-10-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00355', 1, 1, 1, N'PRO119', 200, CAST(N'2027-10-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00356', 1, 1, 1, N'PRO119', 200, CAST(N'2026-12-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00357', 1, 1, 1, N'PRO119', 200, CAST(N'2027-09-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00358', 1, 1, 1, N'PRO120', 200, CAST(N'2026-08-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00359', 1, 1, 1, N'PRO120', 200, CAST(N'2028-09-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00360', 1, 1, 1, N'PRO120', 200, CAST(N'2027-07-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00361', 1, 1, 1, N'PRO121', 200, CAST(N'2027-09-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00362', 1, 1, 1, N'PRO121', 200, CAST(N'2026-10-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00363', 1, 1, 1, N'PRO121', 200, CAST(N'2028-10-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00364', 1, 1, 1, N'PRO122', 200, CAST(N'2026-12-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00365', 1, 1, 1, N'PRO122', 200, CAST(N'2026-07-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00366', 1, 1, 1, N'PRO122', 200, CAST(N'2027-08-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00367', 1, 1, 1, N'PRO123', 200, CAST(N'2026-10-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00368', 1, 1, 1, N'PRO123', 200, CAST(N'2027-09-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00369', 1, 1, 1, N'PRO123', 200, CAST(N'2028-12-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00370', 1, 1, 1, N'PRO124', 200, CAST(N'2028-08-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00371', 1, 1, 1, N'PRO124', 200, CAST(N'2028-12-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00372', 1, 1, 1, N'PRO124', 200, CAST(N'2028-08-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00373', 1, 1, 1, N'PRO125', 200, CAST(N'2026-07-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00374', 1, 1, 1, N'PRO125', 200, CAST(N'2027-08-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00375', 1, 1, 1, N'PRO125', 200, CAST(N'2026-08-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00376', 1, 1, 1, N'PRO126', 200, CAST(N'2028-06-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00377', 1, 1, 1, N'PRO126', 200, CAST(N'2027-05-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00378', 1, 1, 1, N'PRO126', 200, CAST(N'2026-11-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00379', 1, 1, 1, N'PRO127', 200, CAST(N'2027-10-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00380', 1, 1, 1, N'PRO127', 200, CAST(N'2027-06-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00381', 1, 1, 1, N'PRO127', 200, CAST(N'2027-12-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00382', 1, 1, 1, N'PRO128', 200, CAST(N'2026-08-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00383', 1, 1, 1, N'PRO128', 200, CAST(N'2027-08-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00384', 1, 1, 1, N'PRO128', 200, CAST(N'2026-08-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00385', 1, 1, 1, N'PRO129', 200, CAST(N'2027-09-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00386', 1, 1, 1, N'PRO129', 200, CAST(N'2028-10-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00387', 1, 1, 1, N'PRO129', 200, CAST(N'2027-10-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00388', 1, 1, 1, N'PRO130', 200, CAST(N'2026-10-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00389', 1, 1, 1, N'PRO130', 200, CAST(N'2026-12-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00390', 1, 1, 1, N'PRO130', 200, CAST(N'2027-11-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00391', 1, 1, 1, N'PRO131', 200, CAST(N'2028-05-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00392', 1, 1, 1, N'PRO131', 200, CAST(N'2028-05-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00393', 1, 1, 1, N'PRO131', 200, CAST(N'2028-12-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00394', 1, 1, 1, N'PRO132', 200, CAST(N'2027-05-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00395', 1, 1, 1, N'PRO132', 200, CAST(N'2026-09-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00396', 1, 1, 1, N'PRO132', 200, CAST(N'2026-07-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00397', 1, 1, 1, N'PRO133', 200, CAST(N'2028-09-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00398', 1, 1, 1, N'PRO133', 200, CAST(N'2026-10-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00399', 1, 1, 1, N'PRO133', 200, CAST(N'2026-12-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00400', 1, 1, 1, N'PRO134', 200, CAST(N'2027-10-06' AS Date))
GO
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00401', 1, 1, 1, N'PRO134', 200, CAST(N'2027-10-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00402', 1, 1, 1, N'PRO134', 200, CAST(N'2027-05-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00403', 1, 1, 1, N'PRO135', 200, CAST(N'2028-09-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00404', 1, 1, 1, N'PRO135', 200, CAST(N'2026-06-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00405', 1, 1, 1, N'PRO135', 200, CAST(N'2027-09-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00406', 1, 1, 1, N'PRO136', 200, CAST(N'2026-10-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00407', 1, 1, 1, N'PRO136', 200, CAST(N'2028-10-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00408', 1, 1, 1, N'PRO136', 200, CAST(N'2027-09-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00409', 1, 1, 1, N'PRO137', 200, CAST(N'2027-11-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00410', 1, 1, 1, N'PRO137', 200, CAST(N'2026-11-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00411', 1, 1, 1, N'PRO137', 200, CAST(N'2028-09-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00412', 1, 1, 1, N'PRO138', 200, CAST(N'2027-12-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00413', 1, 1, 1, N'PRO138', 200, CAST(N'2027-08-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00414', 1, 1, 1, N'PRO138', 200, CAST(N'2027-10-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00415', 1, 1, 1, N'PRO139', 200, CAST(N'2027-06-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00416', 1, 1, 1, N'PRO139', 200, CAST(N'2027-09-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00417', 1, 1, 1, N'PRO139', 200, CAST(N'2028-11-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00418', 1, 1, 1, N'PRO140', 200, CAST(N'2026-12-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00419', 1, 1, 1, N'PRO140', 200, CAST(N'2026-07-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00420', 1, 1, 1, N'PRO140', 200, CAST(N'2028-07-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00421', 1, 1, 1, N'PRO141', 200, CAST(N'2027-05-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00422', 1, 1, 1, N'PRO141', 200, CAST(N'2026-10-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00423', 1, 1, 1, N'PRO141', 200, CAST(N'2028-12-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00424', 1, 1, 1, N'PRO142', 200, CAST(N'2026-10-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00425', 1, 1, 1, N'PRO142', 200, CAST(N'2028-05-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00426', 1, 1, 1, N'PRO142', 200, CAST(N'2027-08-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00427', 1, 1, 1, N'PRO143', 200, CAST(N'2028-09-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00428', 1, 1, 1, N'PRO143', 200, CAST(N'2027-07-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00429', 1, 1, 1, N'PRO143', 200, CAST(N'2027-05-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00430', 1, 1, 1, N'PRO144', 200, CAST(N'2028-07-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00431', 1, 1, 1, N'PRO144', 200, CAST(N'2027-12-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00432', 1, 1, 1, N'PRO144', 200, CAST(N'2027-06-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00433', 1, 1, 1, N'PRO145', 200, CAST(N'2026-12-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00434', 1, 1, 1, N'PRO145', 200, CAST(N'2027-11-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00435', 1, 1, 1, N'PRO145', 200, CAST(N'2028-10-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00436', 1, 1, 1, N'PRO146', 200, CAST(N'2027-10-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00437', 1, 1, 1, N'PRO146', 200, CAST(N'2028-09-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00438', 1, 1, 1, N'PRO146', 200, CAST(N'2028-09-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00439', 1, 1, 1, N'PRO147', 200, CAST(N'2028-12-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00440', 1, 1, 1, N'PRO147', 200, CAST(N'2026-10-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00441', 1, 1, 1, N'PRO147', 200, CAST(N'2027-10-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00442', 1, 1, 1, N'PRO148', 200, CAST(N'2027-06-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00443', 1, 1, 1, N'PRO148', 200, CAST(N'2026-06-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00444', 1, 1, 1, N'PRO148', 200, CAST(N'2028-05-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00445', 1, 1, 1, N'PRO149', 200, CAST(N'2026-11-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00446', 1, 1, 1, N'PRO149', 200, CAST(N'2027-06-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00447', 1, 1, 1, N'PRO149', 200, CAST(N'2026-09-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00448', 1, 1, 1, N'PRO150', 200, CAST(N'2026-07-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00449', 1, 1, 1, N'PRO150', 200, CAST(N'2027-08-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00450', 1, 1, 1, N'PRO150', 200, CAST(N'2027-06-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00451', 1, 1, 1, N'PRO151', 200, CAST(N'2026-10-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00452', 1, 1, 1, N'PRO151', 200, CAST(N'2027-06-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00453', 1, 1, 1, N'PRO151', 200, CAST(N'2028-08-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00454', 1, 1, 1, N'PRO152', 200, CAST(N'2028-11-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00455', 1, 1, 1, N'PRO152', 200, CAST(N'2027-06-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00456', 1, 1, 1, N'PRO152', 200, CAST(N'2028-05-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00457', 1, 1, 1, N'PRO153', 200, CAST(N'2026-06-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00458', 1, 1, 1, N'PRO153', 200, CAST(N'2028-08-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00459', 1, 1, 1, N'PRO153', 200, CAST(N'2026-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00460', 1, 1, 1, N'PRO154', 200, CAST(N'2027-05-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00461', 1, 1, 1, N'PRO154', 200, CAST(N'2027-08-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00462', 1, 1, 1, N'PRO154', 200, CAST(N'2028-08-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00463', 1, 1, 1, N'PRO155', 200, CAST(N'2026-09-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00464', 1, 1, 1, N'PRO155', 200, CAST(N'2028-06-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00465', 1, 1, 1, N'PRO155', 200, CAST(N'2028-06-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00466', 1, 1, 1, N'PRO156', 200, CAST(N'2027-11-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00467', 1, 1, 1, N'PRO156', 200, CAST(N'2027-10-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00468', 1, 1, 1, N'PRO156', 200, CAST(N'2028-07-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00469', 1, 1, 1, N'PRO157', 200, CAST(N'2026-12-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00470', 1, 1, 1, N'PRO157', 200, CAST(N'2027-12-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00471', 1, 1, 1, N'PRO157', 200, CAST(N'2027-06-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00472', 1, 1, 1, N'PRO158', 200, CAST(N'2026-12-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00473', 1, 1, 1, N'PRO158', 200, CAST(N'2027-08-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00474', 1, 1, 1, N'PRO158', 200, CAST(N'2026-08-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00475', 1, 1, 1, N'PRO159', 200, CAST(N'2026-05-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00476', 1, 1, 1, N'PRO159', 200, CAST(N'2028-09-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00477', 1, 1, 1, N'PRO159', 200, CAST(N'2027-06-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00478', 1, 1, 1, N'PRO160', 200, CAST(N'2027-05-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00479', 1, 1, 1, N'PRO160', 200, CAST(N'2028-12-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00480', 1, 1, 1, N'PRO160', 200, CAST(N'2026-12-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00481', 1, 1, 1, N'PRO161', 200, CAST(N'2028-12-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00482', 1, 1, 1, N'PRO161', 200, CAST(N'2027-11-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00483', 1, 1, 1, N'PRO161', 200, CAST(N'2028-11-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00484', 1, 1, 1, N'PRO162', 200, CAST(N'2026-10-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00485', 1, 1, 1, N'PRO162', 200, CAST(N'2027-08-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00486', 1, 1, 1, N'PRO162', 200, CAST(N'2027-11-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00487', 1, 1, 1, N'PRO163', 200, CAST(N'2026-06-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00488', 1, 1, 1, N'PRO163', 200, CAST(N'2027-08-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00489', 1, 1, 1, N'PRO163', 200, CAST(N'2026-06-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00490', 1, 1, 1, N'PRO164', 200, CAST(N'2027-10-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00491', 1, 1, 1, N'PRO164', 200, CAST(N'2028-10-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00492', 1, 1, 1, N'PRO164', 200, CAST(N'2026-07-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00493', 1, 1, 1, N'PRO165', 200, CAST(N'2027-12-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00494', 1, 1, 1, N'PRO165', 200, CAST(N'2027-10-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00495', 1, 1, 1, N'PRO165', 200, CAST(N'2028-06-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00496', 1, 1, 1, N'PRO166', 200, CAST(N'2026-08-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00497', 1, 1, 1, N'PRO166', 200, CAST(N'2027-11-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00498', 1, 1, 1, N'PRO166', 200, CAST(N'2028-11-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00499', 1, 1, 1, N'PRO167', 200, CAST(N'2028-11-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00500', 1, 1, 1, N'PRO167', 200, CAST(N'2026-07-17' AS Date))
GO
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00501', 1, 1, 1, N'PRO167', 200, CAST(N'2028-08-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00502', 1, 1, 1, N'PRO168', 200, CAST(N'2026-05-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00503', 1, 1, 1, N'PRO168', 200, CAST(N'2026-08-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00504', 1, 1, 1, N'PRO168', 200, CAST(N'2028-06-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00505', 1, 1, 1, N'PRO169', 200, CAST(N'2028-06-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00506', 1, 1, 1, N'PRO169', 200, CAST(N'2028-06-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00507', 1, 1, 1, N'PRO169', 200, CAST(N'2027-10-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00508', 1, 1, 1, N'PRO170', 200, CAST(N'2026-10-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00509', 1, 1, 1, N'PRO170', 200, CAST(N'2028-12-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00510', 1, 1, 1, N'PRO170', 200, CAST(N'2026-09-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00511', 1, 1, 1, N'PRO171', 200, CAST(N'2028-10-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00512', 1, 1, 1, N'PRO171', 200, CAST(N'2026-12-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00513', 1, 1, 1, N'PRO171', 200, CAST(N'2028-11-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00514', 1, 1, 1, N'PRO172', 200, CAST(N'2028-11-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00515', 1, 1, 1, N'PRO172', 200, CAST(N'2028-06-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00516', 1, 1, 1, N'PRO172', 200, CAST(N'2027-06-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00517', 1, 1, 1, N'PRO173', 200, CAST(N'2028-10-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00518', 1, 1, 1, N'PRO173', 200, CAST(N'2028-12-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00519', 1, 1, 1, N'PRO173', 200, CAST(N'2027-10-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00520', 1, 1, 1, N'PRO174', 200, CAST(N'2028-12-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00521', 1, 1, 1, N'PRO174', 200, CAST(N'2027-11-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00522', 1, 1, 1, N'PRO174', 200, CAST(N'2027-07-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00523', 1, 1, 1, N'PRO175', 200, CAST(N'2027-11-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00524', 1, 1, 1, N'PRO175', 200, CAST(N'2027-08-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00525', 1, 1, 1, N'PRO175', 200, CAST(N'2028-09-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00526', 1, 1, 1, N'PRO176', 200, CAST(N'2026-12-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00527', 1, 1, 1, N'PRO176', 200, CAST(N'2026-08-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00528', 1, 1, 1, N'PRO176', 200, CAST(N'2026-05-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00529', 1, 1, 1, N'PRO177', 200, CAST(N'2026-06-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00530', 1, 1, 1, N'PRO177', 200, CAST(N'2026-11-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00531', 1, 1, 1, N'PRO177', 200, CAST(N'2027-08-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00532', 1, 1, 1, N'PRO178', 200, CAST(N'2026-06-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00533', 1, 1, 1, N'PRO178', 200, CAST(N'2028-12-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00534', 1, 1, 1, N'PRO178', 200, CAST(N'2026-05-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00535', 1, 1, 1, N'PRO179', 200, CAST(N'2028-12-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00536', 1, 1, 1, N'PRO179', 200, CAST(N'2028-06-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00537', 1, 1, 1, N'PRO179', 200, CAST(N'2026-12-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00538', 1, 1, 1, N'PRO180', 200, CAST(N'2026-05-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00539', 1, 1, 1, N'PRO180', 200, CAST(N'2028-05-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00540', 1, 1, 1, N'PRO180', 200, CAST(N'2026-06-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00541', 1, 1, 1, N'PRO181', 200, CAST(N'2028-09-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00542', 1, 1, 1, N'PRO181', 200, CAST(N'2027-10-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00543', 1, 1, 1, N'PRO181', 200, CAST(N'2026-06-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00544', 1, 1, 1, N'PRO182', 200, CAST(N'2026-12-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00545', 1, 1, 1, N'PRO182', 200, CAST(N'2028-05-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00546', 1, 1, 1, N'PRO182', 200, CAST(N'2026-10-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00547', 1, 1, 1, N'PRO183', 200, CAST(N'2028-11-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00548', 1, 1, 1, N'PRO183', 200, CAST(N'2027-09-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00549', 1, 1, 1, N'PRO183', 200, CAST(N'2028-06-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00550', 1, 1, 1, N'PRO184', 200, CAST(N'2026-09-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00551', 1, 1, 1, N'PRO184', 200, CAST(N'2028-05-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00552', 1, 1, 1, N'PRO184', 200, CAST(N'2026-08-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00553', 1, 1, 1, N'PRO185', 200, CAST(N'2028-10-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00554', 1, 1, 1, N'PRO185', 200, CAST(N'2028-06-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00555', 1, 1, 1, N'PRO185', 200, CAST(N'2026-08-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00556', 1, 1, 1, N'PRO186', 200, CAST(N'2026-06-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00557', 1, 1, 1, N'PRO186', 200, CAST(N'2027-06-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00558', 1, 1, 1, N'PRO186', 200, CAST(N'2026-12-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00559', 1, 1, 1, N'PRO187', 200, CAST(N'2028-09-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00560', 1, 1, 1, N'PRO187', 200, CAST(N'2028-05-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00561', 1, 1, 1, N'PRO187', 200, CAST(N'2028-12-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00562', 1, 1, 1, N'PRO188', 200, CAST(N'2027-11-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00563', 1, 1, 1, N'PRO188', 200, CAST(N'2027-08-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00564', 1, 1, 1, N'PRO188', 200, CAST(N'2027-07-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00565', 1, 1, 1, N'PRO189', 200, CAST(N'2027-05-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00566', 1, 1, 1, N'PRO189', 200, CAST(N'2028-12-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00567', 1, 1, 1, N'PRO189', 200, CAST(N'2028-09-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00568', 1, 1, 1, N'PRO190', 200, CAST(N'2028-07-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00569', 1, 1, 1, N'PRO190', 200, CAST(N'2028-12-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00570', 1, 1, 1, N'PRO190', 200, CAST(N'2028-11-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00571', 1, 1, 1, N'PRO191', 200, CAST(N'2027-08-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00572', 1, 1, 1, N'PRO191', 200, CAST(N'2027-06-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00573', 1, 1, 1, N'PRO191', 200, CAST(N'2027-05-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00574', 1, 1, 1, N'PRO192', 200, CAST(N'2028-12-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00575', 1, 1, 1, N'PRO192', 200, CAST(N'2027-06-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00576', 1, 1, 1, N'PRO192', 200, CAST(N'2026-08-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00577', 1, 1, 1, N'PRO193', 200, CAST(N'2027-07-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00578', 1, 1, 1, N'PRO193', 200, CAST(N'2028-06-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00579', 1, 1, 1, N'PRO193', 200, CAST(N'2026-08-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00580', 1, 1, 1, N'PRO194', 200, CAST(N'2027-06-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00581', 1, 1, 1, N'PRO194', 200, CAST(N'2027-10-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00582', 1, 1, 1, N'PRO194', 200, CAST(N'2028-09-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00583', 1, 1, 1, N'PRO195', 200, CAST(N'2027-07-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00584', 1, 1, 1, N'PRO195', 200, CAST(N'2027-10-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00585', 1, 1, 1, N'PRO195', 200, CAST(N'2027-08-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00586', 1, 1, 1, N'PRO196', 200, CAST(N'2028-12-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00587', 1, 1, 1, N'PRO196', 200, CAST(N'2027-10-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00588', 1, 1, 1, N'PRO196', 200, CAST(N'2028-07-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00589', 1, 1, 1, N'PRO197', 200, CAST(N'2027-07-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00590', 1, 1, 1, N'PRO197', 200, CAST(N'2026-11-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00591', 1, 1, 1, N'PRO197', 200, CAST(N'2026-07-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00592', 1, 1, 1, N'PRO198', 200, CAST(N'2028-08-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00593', 1, 1, 1, N'PRO198', 200, CAST(N'2026-06-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00594', 1, 1, 1, N'PRO198', 200, CAST(N'2027-09-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00595', 1, 1, 1, N'PRO199', 200, CAST(N'2028-08-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00596', 1, 1, 1, N'PRO199', 200, CAST(N'2027-05-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00597', 1, 1, 1, N'PRO199', 200, CAST(N'2028-11-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00598', 1, 1, 1, N'PRO200', 200, CAST(N'2028-08-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00599', 1, 1, 1, N'PRO200', 200, CAST(N'2028-08-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00600', 1, 1, 1, N'PRO200', 200, CAST(N'2027-12-27' AS Date))
GO
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00601', 1, 1, 1, N'PRO201', 200, CAST(N'2026-10-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00602', 1, 1, 1, N'PRO201', 200, CAST(N'2028-05-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00603', 1, 1, 1, N'PRO201', 200, CAST(N'2027-08-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00604', 1, 1, 1, N'PRO202', 200, CAST(N'2028-05-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00605', 1, 1, 1, N'PRO202', 200, CAST(N'2026-10-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00606', 1, 1, 1, N'PRO202', 200, CAST(N'2028-08-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00607', 1, 1, 1, N'PRO203', 200, CAST(N'2028-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00608', 1, 1, 1, N'PRO203', 200, CAST(N'2027-10-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00609', 1, 1, 1, N'PRO203', 200, CAST(N'2028-11-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00610', 1, 1, 1, N'PRO204', 200, CAST(N'2026-06-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00611', 1, 1, 1, N'PRO204', 200, CAST(N'2028-12-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00612', 1, 1, 1, N'PRO204', 200, CAST(N'2026-08-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00613', 1, 1, 1, N'PRO205', 200, CAST(N'2026-06-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00614', 1, 1, 1, N'PRO205', 200, CAST(N'2028-08-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00615', 1, 1, 1, N'PRO205', 200, CAST(N'2028-09-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00616', 1, 1, 1, N'PRO206', 200, CAST(N'2028-07-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00617', 1, 1, 1, N'PRO206', 200, CAST(N'2028-11-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00618', 1, 1, 1, N'PRO206', 200, CAST(N'2028-08-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00619', 1, 1, 1, N'PRO207', 200, CAST(N'2026-11-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00620', 1, 1, 1, N'PRO207', 200, CAST(N'2028-06-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00621', 1, 1, 1, N'PRO207', 200, CAST(N'2027-08-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00622', 1, 1, 1, N'PRO208', 200, CAST(N'2027-05-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00623', 1, 1, 1, N'PRO208', 200, CAST(N'2028-10-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00624', 1, 1, 1, N'PRO208', 200, CAST(N'2026-10-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00625', 1, 1, 1, N'PRO209', 200, CAST(N'2027-08-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00626', 1, 1, 1, N'PRO209', 200, CAST(N'2026-11-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00627', 1, 1, 1, N'PRO209', 200, CAST(N'2026-09-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00628', 1, 1, 1, N'PRO210', 200, CAST(N'2027-09-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00629', 1, 1, 1, N'PRO210', 200, CAST(N'2028-05-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00630', 1, 1, 1, N'PRO210', 200, CAST(N'2026-09-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00631', 1, 1, 1, N'PRO211', 200, CAST(N'2026-07-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00632', 1, 1, 1, N'PRO211', 200, CAST(N'2027-09-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00633', 1, 1, 1, N'PRO211', 200, CAST(N'2026-05-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00634', 1, 1, 1, N'PRO212', 200, CAST(N'2026-07-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00635', 1, 1, 1, N'PRO212', 200, CAST(N'2027-12-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00636', 1, 1, 1, N'PRO212', 200, CAST(N'2028-10-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00637', 1, 1, 1, N'PRO213', 200, CAST(N'2026-08-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00638', 1, 1, 1, N'PRO213', 200, CAST(N'2026-07-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00639', 1, 1, 1, N'PRO213', 200, CAST(N'2027-12-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00640', 1, 1, 1, N'PRO214', 200, CAST(N'2026-08-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00641', 1, 1, 1, N'PRO214', 200, CAST(N'2027-10-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00642', 1, 1, 1, N'PRO214', 200, CAST(N'2026-09-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00643', 1, 1, 1, N'PRO215', 200, CAST(N'2026-11-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00644', 1, 1, 1, N'PRO215', 200, CAST(N'2027-05-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00645', 1, 1, 1, N'PRO215', 200, CAST(N'2027-10-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00646', 1, 1, 1, N'PRO216', 200, CAST(N'2026-10-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00647', 1, 1, 1, N'PRO216', 200, CAST(N'2027-07-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00648', 1, 1, 1, N'PRO216', 200, CAST(N'2026-09-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00649', 1, 1, 1, N'PRO217', 200, CAST(N'2028-05-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00650', 1, 1, 1, N'PRO217', 200, CAST(N'2027-05-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00651', 1, 1, 1, N'PRO217', 200, CAST(N'2026-06-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00652', 1, 1, 1, N'PRO218', 200, CAST(N'2026-08-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00653', 1, 1, 1, N'PRO218', 200, CAST(N'2026-12-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00654', 1, 1, 1, N'PRO218', 200, CAST(N'2028-09-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00655', 1, 1, 1, N'PRO219', 200, CAST(N'2028-10-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00656', 1, 1, 1, N'PRO219', 200, CAST(N'2028-08-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00657', 1, 1, 1, N'PRO219', 200, CAST(N'2026-11-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00658', 1, 1, 1, N'PRO220', 200, CAST(N'2026-11-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00659', 1, 1, 1, N'PRO220', 200, CAST(N'2026-11-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00660', 1, 1, 1, N'PRO220', 200, CAST(N'2027-10-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00661', 1, 1, 1, N'PRO221', 200, CAST(N'2028-10-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00662', 1, 1, 1, N'PRO221', 200, CAST(N'2026-09-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00663', 1, 1, 1, N'PRO221', 200, CAST(N'2026-08-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00664', 1, 1, 1, N'PRO222', 200, CAST(N'2028-12-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00665', 1, 1, 1, N'PRO222', 200, CAST(N'2027-06-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00666', 1, 1, 1, N'PRO222', 200, CAST(N'2028-10-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00667', 1, 1, 1, N'PRO223', 200, CAST(N'2028-11-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00668', 1, 1, 1, N'PRO223', 200, CAST(N'2028-07-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00669', 1, 1, 1, N'PRO223', 200, CAST(N'2026-06-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00670', 1, 1, 1, N'PRO224', 200, CAST(N'2026-07-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00671', 1, 1, 1, N'PRO224', 200, CAST(N'2026-11-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00672', 1, 1, 1, N'PRO224', 200, CAST(N'2027-07-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00673', 1, 1, 1, N'PRO225', 200, CAST(N'2028-12-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00674', 1, 1, 1, N'PRO225', 200, CAST(N'2026-11-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00675', 1, 1, 1, N'PRO225', 200, CAST(N'2028-11-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00676', 1, 1, 1, N'PRO226', 200, CAST(N'2028-12-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00677', 1, 1, 1, N'PRO226', 200, CAST(N'2026-07-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00678', 1, 1, 1, N'PRO226', 200, CAST(N'2027-08-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00679', 1, 1, 1, N'PRO227', 200, CAST(N'2027-09-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00680', 1, 1, 1, N'PRO227', 200, CAST(N'2027-12-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00681', 1, 1, 1, N'PRO227', 200, CAST(N'2027-06-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00682', 1, 1, 1, N'PRO228', 200, CAST(N'2028-06-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00683', 1, 1, 1, N'PRO228', 200, CAST(N'2026-07-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00684', 1, 1, 1, N'PRO228', 200, CAST(N'2027-12-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00685', 1, 1, 1, N'PRO229', 200, CAST(N'2027-10-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00686', 1, 1, 1, N'PRO229', 200, CAST(N'2026-12-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00687', 1, 1, 1, N'PRO229', 200, CAST(N'2026-07-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00688', 1, 1, 1, N'PRO230', 200, CAST(N'2028-10-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00689', 1, 1, 1, N'PRO230', 200, CAST(N'2027-05-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00690', 1, 1, 1, N'PRO230', 200, CAST(N'2028-07-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00691', 1, 1, 1, N'PRO231', 200, CAST(N'2026-10-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00692', 1, 1, 1, N'PRO231', 200, CAST(N'2026-11-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00693', 1, 1, 1, N'PRO231', 200, CAST(N'2027-09-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00694', 1, 1, 1, N'PRO232', 200, CAST(N'2027-11-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00695', 1, 1, 1, N'PRO232', 200, CAST(N'2026-07-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00696', 1, 1, 1, N'PRO232', 200, CAST(N'2028-07-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00697', 1, 1, 1, N'PRO233', 200, CAST(N'2027-11-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00698', 1, 1, 1, N'PRO233', 200, CAST(N'2026-08-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00699', 1, 1, 1, N'PRO233', 200, CAST(N'2028-11-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00700', 1, 1, 1, N'PRO234', 200, CAST(N'2028-07-29' AS Date))
GO
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00701', 1, 1, 1, N'PRO234', 200, CAST(N'2027-07-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00702', 1, 1, 1, N'PRO234', 200, CAST(N'2028-06-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00703', 1, 1, 1, N'PRO235', 200, CAST(N'2026-09-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00704', 1, 1, 1, N'PRO235', 200, CAST(N'2027-11-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00705', 1, 1, 1, N'PRO235', 200, CAST(N'2027-05-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00706', 1, 1, 1, N'PRO236', 200, CAST(N'2027-05-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00707', 1, 1, 1, N'PRO236', 200, CAST(N'2028-08-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00708', 1, 1, 1, N'PRO236', 200, CAST(N'2026-07-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00709', 1, 1, 1, N'PRO237', 200, CAST(N'2028-07-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00710', 1, 1, 1, N'PRO237', 200, CAST(N'2026-07-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00711', 1, 1, 1, N'PRO237', 200, CAST(N'2027-07-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00712', 1, 1, 1, N'PRO238', 200, CAST(N'2028-08-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00713', 1, 1, 1, N'PRO238', 200, CAST(N'2026-07-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00714', 1, 1, 1, N'PRO238', 200, CAST(N'2027-11-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00715', 1, 1, 1, N'PRO239', 200, CAST(N'2028-10-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00716', 1, 1, 1, N'PRO239', 200, CAST(N'2028-12-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00717', 1, 1, 1, N'PRO239', 200, CAST(N'2028-12-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00718', 1, 1, 1, N'PRO240', 200, CAST(N'2028-09-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00719', 1, 1, 1, N'PRO240', 200, CAST(N'2028-08-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00720', 1, 1, 1, N'PRO240', 200, CAST(N'2027-12-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00721', 1, 1, 1, N'PRO241', 200, CAST(N'2026-06-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00722', 1, 1, 1, N'PRO241', 200, CAST(N'2027-12-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00723', 1, 1, 1, N'PRO241', 200, CAST(N'2026-05-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00724', 1, 1, 1, N'PRO242', 200, CAST(N'2026-06-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00725', 1, 1, 1, N'PRO242', 200, CAST(N'2026-06-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00726', 1, 1, 1, N'PRO242', 200, CAST(N'2026-06-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00727', 1, 1, 1, N'PRO243', 200, CAST(N'2026-06-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00728', 1, 1, 1, N'PRO243', 200, CAST(N'2028-05-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00729', 1, 1, 1, N'PRO243', 200, CAST(N'2027-05-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00730', 1, 1, 1, N'PRO244', 200, CAST(N'2028-12-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00731', 1, 1, 1, N'PRO244', 200, CAST(N'2028-12-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00732', 1, 1, 1, N'PRO244', 200, CAST(N'2027-07-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00733', 1, 1, 1, N'PRO245', 200, CAST(N'2027-06-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00734', 1, 1, 1, N'PRO245', 200, CAST(N'2026-11-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00735', 1, 1, 1, N'PRO245', 200, CAST(N'2028-09-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00736', 1, 1, 1, N'PRO246', 200, CAST(N'2027-08-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00737', 1, 1, 1, N'PRO246', 200, CAST(N'2028-06-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00738', 1, 1, 1, N'PRO246', 200, CAST(N'2028-06-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00739', 1, 1, 1, N'PRO247', 200, CAST(N'2027-10-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00740', 1, 1, 1, N'PRO247', 200, CAST(N'2028-09-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00741', 1, 1, 1, N'PRO247', 200, CAST(N'2028-07-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00742', 1, 1, 1, N'PRO248', 200, CAST(N'2028-06-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00743', 1, 1, 1, N'PRO248', 200, CAST(N'2027-12-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00744', 1, 1, 1, N'PRO248', 200, CAST(N'2028-07-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00745', 1, 1, 1, N'PRO249', 200, CAST(N'2027-09-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00746', 1, 1, 1, N'PRO249', 200, CAST(N'2026-06-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00747', 1, 1, 1, N'PRO249', 200, CAST(N'2027-07-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00748', 1, 1, 1, N'PRO250', 200, CAST(N'2028-09-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00749', 1, 1, 1, N'PRO250', 200, CAST(N'2026-06-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00750', 1, 1, 1, N'PRO250', 200, CAST(N'2027-11-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00751', 1, 1, 1, N'PRO251', 200, CAST(N'2028-06-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00752', 1, 1, 1, N'PRO251', 200, CAST(N'2027-08-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00753', 1, 1, 1, N'PRO251', 200, CAST(N'2028-05-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00754', 1, 1, 1, N'PRO252', 200, CAST(N'2027-11-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00755', 1, 1, 1, N'PRO252', 200, CAST(N'2027-09-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00756', 1, 1, 1, N'PRO252', 200, CAST(N'2026-10-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00757', 1, 1, 1, N'PRO253', 200, CAST(N'2028-10-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00758', 1, 1, 1, N'PRO253', 200, CAST(N'2026-06-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00759', 1, 1, 1, N'PRO253', 200, CAST(N'2027-06-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00760', 1, 1, 1, N'PRO254', 200, CAST(N'2027-06-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00761', 1, 1, 1, N'PRO254', 200, CAST(N'2027-09-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00762', 1, 1, 1, N'PRO254', 200, CAST(N'2028-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00763', 1, 1, 1, N'PRO255', 200, CAST(N'2027-09-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00764', 1, 1, 1, N'PRO255', 200, CAST(N'2026-08-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00765', 1, 1, 1, N'PRO255', 200, CAST(N'2027-12-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00766', 1, 1, 1, N'PRO256', 200, CAST(N'2026-07-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00767', 1, 1, 1, N'PRO256', 200, CAST(N'2027-11-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00768', 1, 1, 1, N'PRO256', 200, CAST(N'2028-05-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00769', 1, 1, 1, N'PRO257', 200, CAST(N'2027-07-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00770', 1, 1, 1, N'PRO257', 200, CAST(N'2027-10-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00771', 1, 1, 1, N'PRO257', 200, CAST(N'2028-11-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00772', 1, 1, 1, N'PRO258', 200, CAST(N'2028-10-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00773', 1, 1, 1, N'PRO258', 200, CAST(N'2027-12-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00774', 1, 1, 1, N'PRO258', 200, CAST(N'2028-09-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00775', 1, 1, 1, N'PRO259', 200, CAST(N'2027-12-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00776', 1, 1, 1, N'PRO259', 200, CAST(N'2026-08-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00777', 1, 1, 1, N'PRO259', 200, CAST(N'2027-07-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00778', 1, 1, 1, N'PRO260', 200, CAST(N'2027-06-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00779', 1, 1, 1, N'PRO260', 200, CAST(N'2026-05-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00780', 1, 1, 1, N'PRO260', 200, CAST(N'2026-07-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00781', 1, 1, 1, N'PRO261', 200, CAST(N'2026-10-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00782', 1, 1, 1, N'PRO261', 200, CAST(N'2026-09-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00783', 1, 1, 1, N'PRO261', 200, CAST(N'2028-12-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00784', 1, 1, 1, N'PRO262', 200, CAST(N'2028-11-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00785', 1, 1, 1, N'PRO262', 200, CAST(N'2027-08-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00786', 1, 1, 1, N'PRO262', 200, CAST(N'2027-10-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00787', 1, 1, 1, N'PRO263', 200, CAST(N'2028-05-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00788', 1, 1, 1, N'PRO263', 200, CAST(N'2027-10-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00789', 1, 1, 1, N'PRO263', 200, CAST(N'2027-11-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00790', 1, 1, 1, N'PRO264', 200, CAST(N'2026-09-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00791', 1, 1, 1, N'PRO264', 200, CAST(N'2027-11-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00792', 1, 1, 1, N'PRO264', 200, CAST(N'2027-12-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00793', 1, 1, 1, N'PRO265', 200, CAST(N'2027-12-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00794', 1, 1, 1, N'PRO265', 200, CAST(N'2028-09-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00795', 1, 1, 1, N'PRO265', 200, CAST(N'2027-05-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00796', 1, 1, 1, N'PRO266', 200, CAST(N'2027-09-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00797', 1, 1, 1, N'PRO266', 200, CAST(N'2028-07-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00798', 1, 1, 1, N'PRO266', 200, CAST(N'2026-09-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00799', 1, 1, 1, N'PRO267', 200, CAST(N'2027-09-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00800', 1, 1, 1, N'PRO267', 200, CAST(N'2028-07-19' AS Date))
GO
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00801', 1, 1, 1, N'PRO267', 200, CAST(N'2026-08-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00802', 1, 1, 1, N'PRO268', 200, CAST(N'2027-10-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00803', 1, 1, 1, N'PRO268', 200, CAST(N'2028-07-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00804', 1, 1, 1, N'PRO268', 200, CAST(N'2028-12-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00805', 1, 1, 1, N'PRO269', 200, CAST(N'2027-05-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00806', 1, 1, 1, N'PRO269', 200, CAST(N'2026-11-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00807', 1, 1, 1, N'PRO269', 200, CAST(N'2026-11-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00808', 1, 1, 1, N'PRO270', 200, CAST(N'2027-12-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00809', 1, 1, 1, N'PRO270', 200, CAST(N'2026-11-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00810', 1, 1, 1, N'PRO270', 200, CAST(N'2027-12-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00811', 1, 1, 1, N'PRO271', 200, CAST(N'2027-08-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00812', 1, 1, 1, N'PRO271', 200, CAST(N'2027-12-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00813', 1, 1, 1, N'PRO271', 200, CAST(N'2026-09-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00814', 1, 1, 1, N'PRO272', 200, CAST(N'2028-11-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00815', 1, 1, 1, N'PRO272', 200, CAST(N'2028-06-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00816', 1, 1, 1, N'PRO272', 200, CAST(N'2027-07-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00817', 1, 1, 1, N'PRO273', 200, CAST(N'2027-09-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00818', 1, 1, 1, N'PRO273', 200, CAST(N'2026-06-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00819', 1, 1, 1, N'PRO273', 200, CAST(N'2028-06-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00820', 1, 1, 1, N'PRO274', 200, CAST(N'2028-07-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00821', 1, 1, 1, N'PRO274', 200, CAST(N'2028-05-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00822', 1, 1, 1, N'PRO274', 200, CAST(N'2027-08-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00823', 1, 1, 1, N'PRO275', 200, CAST(N'2027-11-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00824', 1, 1, 1, N'PRO275', 200, CAST(N'2028-08-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00825', 1, 1, 1, N'PRO275', 200, CAST(N'2026-06-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00826', 1, 1, 1, N'PRO276', 200, CAST(N'2027-10-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00827', 1, 1, 1, N'PRO276', 200, CAST(N'2027-05-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00828', 1, 1, 1, N'PRO276', 200, CAST(N'2026-05-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00829', 1, 1, 1, N'PRO277', 200, CAST(N'2027-11-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00830', 1, 1, 1, N'PRO277', 200, CAST(N'2027-08-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00831', 1, 1, 1, N'PRO277', 200, CAST(N'2028-09-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00832', 1, 1, 1, N'PRO278', 200, CAST(N'2028-10-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00833', 1, 1, 1, N'PRO278', 200, CAST(N'2028-05-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00834', 1, 1, 1, N'PRO278', 200, CAST(N'2027-12-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00835', 1, 1, 1, N'PRO279', 200, CAST(N'2028-11-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00836', 1, 1, 1, N'PRO279', 200, CAST(N'2028-11-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00837', 1, 1, 1, N'PRO279', 200, CAST(N'2028-07-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00838', 1, 1, 1, N'PRO280', 200, CAST(N'2028-11-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00839', 1, 1, 1, N'PRO280', 200, CAST(N'2028-12-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00840', 1, 1, 1, N'PRO280', 200, CAST(N'2027-08-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00841', 1, 1, 1, N'PRO281', 200, CAST(N'2028-10-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00842', 1, 1, 1, N'PRO281', 200, CAST(N'2027-11-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00843', 1, 1, 1, N'PRO281', 200, CAST(N'2026-08-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00844', 1, 1, 1, N'PRO282', 200, CAST(N'2027-06-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00845', 1, 1, 1, N'PRO282', 200, CAST(N'2027-05-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00846', 1, 1, 1, N'PRO282', 200, CAST(N'2027-09-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00847', 1, 1, 1, N'PRO283', 200, CAST(N'2027-12-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00848', 1, 1, 1, N'PRO283', 200, CAST(N'2027-09-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00849', 1, 1, 1, N'PRO283', 200, CAST(N'2026-06-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00850', 1, 1, 1, N'PRO284', 200, CAST(N'2027-12-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00851', 1, 1, 1, N'PRO284', 200, CAST(N'2026-10-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00852', 1, 1, 1, N'PRO284', 200, CAST(N'2027-09-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00853', 1, 1, 1, N'PRO285', 200, CAST(N'2027-05-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00854', 1, 1, 1, N'PRO285', 200, CAST(N'2027-11-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00855', 1, 1, 1, N'PRO285', 200, CAST(N'2028-07-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00856', 1, 1, 1, N'PRO286', 200, CAST(N'2027-07-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00857', 1, 1, 1, N'PRO286', 200, CAST(N'2028-08-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00858', 1, 1, 1, N'PRO286', 200, CAST(N'2027-08-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00859', 1, 1, 1, N'PRO287', 200, CAST(N'2028-06-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00860', 1, 1, 1, N'PRO287', 200, CAST(N'2027-05-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00861', 1, 1, 1, N'PRO287', 200, CAST(N'2028-06-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00862', 1, 1, 1, N'PRO288', 200, CAST(N'2026-08-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00863', 1, 1, 1, N'PRO288', 200, CAST(N'2027-08-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00864', 1, 1, 1, N'PRO288', 200, CAST(N'2028-12-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00865', 1, 1, 1, N'PRO289', 200, CAST(N'2028-07-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00866', 1, 1, 1, N'PRO289', 200, CAST(N'2028-07-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00867', 1, 1, 1, N'PRO289', 200, CAST(N'2027-06-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00868', 1, 1, 1, N'PRO290', 200, CAST(N'2027-09-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00869', 1, 1, 1, N'PRO290', 200, CAST(N'2026-12-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00870', 1, 1, 1, N'PRO290', 200, CAST(N'2028-05-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00871', 1, 1, 1, N'PRO291', 200, CAST(N'2027-09-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00872', 1, 1, 1, N'PRO291', 200, CAST(N'2028-09-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00873', 1, 1, 1, N'PRO291', 200, CAST(N'2028-12-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00874', 1, 1, 1, N'PRO292', 200, CAST(N'2028-11-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00875', 1, 1, 1, N'PRO292', 200, CAST(N'2026-07-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00876', 1, 1, 1, N'PRO292', 200, CAST(N'2027-09-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00877', 1, 1, 1, N'PRO293', 200, CAST(N'2026-05-08' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00878', 1, 1, 1, N'PRO293', 200, CAST(N'2027-08-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00879', 1, 1, 1, N'PRO293', 200, CAST(N'2027-05-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00880', 1, 1, 1, N'PRO294', 200, CAST(N'2028-06-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00881', 1, 1, 1, N'PRO294', 200, CAST(N'2028-09-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00882', 1, 1, 1, N'PRO294', 200, CAST(N'2026-10-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00883', 1, 1, 1, N'PRO295', 200, CAST(N'2026-07-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00884', 1, 1, 1, N'PRO295', 200, CAST(N'2027-10-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00885', 1, 1, 1, N'PRO295', 200, CAST(N'2026-06-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00886', 1, 1, 1, N'PRO296', 200, CAST(N'2027-11-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00887', 1, 1, 1, N'PRO296', 200, CAST(N'2027-06-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00888', 1, 1, 1, N'PRO296', 200, CAST(N'2027-09-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00889', 1, 1, 1, N'PRO297', 200, CAST(N'2026-07-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00890', 1, 1, 1, N'PRO297', 200, CAST(N'2027-07-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00891', 1, 1, 1, N'PRO297', 200, CAST(N'2028-09-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00892', 1, 1, 1, N'PRO298', 200, CAST(N'2027-09-29' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00893', 1, 1, 1, N'PRO298', 200, CAST(N'2027-10-02' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00894', 1, 1, 1, N'PRO298', 200, CAST(N'2028-07-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00895', 1, 1, 1, N'PRO299', 200, CAST(N'2027-08-04' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00896', 1, 1, 1, N'PRO299', 200, CAST(N'2026-11-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00897', 1, 1, 1, N'PRO299', 200, CAST(N'2027-07-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00898', 1, 1, 1, N'PRO300', 200, CAST(N'2028-07-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00899', 1, 1, 1, N'PRO300', 200, CAST(N'2026-08-06' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00900', 1, 1, 1, N'PRO300', 200, CAST(N'2028-09-06' AS Date))
GO
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00901', 1, 1, 1, N'PRO301', 200, CAST(N'2026-09-15' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00902', 1, 1, 1, N'PRO301', 200, CAST(N'2028-09-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00903', 1, 1, 1, N'PRO301', 200, CAST(N'2027-07-09' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00904', 1, 1, 1, N'PRO302', 200, CAST(N'2028-08-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00905', 1, 1, 1, N'PRO302', 200, CAST(N'2026-12-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00906', 1, 1, 1, N'PRO302', 200, CAST(N'2027-10-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00907', 1, 1, 1, N'PRO303', 200, CAST(N'2028-10-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00908', 1, 1, 1, N'PRO303', 200, CAST(N'2027-07-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00909', 1, 1, 1, N'PRO303', 200, CAST(N'2026-09-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00910', 1, 1, 1, N'PRO304', 200, CAST(N'2026-10-10' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00911', 1, 1, 1, N'PRO304', 200, CAST(N'2028-07-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00912', 1, 1, 1, N'PRO304', 200, CAST(N'2026-10-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00913', 1, 1, 1, N'PRO305', 200, CAST(N'2026-09-12' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00914', 1, 1, 1, N'PRO305', 200, CAST(N'2026-06-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00915', 1, 1, 1, N'PRO305', 200, CAST(N'2027-12-22' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00916', 1, 1, 1, N'PRO306', 200, CAST(N'2026-08-19' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00917', 1, 1, 1, N'PRO306', 200, CAST(N'2026-06-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00918', 1, 1, 1, N'PRO306', 200, CAST(N'2026-07-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00919', 1, 1, 1, N'PRO307', 200, CAST(N'2028-06-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00920', 1, 1, 1, N'PRO307', 200, CAST(N'2027-09-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00921', 1, 1, 1, N'PRO307', 200, CAST(N'2028-12-03' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00922', 1, 1, 1, N'PRO308', 200, CAST(N'2028-10-18' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00923', 1, 1, 1, N'PRO308', 200, CAST(N'2027-10-17' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00924', 1, 1, 1, N'PRO308', 200, CAST(N'2028-07-23' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00925', 1, 1, 1, N'PRO309', 200, CAST(N'2027-09-27' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00926', 1, 1, 1, N'PRO309', 200, CAST(N'2028-09-16' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00927', 1, 1, 1, N'PRO309', 200, CAST(N'2028-12-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00928', 1, 1, 1, N'PRO310', 200, CAST(N'2026-05-05' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00929', 1, 1, 1, N'PRO310', 200, CAST(N'2027-12-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00930', 1, 1, 1, N'PRO310', 200, CAST(N'2026-06-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00931', 1, 1, 1, N'PRO311', 200, CAST(N'2027-07-30' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00932', 1, 1, 1, N'PRO311', 200, CAST(N'2026-12-28' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00933', 1, 1, 1, N'PRO311', 200, CAST(N'2027-05-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00934', 1, 1, 1, N'PRO312', 200, CAST(N'2027-06-07' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00935', 1, 1, 1, N'PRO312', 200, CAST(N'2027-07-26' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00936', 1, 1, 1, N'PRO312', 200, CAST(N'2028-12-01' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00937', 1, 1, 1, N'PRO313', 200, CAST(N'2027-07-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00938', 1, 1, 1, N'PRO313', 200, CAST(N'2026-06-20' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00939', 1, 1, 1, N'PRO313', 200, CAST(N'2028-08-14' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00940', 1, 1, 1, N'PRO314', 200, CAST(N'2026-05-25' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00941', 1, 1, 1, N'PRO314', 200, CAST(N'2027-11-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00942', 1, 1, 1, N'PRO314', 200, CAST(N'2028-05-13' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00943', 1, 1, 1, N'PRO315', 200, CAST(N'2024-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00944', 1, 1, 1, N'PRO001', 200, CAST(N'2002-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00945', 1, 1, 1, N'PRO315', 200, CAST(N'2300-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00946', 1, 1, 1, N'PRO315', 200, CAST(N'2400-11-21' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00947', 1, 1, 1, N'PRO316', 200, CAST(N'2300-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00948', 1, 1, 1, N'PRO316', 200, CAST(N'2500-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00949', 1, 1, 1, N'PRO317', 200, CAST(N'2500-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00950', 1, 1, 1, N'PRO318', 200, CAST(N'2000-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00951', 1, 1, 1, N'PRO319', 200, CAST(N'5555-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00952', 1, 1, 1, N'PRO320', 200, CAST(N'5555-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00953', 1, 1, 1, N'PRO320', 200, CAST(N'2025-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00954', 1, 1, 1, N'PRO321', 200, CAST(N'2024-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00955', 1, 1, 1, N'PRO321', 200, CAST(N'2024-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00956', 1, 1, 1, N'PRO003', 200, CAST(N'2024-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00957', 1, 1, 1, N'PRO095', 200, CAST(N'2024-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00958', 1, 1, 1, N'PRO322', 200, CAST(N'2024-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00959', 1, 1, 1, N'PRO322', 200, CAST(N'2024-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00960', 1, 1, 1, N'PRO323', 200, CAST(N'2024-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00961', 1, 1, 1, N'PRO046', 200, CAST(N'2025-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00962', 1, 1, 1, N'PRO042', 200, CAST(N'2025-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00963', 1, 1, 1, N'PRO027', 200, CAST(N'2026-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00964', 1, 1, 1, N'PRO324', 200, CAST(N'2025-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00965', 1, 1, 1, N'PRO325', 200, CAST(N'2026-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00966', 1, 1, 1, N'PRO292', 200, CAST(N'2026-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00967', 1, 1, 1, N'PRO326', 200, CAST(N'2026-12-11' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00968', 1, 1, 1, N'PRO327', 200, CAST(N'2026-12-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00969', 1, 1, 1, N'PRO327', 200, CAST(N'2026-12-24' AS Date))
INSERT [dbo].[lotes] ([idLote], [idEstadoOperativo], [idEstadoDisponibilidad], [idEstadoSeguridad], [idProducto], [stock], [fechaVencimiento]) VALUES (N'L00970', NULL, NULL, NULL, N'PRO060', 200, CAST(N'2027-12-11' AS Date))
GO
INSERT [dbo].[metodos_pago] ([idMetodoPago], [metodo]) VALUES (1, N'Efectivo')
INSERT [dbo].[metodos_pago] ([idMetodoPago], [metodo]) VALUES (2, N'BBVA')
INSERT [dbo].[metodos_pago] ([idMetodoPago], [metodo]) VALUES (3, N'ScotiaBank')
INSERT [dbo].[metodos_pago] ([idMetodoPago], [metodo]) VALUES (4, N'BCP')
INSERT [dbo].[metodos_pago] ([idMetodoPago], [metodo]) VALUES (5, N'PayPal')
GO
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-001', N'SC-001', N'P_7745', CAST(N'2024-05-05' AS Date))
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-002', N'SC-002', N'P_5890', CAST(N'2024-05-05' AS Date))
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-003', N'SC-003', N'P_9580', CAST(N'2024-05-06' AS Date))
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-004', N'SC-003', N'P_9580', CAST(N'2024-07-15' AS Date))
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-005', N'SC-003', N'P_9580', CAST(N'2024-07-15' AS Date))
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-006', N'SC-003', N'P_9580', CAST(N'2024-07-16' AS Date))
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-007', N'SC-006', N'P_2072', CAST(N'2024-07-16' AS Date))
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-008', N'SC-005', N'P_3370', CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-009', N'SC-008', N'P_9385', CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-010', N'SC-008', N'P_9385', CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-011', N'SC-009', N'P_1480', CAST(N'2024-09-06' AS Date))
INSERT [dbo].[ordenes_compra] ([id_orden_compra], [id_solicitud_cotizacion], [id_proveedor], [fecha_emision]) VALUES (N'OC-012', N'SC-010', N'P_1480', CAST(N'2024-09-06' AS Date))
GO
INSERT [dbo].[pedidos] ([idPedido], [idCotizacion], [idCliente], [idMetodoPago], [idEstadoEnvio], [idEmpleado], [fechaEntrega], [fechaEmision]) VALUES (N'PE-001', N'CV-001', N'C86646', 3, 3, N'EMP006', CAST(N'2024-04-15' AS Date), CAST(N'2024-04-26' AS Date))
INSERT [dbo].[pedidos] ([idPedido], [idCotizacion], [idCliente], [idMetodoPago], [idEstadoEnvio], [idEmpleado], [fechaEntrega], [fechaEmision]) VALUES (N'PE-002', N'CV-002', N'C12337', 2, 3, N'EMP006', CAST(N'2024-04-18' AS Date), CAST(N'2024-05-29' AS Date))
INSERT [dbo].[pedidos] ([idPedido], [idCotizacion], [idCliente], [idMetodoPago], [idEstadoEnvio], [idEmpleado], [fechaEntrega], [fechaEmision]) VALUES (N'PE-003', N'CV-004', N'C69188', 4, 3, N'EMP003', CAST(N'2024-04-20' AS Date), CAST(N'2024-05-02' AS Date))
INSERT [dbo].[pedidos] ([idPedido], [idCotizacion], [idCliente], [idMetodoPago], [idEstadoEnvio], [idEmpleado], [fechaEntrega], [fechaEmision]) VALUES (N'PE-004', N'CV-012', N'C04807', 3, 4, N'EMP003', CAST(N'2024-07-24' AS Date), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[pedidos] ([idPedido], [idCotizacion], [idCliente], [idMetodoPago], [idEstadoEnvio], [idEmpleado], [fechaEntrega], [fechaEmision]) VALUES (N'PE-005', N'CV-012', N'C04807', 2, 4, N'EMP003', CAST(N'2024-07-17' AS Date), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[pedidos] ([idPedido], [idCotizacion], [idCliente], [idMetodoPago], [idEstadoEnvio], [idEmpleado], [fechaEntrega], [fechaEmision]) VALUES (N'PE-006', N'CV-012', N'C04807', 4, 3, N'EMP003', CAST(N'2024-07-18' AS Date), CAST(N'2024-07-17' AS Date))
GO
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO001', N'CT001', N'F001', N'ALM001', N'Alprazolam', 5, N'0.25mg', N'Blister por 10 tabletas', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO002', N'CT001', N'F001', N'ALM001', N'Alprazolam', 5, N'0.5mg', N'Blister por 10 tabletas', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO003', N'CT001', N'F001', N'ALM001', N'Clonazepam', 5, N'0.5mg', N'Blister por 10 tabletas', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO004', N'CT001', N'F002', N'ALM001', N'Clonazepam', 12, N'2.5mg/mL', N'Frasco por 30mL', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO005', N'CT001', N'F001', N'ALM001', N'Clonazepam', 5, N'2mg', N'Blister por 10 tabletas', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO006', N'CT002', N'F001', N'ALM001', N'Clozapina', 5, N'100mg', N'Blister por 10 tabletas', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO007', N'CT002', N'F001', N'ALM001', N'Clozapina', 5, N'25mg', N'Blister por 10 tabletas', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO008', N'CT001', N'F001', N'ALM001', N'Diazepam', 5, N'10mg', N'Blister por 10 tabletas', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO009', N'CT001', N'F003', N'ALM001', N'Diazepam', 15, N'10mg/2mL', N'Ampolla por 2mL', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO010', N'CT003', N'F001', N'ALM001', N'Fenobarbital', 5, N'100mg', N'Blister por 10 tabletas', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO011', N'CT003', N'F004', N'ALM001', N'Fenobarbital', 17, N'0.04', N'Frasoc por 120mL', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO012', N'CT004', N'F003', N'ALM001', N'Fentanilo', 15, N'0.5mg/10mL', N'Ampolla por 10mL', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO013', N'CT005', N'F003', N'ALM001', N'Ketamina', 15, N'0.05', N'Vial por 10mL', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO014', N'CT001', N'F001', N'ALM001', N'Lorazepam', 5, N'2mg', N'Blister por 10 tabletas', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO015', N'CT004', N'F003', N'ALM001', N'Meperidina', 15, N'100mg/2mL', N'Ampolla por 2mL', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO016', N'CT006', N'F001', N'ALM001', N'Metilfenidato', 5, N'10mg', N'Blister por 15 tabletas', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO017', N'CT007', N'F003', N'ALM001', N'Metilergometrina Maleato', 15, N'0.2mg/mL', N'Ampolla por 1mL', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO018', N'CT001', N'F003', N'ALM001', N'Midazolam', 15, N'5mg/5mL', N'Ampolla por 5 mL', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO019', N'CT004', N'F003', N'ALM001', N'Morfina Clorhidrato', 15, N'10mg/mL', N'Ampolla por 1mL', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO020', N'CT004', N'F002', N'ALM001', N'Morfina Clorhidrato', 12, N'30mg/mL', N'Frasco por 30mL', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO021', N'CT007', N'F003', N'ALM001', N'Oxitocina', 15, N'10UI', N'Ampolla por 1mL', N'Medicamento de Control Especial')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO022', N'CT008', N'F003', N'ALM001', N'Inmunoglobulina Anti Rh', 15, N'250ug', N'Vial por 2mL', N'Medicamento que debe conservar cad')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO023', N'CT009', N'F005', N'ALM001', N'Insulina Cristalina', 20, N'100UI/mL', N'Vial por 10mL', N'Medicamento que debe conservar cad')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO024', N'CT009', N'F005', N'ALM001', N'Insulina NPH', 20, N'100UI/mL', N'Vial por 10mL', N'Medicamento que debe conservar cad')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO025', N'CT010', N'F005', N'ALM001', N'Toxoide Tetanico', 20, N'40UI', N'Vial por 0.5mL', N'Medicamento que debe conservar cad')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO026', N'CT011', N'F003', N'ALM001', N'Succinil Colina', 15, N'100mg/mL', N'Vial por 10mL', N'Medicamento que debe conservar cad')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO027', N'CT012', N'F002', N'ALM001', N'Acetaminofen', 12, N'100 mg/mL', N'Frasco por 30mL', N'hola')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO028', N'CT012', N'F001', N'ALM001', N'Acetaminofen', 5, N'500mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO029', N'CT012', N'F006', N'ALM001', N'Acetaminofen', 28, N'30 mg/mL', N'Frasco por 60mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO030', N'CT013', N'F001', N'ALM001', N'Acetazolamida', 5, N'250mg', N'Blister por 10 tabletas', N'Uso Exclusivo del Servicio de Urgenci')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO031', N'CT014', N'F007', N'ALM001', N'Aciclovir', 18, N'100mg/5mL', N'Frasco por 90mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO032', N'CT014', N'F001', N'ALM001', N'Aciclovir', 5, N'200mg', N'Blister por 8 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO033', N'CT014', N'F008', N'ALM001', N'Aciclovir', 20, N'0.03', N'Tubo por 10g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO034', N'CT014', N'F009', N'ALM001', N'Aciclovir', 21, N'0.05', N'Tubo por 10g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO035', N'CT004', N'F001', N'ALM001', N'Acido Acetil Salicilico', 5, N'100mg', N'Blister por 30 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO036', N'CT015', N'F001', N'ALM001', N'Acido Folico', 5, N'1mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO037', N'CT016', N'F010', N'ALM001', N'Acido Retinoico', 19, N'0.0005', N'Frasco por 60mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO038', N'CT016', N'F011', N'ALM001', N'Acido Retinoico', 31, N'0.0005', N'Pote por 30g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO039', N'CT017', N'F012', N'ALM001', N'Acido Valproico', 10, N'250mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO040', N'CT017', N'F006', N'ALM001', N'Acido Valproico', 28, N'0.05', N'Frasco por 120mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO041', N'CT018', N'F003', N'ALM001', N'Adenosina', 15, N'6mg/2mL', N'Ampolla por 2mL', N'Uso Exclusivo del Servicio de Urgenci')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO042', N'CT019', N'F003', N'ALM001', N'Adrenalina-Epinefrina', 15, N'Amiodarona', N'Ampolla por 1mL', N'Holi')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO043', N'CT020', N'F003', N'ALM001', N'Agua Esteril USP', 15, NULL, N'Ampolla por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO044', N'CT021', N'F007', N'ALM001', N'Albendazol', 18, N'0.02', N'Sachet por 20mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO045', N'CT021', N'F001', N'ALM001', N'Albendazol', 5, N'200mg', N'Blister por 2 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO046', N'CT022', N'F001', N'ALM001', N'Alfa Metil Dopa', 5, N'250mg', N'Blister por 10 tabletas', N'Hola que tal')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO047', N'CT023', N'F001', N'ALM001', N'Alopurinol', 5, N'100mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO048', N'CT023', N'F001', N'ALM001', N'Alopurinol', 5, N'300mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO049', N'CT024', N'F013', N'ALM001', N'Amantadina HCl', 10, N'100mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO050', N'CT025', N'F003', N'ALM001', N'Amikacina', 15, N'100 mg/2mL', N'Ampolla por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO051', N'CT025', N'F003', N'ALM001', N'Amikacina', 15, N'500mg/2mL', N'Ampolla por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO052', N'CT026', N'F003', N'ALM001', N'Aminofilina', 15, N'240mg/10m', N'Ampolla por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO053', N'CT018', N'F003', N'ALM001', N'Amiodarona', 15, N'150mg/3mL', N'Ampolla por 3mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO054', N'CT018', N'F001', N'ALM001', N'Amiodarona', 5, N'200mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO055', N'CT027', N'F001', N'ALM001', N'Amitriptilina', 5, N'25mg', N'Blister por 30 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO056', N'CT022', N'F001', N'ALM001', N'Amlodipino', 5, N'5mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO057', N'CT025', N'F013', N'ALM001', N'Amoxicilina', 10, N'500mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO058', N'CT025', N'F007', N'ALM001', N'Amoxicilina', 18, N'250mg/5mL', N'Frasco por 100mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO059', N'CT025', N'F003', N'ALM001', N'Ampicilina', 15, N'1g', N'Vial por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO060', N'CT025', N'F003', N'ALM001', N'Ampicilina', 15, N'500mg', N'Vial por 6mL', N'Una descripcion')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO061', N'CT025', N'F013', N'ALM001', N'Ampicilina', 10, N'500mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO062', N'CT025', N'F007', N'ALM001', N'Ampicilina', 18, N'250mg/5mL', N'Frasco por 60mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO063', N'CT025', N'F003', N'ALM001', N'Ampicilina+Sulbactam', 15, N'1g+0.5g', N'Vial por 4mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO064', N'CT028', N'F003', N'ALM001', N'Atropina Sulfato', 15, N'1mg/mL', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO065', N'CT025', N'F001', N'ALM001', N'Azitromicina', 5, N'500mg', N'Blister por 3 tabletas', N'tratamiento de Neumonia. Resolucion 5521 de 2013. Y el kit de Abuso')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO066', N'CT025', N'F007', N'ALM001', N'Azitromicina', 18, N'40mg/mL', N'Frasco por 15mL', N'tratamiento de Neumonia. Resolucion 5521 de 2013. Y el kit de Abuso')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO067', N'CT029', N'F014', N'ALM001', N'Beclometasona', 8, N'250mcg/dos', N'Frasco por 200 dosis', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO068', N'CT029', N'F014', N'ALM001', N'Beclometasona', 8, N'50mcg/dosis', N'Frasco por 200 dosis', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO069', N'CT030', N'F015', N'ALM001', N'Beclometasona', 15, N'50mcg/dosis', N'Frasco por 200 dosis', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO070', N'CT021', N'F010', N'ALM001', N'Bencilo Benzoato', 19, N'0.3', N'Frasco por 120 mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO071', N'CT030', N'F011', N'ALM001', N'Betametasona', 31, N'0.0005', N'Tubo por 40g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO072', N'CT030', N'F003', N'ALM001', N'Betametasona Fosfato D', 15, N'4mg/mL', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO073', N'CT030', N'F005', N'ALM001', N'Betametasona Fosfato/A', 20, N'3mg+3mg', N'Vial por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO074', N'CT024', N'F001', N'ALM001', N'Biperideno', 5, N'2mg', N'Blister por 25 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO075', N'CT024', N'F003', N'ALM001', N'Biperideno Lactato', 15, N'5mg/mL', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO076', N'CT031', N'F001', N'ALM001', N'Bisacodilo', 5, N'5mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO077', N'CT032', N'F001', N'ALM001', N'Calcio Carbonato', 5, N'600mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO078', N'CT032', N'F001', N'ALM001', N'Calcio Carbonato+Vitami', 5, N'600mg+200', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO079', N'CT033', N'F003', N'ALM001', N'Calcio Gluconato', 15, N'0.1', N'Ampolla por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO080', N'CT015', N'F012', N'ALM001', N'Calcitriol', 10, N'0.25mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO081', N'CT022', N'F001', N'ALM001', N'Captopril', 5, N'25mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO082', N'CT022', N'F001', N'ALM001', N'Captopril', 5, N'50mg', N'Blister por 20 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO083', N'CT034', N'F001', N'ALM001', N'Carbamazepina', 5, N'200mg', N'Blister por 20 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO084', N'CT034', N'F007', N'ALM001', N'Carbamazepina', 18, N'100mg/5mL', N'Frasco por 120 mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO085', N'CT024', N'F001', N'ALM001', N'Carbidopa-Levodopa', 5, N'250mg+25m', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO086', N'CT035', N'F016', N'ALM001', N'Carbon Activado', 14, N'1', N'Bolsa por 500g', N'desintoxicacion en el servicio de Urgencias')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO087', N'CT025', N'F013', N'ALM001', N'Cefalexina', 10, N'500mg', N'Blister por 8 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO088', N'CT025', N'F007', N'ALM001', N'Cefalexina', 18, N'250mg/5mL', N'Frasco por 60mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO089', N'CT025', N'F003', N'ALM001', N'Cefalotina', 15, N'1g', N'Vial por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO090', N'CT025', N'F013', N'ALM001', N'Cefradina', 10, N'500mg', N'Blister por 8 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO091', N'CT025', N'F003', N'ALM001', N'Ceftriaxona', 15, N'1g', N'Vial por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO092', N'CT025', N'F003', N'ALM001', N'Ceftriaxona', 15, N'500mg', N'Vial por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO093', N'CT015', N'F003', N'ALM001', N'Cianocobalamina (Vitami', 15, N'1mg/mL', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO094', N'CT025', N'F003', N'ALM001', N'Ciprofloxacina', 15, N'100mg/10m', N'Vial por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO095', N'CT025', N'F001', N'ALM001', N'Ciprofloxacina', 5, N'500mg', N'Blister por 10 tabletas', N'Dsdasd')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO096', N'CT036', N'F003', N'ALM001', N'Clemastina', 15, N'2mg/mL', N'Ampolla por 2mL', N'Uso exclusivo del Servicio de Urgencia')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO097', N'CT022', N'F001', N'ALM001', N'Clonidina', 5, N'0.150mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO098', N'CT037', N'F001', N'ALM001', N'Clopidogrel', 5, N'75mg', N'Blister por 14 tabletas', N'Uso exclusivo del Servicio de urgencias y cubierto para enfermedad coronaria en terapia combinada con ASA. Resolucion 5521 de 2013')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO099', N'CT036', N'F006', N'ALM001', N'Clorfeniramina', 28, N'2mg/5mL', N'Frasco por 120 mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO100', N'CT036', N'F001', N'ALM001', N'Clorfeniramina', 5, N'4mg', N'Blister por 20 tabletas', NULL)
GO
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO101', N'CT038', N'F001', N'ALM001', N'Cloroquina Fosfato', 5, N'250mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO102', N'CT039', N'F017', N'ALM001', N'Clotrimazol', 16, N'0.01', N'Frasco por 30mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO103', N'CT039', N'F011', N'ALM001', N'Clotrimazol', 31, N'0.01', N'Tubo por 40g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO104', N'CT039', N'F018', N'ALM001', N'Clotrimazol', 16, N'0.01', N'Tubo por 40g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO105', N'CT039', N'F019', N'ALM001', N'Clotrimazol', 12, N'100mg', N'Blister por 3 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO106', N'CT023', N'F001', N'ALM001', N'Colchicina', 5, N'0.5mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO107', N'CT040', N'F016', N'ALM001', N'Colestiramina', 14, N'Cada sobre contiene 4g', N'Sobre por 9g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO108', N'CT041', N'F020', N'ALM001', N'Colistina+Neomicina+Hid', 16, N'1.538mg+5m', N'Frasco por 15mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO109', N'CT042', N'F021', N'ALM001', N'Cromoglicato de Sodio', 9, N'0.02', N'Frasco por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO110', N'CT042', N'F022', N'ALM001', N'Cromoglicato de Sodio', 9, N'0.02', N'Frasco por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO111', N'CT042', N'F021', N'ALM001', N'Cromoglicato de Sodio', 9, N'0.04', N'Frasco por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO112', N'CT042', N'F022', N'ALM001', N'Cromoglicato de Sodio', 9, N'0.04', N'Frasco por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO113', N'CT043', N'F010', N'ALM001', N'Crotamiton', 19, N'0.1', N'Frasco por 60mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO114', N'CT065', N'F003', N'ALM001', N'Dexametason', 15, N'4mg/mL', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO115', N'CT030', N'F022', N'ALM001', N'Dexametasona-Neomicin', 9, N'0.05mg-0.17', N'Frasco por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO116', N'CT044', N'F003', N'ALM001', N'Dextrosa', 15, N'0.1', N'Bolsa por 500mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO117', N'CT045', N'F003', N'ALM001', N'Dextrosa', 15, N'0.05', N'Bolsa por 100mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO118', N'CT045', N'F003', N'ALM001', N'Dextrosa', 15, N'0.05', N'Bolsa por 500mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO119', N'CT004', N'F001', N'ALM001', N'Diclofenac', 5, N'50mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO120', N'CT004', N'F003', N'ALM001', N'Diclofenac Sodico', 15, N'75mg/3mL', N'Ampolla por 3mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO121', N'CT025', N'F007', N'ALM001', N'Dicloxacilina', 18, N'250mg/5mL', N'Frasco por 80mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO122', N'CT025', N'F013', N'ALM001', N'Dicloxacilina', 10, N'500mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO123', N'CT036', N'F003', N'ALM001', N'Difenhidramina', 15, N'10 mg/mL', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO124', N'CT036', N'F006', N'ALM001', N'Difenhidramina', 28, N'12.5mg/5mL', N'Frasco por 120mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO125', N'CT036', N'F013', N'ALM001', N'Difenhidramina', 10, N'50mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO126', N'CT046', N'F002', N'ALM001', N'Digoxina BetaMetil', 12, N'0.6mg/mL', N'Frasco por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO127', N'CT046', N'F003', N'ALM001', N'Digoxina BetaMetil', 15, N'0.2mg/2mL', N'Ampolla por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO128', N'CT047', N'F006', N'ALM001', N'Dihidrocodeina', 28, N'12.1mg/5mL', N'Frasco por 120mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO129', N'CT048', N'F001', N'ALM001', N'Dimenhidrinato', 5, N'50mg', N'Blister por 6 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO130', N'CT012', N'F003', N'ALM001', N'Dipirona Magnesica', 15, N'2g/5mL', N'Ampolla por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO131', N'CT012', N'F003', N'ALM001', N'Dipirona Sodica', 15, N'1g/2mL', N'Ampolla por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO132', N'CT049', N'F003', N'ALM001', N'Dopamina', 15, N'200mg/5mL', N'Ampolla por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO133', N'CT025', N'F001', N'ALM001', N'Doxiciclina', 5, N'100mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO134', N'CT050', N'F001', N'ALM001', N'Efavirenz', 5, N'600 mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO135', N'CT022', N'F001', N'ALM001', N'Enalapril', 5, N'20mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO136', N'CT022', N'F001', N'ALM001', N'Enalapril', 5, N'5mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO137', N'CT051', N'F003', N'ALM001', N'Enantato+Estradiol', 15, N'50mg+5mg', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO138', N'CT058', N'F001', N'ALM001', N'Ergotamina+Cafeina', 5, N'1mg-100mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO139', N'CT025', N'F007', N'ALM001', N'Eritromicina', 18, N'250mg/5ml', N'Frasco por 60mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO140', N'CT025', N'F001', N'ALM001', N'Eritromicina', 5, N'500mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO141', N'CT013', N'F001', N'ALM001', N'Espironolactona', 5, N'100mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO142', N'CT013', N'F001', N'ALM001', N'Espironolactona', 5, N'25mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO143', N'CT053', N'F018', N'ALM001', N'Estrogenos Conjugados', 16, N'0.625mg/g', N'Tubo por 43g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO144', N'CT053', N'F024', N'ALM001', N'Estrogenos Conjugados', 10, N'0.625mg', N'Frasco por 28 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO145', N'CT054', N'F003', N'ALM001', N'Etilefrina Clorhidrato', 15, N'10mg/ml', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO146', N'CT055', N'F022', N'ALM001', N'Fenilefrina+Prednisolona', 9, N'0.12%+1%', N'Frasco por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO147', N'CT056', N'F013', N'ALM001', N'Fenitoina', 10, N'100mg', N'Frasco por 50 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO148', N'CT056', N'F006', N'ALM001', N'Fenitoina', 28, N'125mg/5mL', N'Frasco por 240mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO149', N'CT056', N'F003', N'ALM001', N'Fenitoina', 15, N'250mg/5ml', N'Ampolla por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO150', N'CT057', N'F013', N'ALM001', N'Fluconazol', 10, N'200mg', N'Blister 7 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO151', N'CT058', N'F001', N'ALM001', N'Flunarizina', 5, N'10mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO152', N'CT059', N'F022', N'ALM001', N'Fluorometalona', 9, N'0.001', N'Frasco por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO153', N'CT060', N'F009', N'ALM001', N'Fluorouracilo', 21, N'0.05', N'Tubo por 30g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO154', N'CT027', N'F007', N'ALM001', N'Fluoxetina', 18, N'20mg/5mL', N'Frasco por 70mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO155', N'CT027', N'F013', N'ALM001', N'Fluoxetina', 10, N'20mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO156', N'CT013', N'F003', N'ALM001', N'Furosemida', 15, N'20mg/2mL', N'Ampolla por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO157', N'CT013', N'F001', N'ALM001', N'Furosemida', 5, N'40mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO158', N'CT061', N'F001', N'ALM001', N'Gemfibrozilo', 5, N'600mg', N'Blister por 15 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO159', N'CT025', N'F003', N'ALM001', N'Gentamicina', 15, N'160mg/2mL', N'Ampolla por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO160', N'CT025', N'F025', N'ALM001', N'Gentamicina', 16, N'3mg', N'Tubo por 5g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO161', N'CT025', N'F022', N'ALM001', N'Gentamicina', 9, N'3mg/mL', N'Frasco por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO162', N'CT025', N'F003', N'ALM001', N'Gentamicina', 15, N'80mg/2mL', N'Ampolla por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO163', N'CT062', N'F001', N'ALM001', N'Glibenclamida', 5, N'5mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO164', N'CT063', N'F001', N'ALM001', N'Haloperidol', 5, N'10mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO165', N'CT063', N'F002', N'ALM001', N'Haloperidol', 12, N'2mg/mL', N'Frasco por 20mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO166', N'CT063', N'F001', N'ALM001', N'Haloperidol', 5, N'5mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO167', N'CT063', N'F003', N'ALM001', N'Haloperidol', 15, N'5mg/ml', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO168', N'CT064', N'F003', N'ALM001', N'Heparina Sodica', 15, N'5.000 UI/0.2', N'Vial por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO169', N'CT013', N'F001', N'ALM001', N'Hidroclorotiazida', 5, N'25mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO170', N'CT030', N'F010', N'ALM001', N'Hidrocortisona', 19, N'0.005', N'Frasco por 30mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO171', N'CT030', N'F011', N'ALM001', N'Hidrocortisona', 31, N'0.01', N'Tubo por 15g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO172', N'CT065', N'F003', N'ALM001', N'Hidrocortisona Succinato', 15, N'100mg', N'Vial por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO173', N'CT066', N'F027', N'ALM001', N'Hidrocortisona+Lidocaina', 20, N'5mg+60mg', N'Blister por 5 supositorio', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO174', N'CT036', N'F003', N'ALM001', N'Hidroxicina Clorhidrato', 15, N'100mg/2mL', N'Ampolla por 2mL', N'Uso exclusivo del Servicio de Urgencia')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO175', N'CT067', N'F007', N'ALM001', N'Hidroxido Alum-Magne-S', 18, N'4%+4%+0.4', N'Frasco por 350mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO176', N'CT068', N'F001', N'ALM001', N'Hioscina NBB', 5, N'10mg', N'Blister por 20 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO177', N'CT068', N'F003', N'ALM001', N'Hioscina NBB', 15, N'20mg/mL', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO178', N'CT068', N'F003', N'ALM001', N'Hioscina NBB+Dipirona', 15, N'20mg+2.5m', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO179', N'CT081', N'F001', N'ALM001', N'Ibuprofeno', 5, N'400mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO180', N'CT027', N'F001', N'ALM001', N'Imipramina', 5, N'10mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO181', N'CT027', N'F001', N'ALM001', N'Imipramina Clorhidrato', 5, N'25mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO182', N'CT069', N'F014', N'ALM001', N'Ipratropio Bromuro', 8, N'200mcg/dos', N'Frasco por 200 dosis', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO183', N'CT070', N'F001', N'ALM001', N'Isosorbide Dinitrato', 5, N'10mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO184', N'CT070', N'F028', N'ALM001', N'Isosorbide Dinitrato', 13, N'5mg', N'Blister por 20 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO185', N'CT057', N'F001', N'ALM001', N'Ketoconazol', 5, N'200mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO186', N'CT057', N'F007', N'ALM001', N'Ketoconazol', 18, N'0.02', N'Frasco por 60mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO187', N'CT036', N'F006', N'ALM001', N'Ketotifeno', 28, N'0.0002', N'Frasco por 100mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO188', N'CT036', N'F001', N'ALM001', N'Ketotifeno', 5, N'1mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO189', N'CT050', N'F001', N'ALM001', N'Lamivudina+Zidovudina', 5, N'150mg+300', N'Blister por 10 tabletas', N'Uso exclusivo el Kit de Abuso')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO190', N'CT063', N'F001', N'ALM001', N'Levomepromazina', 5, N'100mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO191', N'CT063', N'F001', N'ALM001', N'Levomepromazina', 5, N'25mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO192', N'CT063', N'F002', N'ALM001', N'Levomepromazina', 12, N'0.04', N'Frasco por 20mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO193', N'CT051', N'F029', N'ALM001', N'Levonorgestrel', 14, N'0.03mg', N'Blister por 35 grageas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO194', N'CT051', N'F001', N'ALM001', N'Levonorgestrel', 5, N'0.75mg', N'Blister por 2 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO195', N'CT051', N'F030', N'ALM001', N'Levonorgestrel', 26, N'75mg', N'Caja con kit para inserc', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO196', N'CT051', N'F024', N'ALM001', N'Levonorgestrel+Etiniletra', 10, N'150mcg+30', N'Blister por 21 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO197', N'CT071', N'F001', N'ALM001', N'Levotiroxina', 5, N'100mcg', N'Blister por 25 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO198', N'CT071', N'F001', N'ALM001', N'Levotiroxina', 5, N'50mcg', N'Blister por 25 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO199', N'CT072', N'F031', N'ALM001', N'Lidocaina', 32, N'0.02', N'Tubo por 30g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO200', N'CT072', N'F003', N'ALM001', N'Lidocaina Con Epinefrina', 15, N'0.02', N'Vial por 50mL', NULL)
GO
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO201', N'CT072', N'F003', N'ALM001', N'Lidocaina Sin Epinefrina', 15, N'0.02', N'Vial por 50mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO202', N'CT072', N'F032', N'ALM001', N'Lidocaina', 23, N'0.1', N'Frasco por 83mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO203', N'CT073', N'F001', N'ALM001', N'Litio Carbonato', 5, N'300mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO204', N'CT074', N'F001', N'ALM001', N'Loperamida', 5, N'2mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO205', N'CT036', N'F001', N'ALM001', N'Loratadina', 5, N'10mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO206', N'CT036', N'F006', N'ALM001', N'Loratadina', 28, N'5mg/5mL', N'Frasco por 100mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO207', N'CT022', N'F001', N'ALM001', N'Losartan', 5, N'50mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO208', N'CT040', N'F001', N'ALM001', N'Lovastatina', 5, N'20mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO209', N'CT075', N'F003', N'ALM001', N'Magnesio Sulfato', 15, N'0.2', N'Ampolla por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO210', N'CT029', N'F016', N'ALM001', N'Magnesio Sulfato', 14, NULL, N'Bolsa por 500g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO211', N'CT021', N'F001', N'ALM001', N'Mebendazol', 5, N'100mg', N'Blister por 12 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO212', N'CT021', N'F007', N'ALM001', N'Mebendazol', 18, N'100mg/5ml', N'Frasco por 30mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO213', N'CT076', N'F001', N'ALM001', N'Medroxiprogesterona', 5, N'5mg', N'Blister por 30 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO214', N'CT076', N'F003', N'ALM001', N'Medroxiprogesterona Ace', 15, N'150mg/3ml', N'Ampolla por 3mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO215', N'CT051', N'F005', N'ALM001', N'Medroxiprogesterona+Es', 20, N'25mg+5mg', N'Ampolla por 0.5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO216', N'CT029', N'F001', N'ALM001', N'Mesalazina', 5, N'500mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO217', N'CT062', N'F001', N'ALM001', N'Metformina', 5, N'850mg', N'Blister por 15 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO218', N'CT077', N'F001', N'ALM001', N'Metimazol', 5, N'5mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO219', N'CT078', N'F003', N'ALM001', N'Metocarbamol', 15, N'0.01', N'Ampolla por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO220', N'CT078', N'F001', N'ALM001', N'Metocarbamol', 5, N'750mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO221', N'CT079', N'F001', N'ALM001', N'Metoclopramida', 5, N'10mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO222', N'CT079', N'F003', N'ALM001', N'Metoclopramida', 15, N'10mg/2mL', N'Ampolla por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO223', N'CT079', N'F002', N'ALM001', N'Metoclopramida', 12, N'4mg/mL', N'Frasco por 30mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO224', N'CT080', N'F001', N'ALM001', N'Metoprolol', 5, N'100mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO225', N'CT080', N'F003', N'ALM001', N'Metoprolol', 15, N'1mg/mL', N'Ampolla por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO226', N'CT080', N'F001', N'ALM001', N'Metoprolol', 5, N'50mg', N'Blister por 30 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO227', N'CT025', N'F007', N'ALM001', N'Metronidazol', 18, N'250mg/5mL', N'Frasco por 120mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO228', N'CT025', N'F001', N'ALM001', N'Metronidazol', 5, N'500mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO229', N'CT025', N'F033', N'ALM001', N'Metronidazol', 22, N'500mg', N'Blister por 10 ovulos', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO230', N'CT035', N'F003', N'ALM001', N'Naloxona Hidrocloruro', 15, N'0.4mg/mL', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO231', N'CT081', N'F007', N'ALM001', N'Naproxeno', 18, N'25mg/mL', N'Frasco por 80mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO232', N'CT081', N'F001', N'ALM001', N'Naproxeno', 5, N'250mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO233', N'CT082', N'F013', N'ALM001', N'Nifedipina', 10, N'10mg', N'Blister por 15 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO234', N'CT082', N'F013', N'ALM001', N'Nifedipina Retard', 10, N'30mg', N'Blister por 15 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO235', N'CT083', N'F001', N'ALM001', N'Nimodipino', 5, N'30mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO236', N'CT039', N'F019', N'ALM001', N'Nistatina', 12, N'100.000UI', N'Blister por 15 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO237', N'CT039', N'F007', N'ALM001', N'Nistatina', 18, N'100.000 UI/', N'Frasco por 60mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO238', N'CT025', N'F013', N'ALM001', N'Nitrofurantoina', 10, N'100mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO239', N'CT025', N'F013', N'ALM001', N'Nitrofurantoina', 10, N'50mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO240', N'CT025', N'F011', N'ALM001', N'Nitrofurazona', 31, N'0.2g/100g', N'Pote por 500g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO241', N'CT084', N'F003', N'ALM001', N'Nitroglicerina', 15, N'50mg', N'Vial por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO242', N'CT085', N'F003', N'ALM001', N'Nitroprusiato de Sodio', 15, N'50mg', N'Ampolla por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO243', N'CT025', N'F001', N'ALM001', N'Norfloxacina', 5, N'400mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO244', N'CT086', N'F013', N'ALM001', N'Omeprazol', 10, N'20mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO245', N'CT025', N'F003', N'ALM001', N'Oxacilina', 15, N'1g', N'Vial por 6mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO246', N'CT087', N'F021', N'ALM001', N'Oximetazolina', 9, N'0.25', N'Frasco por 15mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO247', N'CT087', N'F021', N'ALM001', N'Oximetazolina', 9, N'0.05%', N'Frasco por 15mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO248', N'CT025', N'F001', N'ALM001', N'Penicilina Fenoxi Metil V', 5, N'500mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO249', N'CT025', N'F007', N'ALM001', N'Penicilina Fenoxi Metil V', 18, N'250mg/mL', N'Frasco por 100mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO250', N'CT025', N'F003', N'ALM001', N'Penicilina G Benzatinica', 15, N'1`200.000 U', N'Vial por 4mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO251', N'CT025', N'F003', N'ALM001', N'Penicilina G Cristalina', 15, N'1`000.000 U', N'Vial por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO252', N'CT025', N'F003', N'ALM001', N'Penicilina G Cristalina', 15, N'5`000.000 U', N'Vial por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO253', N'CT025', N'F003', N'ALM001', N'Penicilina G Procainica', 15, N'800.000 UI', N'Vial por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO254', N'CT088', N'F003', N'ALM001', N'Pipotiazina', 15, N'25mg/mL', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO255', N'CT089', N'F007', N'ALM001', N'Pirantel Pamoato', 18, N'250mg/5mL', N'Frasco por 15mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO256', N'CT089', N'F013', N'ALM001', N'Pirantel Pamoato', 10, N'250mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO257', N'CT016', N'F034', N'ALM001', N'Podofilina', 24, N'0.2', N'Frasco por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO258', N'CT033', N'F003', N'ALM001', N'Potasio Cloruro', 15, N'2mEq/mL', N'Ampolla por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO259', N'CT022', N'F001', N'ALM001', N'Prazocina', 5, N'1mg', N'Blister por 30 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO260', N'CT030', N'F022', N'ALM001', N'Prednisolona', 9, N'0.01', N'Frasco por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO261', N'CT030', N'F001', N'ALM001', N'Prednisolona', 5, N'50mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO262', N'CT030', N'F001', N'ALM001', N'Prednisolona', 5, N'5mg', N'Blister por 15 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO263', N'CT080', N'F001', N'ALM001', N'Propranolol', 5, N'40mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO264', N'CT080', N'F001', N'ALM001', N'Propranolol', 5, N'80mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO265', N'CT090', N'F022', N'ALM001', N'Proximetacaina', 9, N'0.5%', N'Frasco por 15mL', N'Uso Exclusivo del Servicio de Urgenci')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO266', N'CT091', N'F001', N'ALM001', N'Ranitidina', 5, N'150mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO267', N'CT091', N'F001', N'ALM001', N'Ranitidina', 5, N'300mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO268', N'CT091', N'F003', N'ALM001', N'Ranitidina', 15, N'50mg/2mL', N'Ampolla por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO269', N'CT092', N'F013', N'ALM001', N'Rifampicina', 10, N'300mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO270', N'CT026', N'F014', N'ALM001', N'Salbutamol', 8, N'100mcg/dos', N'Frasco por 200 dosis', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO271', N'CT026', N'F006', N'ALM001', N'Salbutamol', 28, N'2mg/5mL', N'Frasco por 120mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO272', N'CT093', N'F035', N'ALM001', N'Sales de Rehidratacion O', 21, N'Ver sobre', N'Sobre para 1 litro', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO273', N'CT094', N'F003', N'ALM001', N'Sodio Bicarbonato', 15, N'8.4%', N'Ampolla por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO274', N'CT033', N'F003', N'ALM001', N'Sodio Cloruro', 15, N'2mEq/mL', N'Ampolla por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO275', N'CT095', N'F003', N'ALM001', N'Solucion Hartman', 15, NULL, N'Bolsa por 500mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO276', N'CT096', N'F003', N'ALM001', N'Solucion Pizarro', 15, N'0.9', N'Bolsa por 500mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO277', N'CT097', N'F003', N'ALM001', N'Solucion Salina', 15, N'0.9%', N'Bolsa por 100mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO278', N'CT097', N'F003', N'ALM001', N'Solucion Salina', 15, N'0.9%', N'Bolsa por 250mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO279', N'CT097', N'F003', N'ALM001', N'Solucion Salina', 15, N'0.9%', N'Bolsa por 500mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO280', N'CT098', N'F001', N'ALM001', N'Sucralfato', 5, N'1g', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO281', N'CT025', N'F022', N'ALM001', N'Sulfacetamida', 9, N'0.1', N'Frasco por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO282', N'CT025', N'F022', N'ALM001', N'Sulfacetamida', 9, N'0.3', N'Frasco por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO283', N'CT025', N'F011', N'ALM001', N'Sulfadiazina de Plata', 31, N'0.01', N'Tubo por 30g', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO284', N'CT029', N'F013', N'ALM001', N'Sulfasalazina', 10, N'500mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO285', N'CT099', N'F001', N'ALM001', N'Sulfato Ferroso', 5, N'100mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO286', N'CT099', N'F002', N'ALM001', N'Sulfato Ferroso', 12, N'125mg/mL', N'Frasco por 20mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO287', N'CT099', N'F001', N'ALM001', N'Sulfato Ferroso', 5, N'300mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO288', N'CT099', N'F006', N'ALM001', N'Sulfato Ferroso', 28, N'8.mg hierro', N'Frasco por 120mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO289', N'CT025', N'F001', N'ALM001', N'Teclozan', 5, N'500mg', N'Blister por 3 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO290', N'CT026', N'F013', N'ALM001', N'Teofilina Anhidra', 10, N'300mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO291', N'CT026', N'F013', N'ALM001', N'Teofilina Retard', 10, N'125mg', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO292', N'CT026', N'F006', N'ALM001', N'Terbutalina', 28, N'0.03%', N'Frasco por 120mL', N'Holis')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO293', N'CT026', N'F003', N'ALM001', N'Terbutalina', 15, N'0.5mg/ml', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO294', N'CT026', N'F001', N'ALM001', N'Terbutalina', 5, N'2.5mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO295', N'CT100', N'F022', N'ALM001', N'Timolol', 9, N'0.5%', N'Frasco por 5mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO296', N'CT101', N'F007', N'ALM001', N'Tinidazol', 18, N'200mg/mL', N'Frasco por 15mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO297', N'CT101', N'F001', N'ALM001', N'Tinidazol', 5, N'500mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO298', N'CT004', N'F003', N'ALM001', N'Tramadol', 15, N'100mg/2mL', N'Ampolla por 2mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO299', N'CT004', N'F002', N'ALM001', N'Tramadol', 12, N'100mg/mL', N'Frasco por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO300', N'CT004', N'F003', N'ALM001', N'Tramadol', 15, N'50mg/mL', N'Ampolla por 2mL', NULL)
GO
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO301', N'CT027', N'F001', N'ALM001', N'Trazodona', 5, N'50mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO302', N'CT025', N'F001', N'ALM001', N'Trimetoprim-Sulfametoxa', 5, N'80mg-400m', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO303', N'CT025', N'F001', N'ALM001', N'Trimetoprim-Sulfametoxa', 5, N'160mg-800m', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO304', N'CT025', N'F007', N'ALM001', N'Trimetoprim-Sulfametoxa', 18, N'40mg-200m', N'Frasco por 120mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO305', N'CT102', N'F022', N'ALM001', N'Tropicamida', 9, N'0.01', N'Frasco por 15mL', N'Uso Exclusivo del Servicio de Urgenci')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO306', N'CT080', N'F001', N'ALM001', N'Verapamilo', 5, N'120mg', N'Blister por 20 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO307', N'CT080', N'F001', N'ALM001', N'Verapamilo', 5, N'80mg', N'Blister por 20 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO308', N'CT015', N'F013', N'ALM001', N'Vitamina A', 10, N'50.000 UI', N'Blister por 10 capsulas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO309', N'CT015', N'F003', N'ALM001', N'Vitamina B1-Tiamina', 15, N'100mg/ml', N'Ampolla por 10mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO310', N'CT015', N'F001', N'ALM001', N'Vitamina B1-Tiamina', 5, N'300mg', N'Blister por 20 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO311', N'CT015', N'F002', N'ALM001', N'Vitamina C', 12, N'100mg/mL', N'Frasco por 30mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO312', N'CT015', N'F001', N'ALM001', N'Vitamina C', 5, N'500mg', N'Blister por 20 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO313', N'CT015', N'F003', N'ALM001', N'Vitamina K-Fitomenadion', 15, N'10mg/ml', N'Ampolla por 1mL', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO314', N'CT064', N'F001', N'ALM001', N'Warfarina Sodica', 5, N'5mg', N'Blister por 10 tabletas', NULL)
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO315', N'CT001', N'F005', N'ALM001', N'test-modified', 1, N'15ml', N'test', N'test')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO316', N'CT001', N'F001', N'ALM001', N'prueba', 5, NULL, N'sss', N'prueba-produc')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO317', N'CT003', N'F004', N'ALM001', N'producto prueba', 23, NULL, N'frasco', N'probemos')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO318', N'CT001', N'F005', N'ALM001', N'testaaa', 4, NULL, N'dsa', N'ssss')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO319', N'CT001', N'F005', N'ALM001', N'Testing', 4, NULL, N'testing', N'testing')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO320', N'CT001', N'F001', N'ALM001', N'testingv2', 2, NULL, N'ssss', N'test')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO321', N'CT001', N'F005', N'ALM001', N'tessstaaa', 2, NULL, N'gggg', N'gggg')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO322', N'CT002', N'F004', N'ALM001', N'ProductoNuevo', 12, NULL, N'Tabletas', N'Una descripcion')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO323', N'CT005', N'F002', N'ALM001', N'ProductoNuevo2', 45, NULL, N'Botella', N'Dewspcriops')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO324', N'CT002', N'F002', N'ALM001', N'ProductoPrueba3', 6, NULL, N'Botella', N'Holis')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO325', N'CT003', N'F004', N'ALM001', N'ProductoPrueba4', 5, NULL, N'Frasco', N'Holi')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO326', N'CT013', N'F002', N'ALM001', N'PRUEBA11', 12, NULL, N'Bolsa', N'holi')
INSERT [dbo].[productos] ([id_producto], [id_categoria], [id_forma_farmaceutica], [id_almacen], [nombre], [precio], [concentracion], [presentacion], [descripcion]) VALUES (N'PRO327', N'CT005', N'F001', N'ALM001', N'Dexosina', 35, NULL, N'Paquete', N'Para enfermendades del estomago')
GO
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_1084', 8, N'DISTRIBUIDORA DISFARMACOL', N'AV. PRODUCCIÓN NACIONAL 188', N'787169128', N'disfarmacolsas@hotmail.com', N'98480462236', 2)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_1334', 40, N'EQUIMEDCO', N'CARRETERA FEDERICO BASADRE KM. 15.00 - CASHIBO COCHA', N'945556985', N'contactenos@equimedco.com.co', N'45748991704', 6)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_1480', NULL, N'DISTRIDROGAS LA 94', N'PREDIO LA ESMERALDA U.C. 15436 A, AV. AEROPUERTO S/N', N'459289891', N'distridrogasla94@hotmail.com', N'57482640802', 10)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_2072', NULL, N'DISTRIBUIDORA GENERAL DE PRODUCTOS DE CONSUMO MASIVO', N'KM. 14.8 DE LA CARRETERA CENTRAL, GLORIA ALTA (MINERA LA GLORIA)', N'685604354', N'bodespachos@panagro.com.co', N'64359910588', 8)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_2146', 41, N'EQUIMEDICOS DEL SUR JIM', N'ESTACION DE BOMBEO PS-3 CHIQUINTIRCA', N'107628180', N'equimedicosdelsurjim@gmail.co m', N'55845533116', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_2195', 16, N'DISTRIBUIDORA NUEVA VIDA MEDELLIN', N'AV. UNIV. S/N, GRP. 1, AA.HH. EDILBERTO RAMOS', N'414968900', N'carlos.ochoa@e-nuevavida.com', N'39746178485', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_2469', 43, N'ESE METROSALUD CENTRO DE DISTRIBUCION DE INSUMOS', N'CARRET. HUAROCHIRI KM.28.5 MZ.56 LT. 6.B', N'443343345', N'contrataciondt@metrosalud.gov. co', N'14445085059', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_2828', NULL, N'sdsdas', N'sdasds', N'44454    ', N'ffdasd', N'4165ds4fd  ', 7)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_2870', 53, N'FARMACEUTICA INTERNACIONAL DE ALTO COSTO ANTIOQUIA - FIAC-', N'AV. 10 DE JUNIO N° 1015', N'172389791', N'director.tecnico@fiacsas.com', N'44239958618', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_2950', 55, N'FARMATELY', N'CALLE SCHELL N° 430 - 438', N'651878647', N'edwinrodriguez@farmarely.com', N'90064511791', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_3034', 30, N'DIVERQUIN', N'AV. MANSICHI Nº 489', N'947571469', N'contador@suplemedicos.com.co', N'12630085205', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_3167', 11, N'DISTRIBUIDORA FARMACEUTICA VITAL MEDICK GROUP S.A.S.', N'PANAMERICANA SUR S/N, KM 3 + 751 VIA FERREA MATARANI – AREQUIPA', N'259124353', N'vitalmedick@gmail.com', N'38584467037', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_3208', 42, N'EQUIPAR SALUD IPS', N'AUTOPISTA SALAVERRY KM 4.', N'709427172', N'equiparsalud@outlook.com', N'14851671051', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_3239', 56, N'FCE SOLUCIONES', N'Isidro Bonifaz N° 385', N'136945120', N'fcesoluciones@gmail.com', N'19937444319', 9)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_3353', 1, N'DISTRIBUCIONES MEDIFE', N'CARRET. HUAROCHIRI KM.28.5 MZ.56 LT. 6.B', N'252610814', N'contacto@medifesas.com', N'19471017975', 3)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_3370', NULL, N'DISTRIBUIDORA PROGEN', N'CALLE INCA ROCA Y MANCO III MZ.C15 LT.2 AA.HH.LEONCIO PRADO', N'304844344', N'distribuidoraprogen@hotmail.co m', N'85198134194', 7)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_3496', 52, N'FARMACERES', N'PANAMERICANA SUR KM. 202', N'270924508', N'farmaceres@hotmail.com', N'47489596667', 7)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_3534', 24, N'DISTRICLINICOS NACIONALES', N'CARRETERA SECHURA - BAYOVAR KM 20 + 639', N'385606316', N'contabilidad@clinicosnacionales.com', N'57154886816', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_3637', 59, N'FUNDACION NACIONAL DE TRASPLANTADOS', N'AV. LOS EUCALIPTOS, UNIDAD CATASTRAL 10812, URB. PREDIO SANTA GENOVEVA', N'669869981', N'distribuidora@trasplantados.com', N'78631112009', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_3715', 38, N'EL PUNTO MEDICO', N'COMUNIDAD CAMPESINA DE JICAMARCA ANEXO 22 ZONA PEDREGAL, MZ. D-1, LOTES 4 Y 5', N'968286699', N'bc45@hotmail.com', N'48233770143', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_4212', NULL, N'colina', N'av. colina', N'4557455  ', N'colina@cluins.com', N'54d5ssd    ', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_4423', NULL, N'ExtremasBebis', N'Av. 200 millas', N'946525454', N'melani.bebe@bebe.com', N'5545525    ', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_4436', 44, N'EUROCARES S.A.S.', N'CALLE K. MZ. L, LOTE 16 - URB. INDUSTRIAL STA.ROSA', N'821258850', N'eurocaresmedellin@hotmail.com', N'19169059177', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_4557', 34, N'DRUGSTORE MEDELLÍN', N'CALLE TOKIO S/N UNIDAD CATASTRAL N° 10571, SUB LOTES B Y C', N'471722166', N'direcion.tecnica@ds.com.co', N'78069672990', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5017', 54, N'FARMARED DISTRIBUCIONES', N'CARRETERA INDUSTRIAL KM 35 URB SEMI RUSTICA EL BOSQUE', N'555368025', N'farmared.2011@hotmail.com;', N'22690068880', 3)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5236', 5, N'DISTRIBUIDORA DE PRODUCTOS NATURALES ALVA-MAR', N'AV. FORTUNATO CHIRICHINGNO S/N EL CHIPE', N'176120916', N'distrialva-mar@outlook.com', N'23586120992', 3)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5470', 31, N'DP MATERIALES MEDICOS S.A.S.', N'CARRETERA A SULLANA - TAMBO GRANDE KM 43,5', N'692246706', N'edgar.diaz@dpmateriales', N'60208779322', 6)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5626', 70, N'HB ESTÉTICA S.A.S', N'CARRETERA PANAMERICANA NORTE KM. 512 -LT. AGRICOLA DB 5', N'361964982', N'asesorhb@gmail.com', N'13394297415', 7)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5682', NULL, N'DISTRIBUIDORA DE PRODUCTOS PARA LA ESTETICA RT', N'CARRETERA CENTRAL KM. 8,500 DISTRITO STA. CLARA', N'379940676', N'comercial.drt@gmail.com', N'66881332780', 10)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5692', 32, N'DR RECKEWEG DE COLOMBIA OF ANTIOQUIA', N'AV. VICTOR R.HAYA DE LA TORRE NO 2940', N'402745433', N'infoantioquia@reckewegcolombia.com.co', N'88087896795', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5778', 3, N'DISTRIBUIDORA BIOENERGETICA ARCO IRIS', N'JIRON ILO 450 ESQ. CON JIRON CHOTA 998', N'885355682', N'farmacia2013arcoiris@hotmail.co m', N'77400913528', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5809', 49, N'FARMA ALIADAS DISTRIBUCIONES S.A.S.', N'MZ. B LOTE 11 URB. SANTO TOMAS C.P. VILLA DEL MAR', N'771522213', N'farmaaliadas9@hotmail.com', N'70406795028', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5890', 66, N'GPC PHARMA S.A.S.', N'AV. FERROCARRIL N° 212', N'358369866', N'logistica@gpcpharma.com.co', N'57002071456', 6)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5896', 19, N'DISTRIBUIDORA SALUD NATURAL SAS', N'AV. NICOLAS ARRIOLA N° 3192', N'143985303', N'regentedsaludnatural@gmail.co m', N'81260670386', 6)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5906', 62, N'GENERICOS ESENCIALES - GENESA ITAGUI-', N'CALLE LOS HORNOS N° 185 URB. VULCANO', N'142048793', N'diroperaciones@gestarfarma.co m.co', N'33164095689', 7)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_5949', 26, N'DISTRIFARMED', N'PARQUE INDUSTRIAL RIO SECO MZ. H, LOTES 2 Y 3', N'878475905', N'medellin@distrifarmed.com', N'11233836440', 3)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_6110', 39, N'EQUIBIOMEDIC', N'LOS ROBLES 441-447', N'275460710', N'gerencia@equibiomedic.com', N'79840937819', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_6168', 65, N'GLOFARMA', N'JR. BARTOLOME FERREYROS N° 265', N'240879647', N'glofarma@hotmail.com', N'86457549653', 3)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_6236', 2, N'DISTRIBUICIONES CORAL FARMA', N'AV. EL EJERCITO S/N CUADRA 11 - CUARTEL LOS CABITOS', N'562876808', N'coralfarma777@gmail.com', N'57046332932', 7)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_6257', 9, N'DISTRIBUIDORA FARMACEUTICA MEDICOST S.A.S.', N'JR. LOS HORNOS N° 353 - URB. INFANTAS', N'363400534', N'gerencia@medicost.com.co', N'87714365021', 3)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_6317', 14, N'DISTRIBUIDORA MUNDO NATURAL', N'CALLE DELTA 185 URB.PARQUE INTERNA.DE LA INDUSTR.Y COMERC.', N'318306044', N'd.mundonatural@hotmail.com', N'59887930275', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_6405', 29, N'DISWIFARMA', N'ZONA INDUSTRIAL II - AV. D MZ. D LOTE 01 - PAITA', N'494550191', N'diswifarmasas@gmail.com', N'78620540752', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_6592', 37, N'ECOPHARMA COLOMBIA S.A.S.', N'CONCESION DE BENEFICIO VETA DORADA KM 5 C.P. CHALA VIEJO', N'500937217', N'comercid@ecopharmacolombia.com', N'37894988144', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_6673', 22, N'DISTRIBUIMOS LFDO', N'PREDIO ERIAZO UBICADO ENTRE LOS SECTORES LA CANO Y SAN JOSE', N'625539766', N'distribuimoslfdo@gmail.com', N'59396119899', 6)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_6934', 6, N'DISTRIBUIDORA DE PRODUCTOS NATURALES GIRASOL', N'AV. EVITAMIENTO Nº 242 - PARQUE INDUSTRIAL', N'112259289', N'distrigirasoles@hotmail.com', N'80195511789', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_7140', 27, N'DISTRIMEDICAL', N'PASAJE PETROPERU S/N PUERTO SALAVERRY', N'224681155', N'regencia@distrimedical.com.co', N'47224608981', 2)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_7335', NULL, N'ECONOMEDICA M.D.', N'CASERIO LA ZANJA', N'744452160', N'economedica1@hotmail.com', N'76329532539', 1)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_7359', 13, N'DISTRIBUIDORA MARCAS GENERICAS', N'SECTOR POBLADO YAURILLA S/N', N'683882021', N'marcasgenericas@une.net.co', N'64199373276', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_7404', 61, N'GENERICA DE MEDICAMENTOS Y POPULARES', N'AV. GONZALO UGÁS N° 29', N'854788872', N'jose.rodriguez@c- comercio.com.co', N'31641156075', 3)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_7688', 63, N'GLOBAL MARKETING FARMACEUTICA', N'AV. PRINCIPAL S/N URB. INDUSTRIAL GRAN TRAPECIO', N'612507183', N'bodega@globalmfarmaceutica.com', N'56712287517', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_7745', 58, N'FITO-MEDICINAL', N'CARRETERA AUTOPISTA PANAMERICANA SUR N° 2001 (KM. 38)', N'338081225', N'fito6medicinal@gmail.com;', N'54602187352', 8)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_7779', 10, N'DISTRIBUIDORA FARMACEUTICA ROMA', N'JR. ALONSO DE MOLINA N° 193. EX ZONA INDUSTRIAL', N'488197628', N'regencia@dfroma.com', N'62723991267', 6)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_8023', 48, N'FARBIOTICA', N'CASERIO LA ARENA ALTURA KM. 164 CARRETERA TRUJILLO - QUIRUVILCA - HUAMACHUCO', N'763611235', N'depositofarbiotica@hotmail.com', N'36696750868', 3)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_8247', 33, N'DROGAS Y DISTRIBUCIONES VITALFARMA', N'CALLE 5 N° 115-151 URB. VULCANO', N'301646351', N'fredy19rios@gmail.com', N'22967965488', 3)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_8306', 15, N'DISTRIBUIDORA NATURALMA', N'AV. LOS LIBERTADORES KM. 1.50', N'623714806', N'jaironaturalma1@hotmail.com', N'85227519000', 7)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_8491', 57, N'FILTRACION Y ANALISIS FILIA', N'AV. ALFREDO MENDIOLA N° 6565', N'775606750', N'admon@filtracionyanalisis.com', N'25932847017', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_8549', 50, N'FARMA EXPRESS SF', N'JR. PABLO OLAVIDE N° 460-498', N'244872999', N'farmaexpress123@hotmail.com', N'71428362052', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_8605', 20, N'DISTRIBUIDORA SUPLIMED', N'AV. SANTA JOSEFINA ALT. KM. 30.1 PANAMERICANA NORTE', N'161613888', N'regente@suplimed.com.co', N'56964042786', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_8729', 4, N'DISTRIBUIDORA DE MEDICAMENTOS DISMEDVITAL', N'KM. 95 DE LA CARRETERA CENTRAL', N'739008441', N'dismevital@outlook.com', N'64254495568', 3)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_8792', 60, N'GENECA PHARMA S.A.S.', N'AV. GUILLERMO DANSEY N° 1001 ESQ. RODOLFO BELTRAN N°984', N'823093516', N'regente@geneca.com.co', N'24641142478', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_8865', 28, N'DISTRIOLMED', N'PANAMERICANA NORTE KM. 764', N'208422968', N'distriolmed@gmail.com', N'77255279732', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9077', 45, N'EUROSI MEDICAL S.A.S.', N'AV. C S/N, AMPLIACION B - VENTANILLA ALTA', N'915971013', N'gerencia@eurosimedical.com.co', N'92628596299', 6)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9264', 21, N'DISTRIBUIDORA Y COMERCIALIZADORA SARAY', N'ZONA INDUSTRIAL S/N TALARA ALTA', N'612464795', N'ventas@saraysas.com', N'54239501431', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9313', 68, N'H Y R DISTRIBUCIONES', N'AV. CIRCUNVALACION S/N. MZ. O LOTE 12 URB. SANTA MARTHA', N'120312457', N'hyr@hyrdistribuciones.com', N'77918949100', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9355', 23, N'DISTRIBUTIONS AND HEALTH SERVICES S.A.S.', N'JR. JORGE CHAVEZ N° 803', N'543510716', N'distributionshealth@gmail.com', N'48474956796', 4)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9385', 69, N'HANNEMAN DISTRIBUCIONES', N'AEROPUERTYO MOISES BENZAQUEN RENGIFO - RAMPA ESTE', N'479053754', N'lhamedellin@hotmail.com', N'30029544631', 8)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9436', NULL, N'F Y L DISTRIBUCIONES', N'CAMPAMENTO YANAYACU, BATERIA N° 3, LOTE 8', N'819712183', N'fyldistribuciones@yahoo.com', N'38274166197', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9580', 67, N'GRUPO IMPLAMED S.A.S.', N'PARCELA 10234 - FUNDO SANTA INES', N'752268908', N'info@implamedsl.com', N'30066062199', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9592', 51, N'FARMA XPRESS S.A.S.', N'AV. VILLA HERMOZA Nº 1013', N'989828912', N'gerenciaadministrativa@farmaxp ress.co', N'14511752490', 6)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9697', 64, N'GLOBAL SERVICE PHARMACEUTICAL S.A.S.', N'MZ H - LOTE 1, PROGRAMA DE VIVIENDA COSTA AZUL', N'446905770', N'carolinarua@gpharma.net', N'95634026088', 5)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9810', 17, N'DISTRIBUIDORA PASTEUR', N'CALLE RAMON CASTILLA, URB. LURIN LOTE 6, FUNDO SALINAS', N'586656391', N'dhernandez@pasteur.com.co', N'89497108260', 6)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9832', 35, N'DUALDENTAL', N'AV. FRANCISCO BOLOGNESI Nº 536', N'133521306', N'dualdental@yahoo.es', N'39918403553', 3)
INSERT [dbo].[proveedores] ([idProveedor], [idCaracteristica], [empresa], [direccion], [telefono], [email], [RUC], [rate]) VALUES (N'P_9981', 46, N'EXPRESSANDO SONRISAS S.A.S.', N'PARAJE C TOCLLA', N'920990499', N'admon@expressando-sonrisas.com', N'51291832130', 4)
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([id], [rol]) VALUES (2, N'ROLE_ADMIN')
INSERT [dbo].[roles] ([id], [rol]) VALUES (3, N'ROL_COMPRA')
INSERT [dbo].[roles] ([id], [rol]) VALUES (4, N'ROL_VENTA')
INSERT [dbo].[roles] ([id], [rol]) VALUES (5, N'ROL_ALMACEN')
INSERT [dbo].[roles] ([id], [rol]) VALUES (6, N'ROL_TRANSPORTISTA')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
INSERT [dbo].[solicitudes_compra] ([idSolicitudCompra], [idEstado], [idAsistenteAlmacen], [idAsistenteCompra], [nombreProducto], [cantidad], [fecha_entrega]) VALUES (N'SO-001', 2, N'EMP005', N'EMP004', N'Paracetamol', 400, CAST(N'2024-04-28' AS Date))
INSERT [dbo].[solicitudes_compra] ([idSolicitudCompra], [idEstado], [idAsistenteAlmacen], [idAsistenteCompra], [nombreProducto], [cantidad], [fecha_entrega]) VALUES (N'SO-002', 2, N'EMP005', N'EMP004', N'Naproxeno', 200, CAST(N'2024-04-29' AS Date))
INSERT [dbo].[solicitudes_compra] ([idSolicitudCompra], [idEstado], [idAsistenteAlmacen], [idAsistenteCompra], [nombreProducto], [cantidad], [fecha_entrega]) VALUES (N'SO-003', 3, N'EMP005', N'EMP004', N'Podofilina', 600, CAST(N'2024-04-30' AS Date))
INSERT [dbo].[solicitudes_compra] ([idSolicitudCompra], [idEstado], [idAsistenteAlmacen], [idAsistenteCompra], [nombreProducto], [cantidad], [fecha_entrega]) VALUES (N'SO-004', 1, N'EMP005', N'EMP004', N'Prueba', 200, CAST(N'2024-07-04' AS Date))
INSERT [dbo].[solicitudes_compra] ([idSolicitudCompra], [idEstado], [idAsistenteAlmacen], [idAsistenteCompra], [nombreProducto], [cantidad], [fecha_entrega]) VALUES (N'SO-005', 1, N'EMP005', N'EMP004', N'test-sol', 600, CAST(N'2024-06-29' AS Date))
INSERT [dbo].[solicitudes_compra] ([idSolicitudCompra], [idEstado], [idAsistenteAlmacen], [idAsistenteCompra], [nombreProducto], [cantidad], [fecha_entrega]) VALUES (N'SO-006', 1, N'EMP005', N'EMP004', N'Prueba-sol', 600, CAST(N'2024-08-05' AS Date))
INSERT [dbo].[solicitudes_compra] ([idSolicitudCompra], [idEstado], [idAsistenteAlmacen], [idAsistenteCompra], [nombreProducto], [cantidad], [fecha_entrega]) VALUES (N'SO-007', 1, N'EMP005', N'EMP004', N'Pastilla antibebitez', 300, CAST(N'2024-07-24' AS Date))
INSERT [dbo].[solicitudes_compra] ([idSolicitudCompra], [idEstado], [idAsistenteAlmacen], [idAsistenteCompra], [nombreProducto], [cantidad], [fecha_entrega]) VALUES (N'SO-008', 2, N'EMP005', N'EMP004', N'ProductoPruebaSolicitud', 400, CAST(N'2024-07-29' AS Date))
INSERT [dbo].[solicitudes_compra] ([idSolicitudCompra], [idEstado], [idAsistenteAlmacen], [idAsistenteCompra], [nombreProducto], [cantidad], [fecha_entrega]) VALUES (N'SO-009', 2, N'EMP005', N'EMP004', N'Clonazepam', 200, CAST(N'2024-09-18' AS Date))
INSERT [dbo].[solicitudes_compra] ([idSolicitudCompra], [idEstado], [idAsistenteAlmacen], [idAsistenteCompra], [nombreProducto], [cantidad], [fecha_entrega]) VALUES (N'SO-010', 2, N'EMP005', N'EMP004', N'Paracetamol', 200, CAST(N'2024-09-19' AS Date))
GO
INSERT [dbo].[solicitudes_cotizacion] ([id_solicitud_cotizacion], [id_solicitud_compra], [fecha_creacion]) VALUES (N'SC-001', N'SO-001', CAST(N'2024-04-29' AS Date))
INSERT [dbo].[solicitudes_cotizacion] ([id_solicitud_cotizacion], [id_solicitud_compra], [fecha_creacion]) VALUES (N'SC-002', N'SO-002', CAST(N'2024-04-29' AS Date))
INSERT [dbo].[solicitudes_cotizacion] ([id_solicitud_cotizacion], [id_solicitud_compra], [fecha_creacion]) VALUES (N'SC-003', N'SO-003', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[solicitudes_cotizacion] ([id_solicitud_cotizacion], [id_solicitud_compra], [fecha_creacion]) VALUES (N'SC-004', N'SO-004', CAST(N'2024-07-14' AS Date))
INSERT [dbo].[solicitudes_cotizacion] ([id_solicitud_cotizacion], [id_solicitud_compra], [fecha_creacion]) VALUES (N'SC-005', N'SO-005', CAST(N'2024-07-14' AS Date))
INSERT [dbo].[solicitudes_cotizacion] ([id_solicitud_cotizacion], [id_solicitud_compra], [fecha_creacion]) VALUES (N'SC-006', N'SO-007', CAST(N'2024-07-15' AS Date))
INSERT [dbo].[solicitudes_cotizacion] ([id_solicitud_cotizacion], [id_solicitud_compra], [fecha_creacion]) VALUES (N'SC-007', N'SO-007', CAST(N'2024-07-16' AS Date))
INSERT [dbo].[solicitudes_cotizacion] ([id_solicitud_cotizacion], [id_solicitud_compra], [fecha_creacion]) VALUES (N'SC-008', N'SO-008', CAST(N'2024-07-16' AS Date))
INSERT [dbo].[solicitudes_cotizacion] ([id_solicitud_cotizacion], [id_solicitud_compra], [fecha_creacion]) VALUES (N'SC-009', N'SO-009', CAST(N'2024-09-05' AS Date))
INSERT [dbo].[solicitudes_cotizacion] ([id_solicitud_cotizacion], [id_solicitud_compra], [fecha_creacion]) VALUES (N'SC-010', N'SO-010', CAST(N'2024-09-05' AS Date))
GO
INSERT [dbo].[transportistas] ([idEmpleado], [placa], [estado]) VALUES (N'EMP003', N'DFV234', N'inactivo')
INSERT [dbo].[transportistas] ([idEmpleado], [placa], [estado]) VALUES (N'EMP006', N'FGH987', N'inactivo')
GO
INSERT [dbo].[usuario_rol] ([usuario_id], [rol_id]) VALUES (1, 4)
INSERT [dbo].[usuario_rol] ([usuario_id], [rol_id]) VALUES (2, 2)
INSERT [dbo].[usuario_rol] ([usuario_id], [rol_id]) VALUES (3, 6)
INSERT [dbo].[usuario_rol] ([usuario_id], [rol_id]) VALUES (4, 3)
INSERT [dbo].[usuario_rol] ([usuario_id], [rol_id]) VALUES (5, 5)
INSERT [dbo].[usuario_rol] ([usuario_id], [rol_id]) VALUES (6, 6)
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id], [credentials_expired], [disabled], [email], [expired], [locked], [password]) VALUES (1, 0, 0, N'carlos.daniel@bbraun.com', 0, 0, N'$2a$10$bxhjOHaxfVwR6m0pRMl8y.1QxOVnVfePqu5b4tsGLlLsjWwKORI2S')
INSERT [dbo].[usuarios] ([id], [credentials_expired], [disabled], [email], [expired], [locked], [password]) VALUES (2, 0, 0, N'melani.laveriano@bbraun.com', 0, 0, N'$2a$10$YUygSbrvIEPccy0SDE.ri.SfZ8tZiY1fJfIT6dDbiMophjRA.N2pS')
INSERT [dbo].[usuarios] ([id], [credentials_expired], [disabled], [email], [expired], [locked], [password]) VALUES (3, 0, 0, N'nixon.sanchez@bbraun.com', 0, 0, N'$2a$10$Tk7MOQZ/Hwet6yaV6l2hU.aT8FDqjKJwI7pTbbDgQA4v0hxWhiqdG')
INSERT [dbo].[usuarios] ([id], [credentials_expired], [disabled], [email], [expired], [locked], [password]) VALUES (4, 0, 0, N'gari.suca@bbraun.com', 0, 0, N'$2a$10$c6vGzerZ2kUz7S8B4WTxNewViYHNTF8EVa2Iiga68HS5JWnVcIG7a')
INSERT [dbo].[usuarios] ([id], [credentials_expired], [disabled], [email], [expired], [locked], [password]) VALUES (5, 0, 0, N'melvin.huaricacha@bbraun.com', 0, 0, N'$2a$10$gcJzSsnc4orS1bg9Sl/kMenWYuUEsdFFYzJsuePv6FFZi9FyZ/hN2')
INSERT [dbo].[usuarios] ([id], [credentials_expired], [disabled], [email], [expired], [locked], [password]) VALUES (6, 0, 0, N'renzo.porta@bbraun.com', 0, 0, N'$2a$10$8uhjebGBmseYMXvhnmW18.TSWdBJ0VmMdsXzwnmZcgGLLIFwZIEAa')
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
ALTER TABLE [dbo].[administradores]  WITH NOCHECK ADD  CONSTRAINT [fk_admin_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[administradores] CHECK CONSTRAINT [fk_admin_empleado]
GO
ALTER TABLE [dbo].[asistentes_almacen]  WITH NOCHECK ADD  CONSTRAINT [fk_asistAlm_almacen] FOREIGN KEY([idAlmacen])
REFERENCES [dbo].[almacen] ([id_almacen])
GO
ALTER TABLE [dbo].[asistentes_almacen] CHECK CONSTRAINT [fk_asistAlm_almacen]
GO
ALTER TABLE [dbo].[asistentes_almacen]  WITH NOCHECK ADD  CONSTRAINT [fk_asistAlm_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[asistentes_almacen] CHECK CONSTRAINT [fk_asistAlm_empleado]
GO
ALTER TABLE [dbo].[asistentes_compra]  WITH NOCHECK ADD  CONSTRAINT [fk_asistCompra_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[asistentes_compra] CHECK CONSTRAINT [fk_asistCompra_empleado]
GO
ALTER TABLE [dbo].[asistentes_venta]  WITH NOCHECK ADD  CONSTRAINT [fk_asistVenta_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[asistentes_venta] CHECK CONSTRAINT [fk_asistVenta_empleado]
GO
ALTER TABLE [dbo].[client_authentication_methods]  WITH CHECK ADD  CONSTRAINT [FKdd8u924e12nrrg4v9idc87h1o] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([id])
GO
ALTER TABLE [dbo].[client_authentication_methods] CHECK CONSTRAINT [FKdd8u924e12nrrg4v9idc87h1o]
GO
ALTER TABLE [dbo].[client_authorization_grant_types]  WITH CHECK ADD  CONSTRAINT [FKbbgcqer625holyqac4e4s9cfw] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([id])
GO
ALTER TABLE [dbo].[client_authorization_grant_types] CHECK CONSTRAINT [FKbbgcqer625holyqac4e4s9cfw]
GO
ALTER TABLE [dbo].[client_post_logout_redirect_uris]  WITH CHECK ADD  CONSTRAINT [FKekgptlrkbkjt5cfnertmsxpv] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([id])
GO
ALTER TABLE [dbo].[client_post_logout_redirect_uris] CHECK CONSTRAINT [FKekgptlrkbkjt5cfnertmsxpv]
GO
ALTER TABLE [dbo].[client_redirect_uris]  WITH CHECK ADD  CONSTRAINT [FKai301ylblo02p5381fgie7npr] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([id])
GO
ALTER TABLE [dbo].[client_redirect_uris] CHECK CONSTRAINT [FKai301ylblo02p5381fgie7npr]
GO
ALTER TABLE [dbo].[client_scopes]  WITH CHECK ADD  CONSTRAINT [FKh2i5jh2otc2cui0gyr6g6nc1x] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([id])
GO
ALTER TABLE [dbo].[client_scopes] CHECK CONSTRAINT [FKh2i5jh2otc2cui0gyr6g6nc1x]
GO
ALTER TABLE [dbo].[cliente]  WITH NOCHECK ADD  CONSTRAINT [fk_cliente_dep] FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamentos] ([id_departamento])
GO
ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [fk_cliente_dep]
GO
ALTER TABLE [dbo].[cotizaciones_compra]  WITH NOCHECK ADD  CONSTRAINT [fk_cotCompra_estado] FOREIGN KEY([id_estado])
REFERENCES [dbo].[estados] ([idEstado])
GO
ALTER TABLE [dbo].[cotizaciones_compra] CHECK CONSTRAINT [fk_cotCompra_estado]
GO
ALTER TABLE [dbo].[cotizaciones_compra]  WITH NOCHECK ADD  CONSTRAINT [fk_cotCompra_proveedor] FOREIGN KEY([id_solicitud_cotizacion], [id_proveedor])
REFERENCES [dbo].[detalles_cotizacion_compra] ([id_solicitud_cotizacion], [id_proveedor])
GO
ALTER TABLE [dbo].[cotizaciones_compra] CHECK CONSTRAINT [fk_cotCompra_proveedor]
GO
ALTER TABLE [dbo].[cotizaciones_venta]  WITH NOCHECK ADD  CONSTRAINT [fk_coti_departamento] FOREIGN KEY([id_departamento])
REFERENCES [dbo].[departamentos] ([id_departamento])
GO
ALTER TABLE [dbo].[cotizaciones_venta] CHECK CONSTRAINT [fk_coti_departamento]
GO
ALTER TABLE [dbo].[cotizaciones_venta]  WITH NOCHECK ADD  CONSTRAINT [fk_coti_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[cotizaciones_venta] CHECK CONSTRAINT [fk_coti_empleado]
GO
ALTER TABLE [dbo].[cotizaciones_venta]  WITH NOCHECK ADD  CONSTRAINT [fk_coti_Estado] FOREIGN KEY([id_estado])
REFERENCES [dbo].[estados] ([idEstado])
GO
ALTER TABLE [dbo].[cotizaciones_venta] CHECK CONSTRAINT [fk_coti_Estado]
GO
ALTER TABLE [dbo].[detalles_cotizacion_compra]  WITH NOCHECK ADD  CONSTRAINT [fk_detCotCompra_proveedor] FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[detalles_cotizacion_compra] CHECK CONSTRAINT [fk_detCotCompra_proveedor]
GO
ALTER TABLE [dbo].[detalles_cotizacion_compra]  WITH NOCHECK ADD  CONSTRAINT [fk_detCotCompra_soliCotizacion] FOREIGN KEY([id_solicitud_cotizacion])
REFERENCES [dbo].[solicitudes_cotizacion] ([id_solicitud_cotizacion])
GO
ALTER TABLE [dbo].[detalles_cotizacion_compra] CHECK CONSTRAINT [fk_detCotCompra_soliCotizacion]
GO
ALTER TABLE [dbo].[detalles_cotizacion_venta]  WITH NOCHECK ADD  CONSTRAINT [fk_detCotVenta_cotizacion] FOREIGN KEY([idCotizacion])
REFERENCES [dbo].[cotizaciones_venta] ([id_cotizacion])
GO
ALTER TABLE [dbo].[detalles_cotizacion_venta] CHECK CONSTRAINT [fk_detCotVenta_cotizacion]
GO
ALTER TABLE [dbo].[detalles_cotizacion_venta]  WITH NOCHECK ADD  CONSTRAINT [fk_detCotVenta_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[detalles_cotizacion_venta] CHECK CONSTRAINT [fk_detCotVenta_producto]
GO
ALTER TABLE [dbo].[detalles_hoja_ingreso]  WITH NOCHECK ADD  CONSTRAINT [fk_detHojaIngreso_hoja] FOREIGN KEY([idHoja])
REFERENCES [dbo].[hojas_de_ingreso] ([idHoja])
GO
ALTER TABLE [dbo].[detalles_hoja_ingreso] CHECK CONSTRAINT [fk_detHojaIngreso_hoja]
GO
ALTER TABLE [dbo].[detalles_hoja_ingreso]  WITH NOCHECK ADD  CONSTRAINT [fk_detHojaIngreso_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[detalles_hoja_ingreso] CHECK CONSTRAINT [fk_detHojaIngreso_producto]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [fk_empleado_cuenta] FOREIGN KEY([idCuenta])
REFERENCES [dbo].[usuarios] ([id])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [fk_empleado_cuenta]
GO
ALTER TABLE [dbo].[facturas_compra]  WITH NOCHECK ADD  CONSTRAINT [fk_factCompra_ordenCompra] FOREIGN KEY([idOrdenCompra])
REFERENCES [dbo].[ordenes_compra] ([id_orden_compra])
GO
ALTER TABLE [dbo].[facturas_compra] CHECK CONSTRAINT [fk_factCompra_ordenCompra]
GO
ALTER TABLE [dbo].[facturas_venta]  WITH NOCHECK ADD  CONSTRAINT [fk_facturas_ePago] FOREIGN KEY([idEstadoPago])
REFERENCES [dbo].[estados_pago] ([idEstadoPago])
GO
ALTER TABLE [dbo].[facturas_venta] CHECK CONSTRAINT [fk_facturas_ePago]
GO
ALTER TABLE [dbo].[facturas_venta]  WITH NOCHECK ADD  CONSTRAINT [fk_facturas_pedido] FOREIGN KEY([idPedido])
REFERENCES [dbo].[pedidos] ([idPedido])
GO
ALTER TABLE [dbo].[facturas_venta] CHECK CONSTRAINT [fk_facturas_pedido]
GO
ALTER TABLE [dbo].[guias_remision]  WITH NOCHECK ADD  CONSTRAINT [fk_guias_empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[asistentes_almacen] ([id_empleado])
GO
ALTER TABLE [dbo].[guias_remision] CHECK CONSTRAINT [fk_guias_empleado]
GO
ALTER TABLE [dbo].[guias_remision]  WITH NOCHECK ADD  CONSTRAINT [fk_guias_pedido] FOREIGN KEY([idPedido])
REFERENCES [dbo].[pedidos] ([idPedido])
GO
ALTER TABLE [dbo].[guias_remision] CHECK CONSTRAINT [fk_guias_pedido]
GO
ALTER TABLE [dbo].[hojas_de_ingreso]  WITH NOCHECK ADD  CONSTRAINT [fk_hoja_empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[asistentes_almacen] ([id_empleado])
GO
ALTER TABLE [dbo].[hojas_de_ingreso] CHECK CONSTRAINT [fk_hoja_empleado]
GO
ALTER TABLE [dbo].[lotes]  WITH NOCHECK ADD  CONSTRAINT [fk_lotes_eDisponibilidad] FOREIGN KEY([idEstadoDisponibilidad])
REFERENCES [dbo].[estados_disponibilidad] ([idEstadoDisponibilidad])
GO
ALTER TABLE [dbo].[lotes] CHECK CONSTRAINT [fk_lotes_eDisponibilidad]
GO
ALTER TABLE [dbo].[lotes]  WITH NOCHECK ADD  CONSTRAINT [fk_lotes_eOperativo] FOREIGN KEY([idEstadoOperativo])
REFERENCES [dbo].[estados_operativos] ([idEstadoOperativo])
GO
ALTER TABLE [dbo].[lotes] CHECK CONSTRAINT [fk_lotes_eOperativo]
GO
ALTER TABLE [dbo].[lotes]  WITH NOCHECK ADD  CONSTRAINT [fk_lotes_eSeguridad] FOREIGN KEY([idEstadoSeguridad])
REFERENCES [dbo].[estados_seguridad] ([idEstadoSeguridad])
GO
ALTER TABLE [dbo].[lotes] CHECK CONSTRAINT [fk_lotes_eSeguridad]
GO
ALTER TABLE [dbo].[lotes]  WITH NOCHECK ADD  CONSTRAINT [fk_lotes_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[lotes] CHECK CONSTRAINT [fk_lotes_producto]
GO
ALTER TABLE [dbo].[ordenes_compra]  WITH NOCHECK ADD  CONSTRAINT [fk_ordenes_compra] FOREIGN KEY([id_solicitud_cotizacion], [id_proveedor])
REFERENCES [dbo].[cotizaciones_compra] ([id_solicitud_cotizacion], [id_proveedor])
GO
ALTER TABLE [dbo].[ordenes_compra] CHECK CONSTRAINT [fk_ordenes_compra]
GO
ALTER TABLE [dbo].[pedidos]  WITH NOCHECK ADD  CONSTRAINT [fk_pedidos_cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [fk_pedidos_cliente]
GO
ALTER TABLE [dbo].[pedidos]  WITH NOCHECK ADD  CONSTRAINT [fk_pedidos_cotizacion] FOREIGN KEY([idCotizacion])
REFERENCES [dbo].[cotizaciones_venta] ([id_cotizacion])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [fk_pedidos_cotizacion]
GO
ALTER TABLE [dbo].[pedidos]  WITH NOCHECK ADD  CONSTRAINT [fk_pedidos_eEnvio] FOREIGN KEY([idEstadoEnvio])
REFERENCES [dbo].[estados_envio] ([idEstadoEnvio])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [fk_pedidos_eEnvio]
GO
ALTER TABLE [dbo].[pedidos]  WITH NOCHECK ADD  CONSTRAINT [fk_pedidos_mPago] FOREIGN KEY([idMetodoPago])
REFERENCES [dbo].[metodos_pago] ([idMetodoPago])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [fk_pedidos_mPago]
GO
ALTER TABLE [dbo].[pedidos]  WITH NOCHECK ADD  CONSTRAINT [fk_pedidos_transportista] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[transportistas] ([idEmpleado])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [fk_pedidos_transportista]
GO
ALTER TABLE [dbo].[productos]  WITH NOCHECK ADD  CONSTRAINT [fk_productos_almacen] FOREIGN KEY([id_almacen])
REFERENCES [dbo].[almacen] ([id_almacen])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [fk_productos_almacen]
GO
ALTER TABLE [dbo].[productos]  WITH NOCHECK ADD  CONSTRAINT [fk_productos_categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [fk_productos_categoria]
GO
ALTER TABLE [dbo].[productos]  WITH NOCHECK ADD  CONSTRAINT [fk_productos_forma] FOREIGN KEY([id_forma_farmaceutica])
REFERENCES [dbo].[formas_farmaceuticas] ([id_forma_farmaceutica])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [fk_productos_forma]
GO
ALTER TABLE [dbo].[proveedores]  WITH NOCHECK ADD  CONSTRAINT [kf_proveedor_caracteristica] FOREIGN KEY([idCaracteristica])
REFERENCES [dbo].[caracteristicas_proveedor] ([id_caracteristica])
GO
ALTER TABLE [dbo].[proveedores] CHECK CONSTRAINT [kf_proveedor_caracteristica]
GO
ALTER TABLE [dbo].[solicitudes_compra]  WITH NOCHECK ADD  CONSTRAINT [fk_soliCompra_aAlmacen] FOREIGN KEY([idAsistenteAlmacen])
REFERENCES [dbo].[asistentes_almacen] ([id_empleado])
GO
ALTER TABLE [dbo].[solicitudes_compra] CHECK CONSTRAINT [fk_soliCompra_aAlmacen]
GO
ALTER TABLE [dbo].[solicitudes_compra]  WITH NOCHECK ADD  CONSTRAINT [fk_soliCompra_aCompra] FOREIGN KEY([idAsistenteCompra])
REFERENCES [dbo].[asistentes_compra] ([id_empleado])
GO
ALTER TABLE [dbo].[solicitudes_compra] CHECK CONSTRAINT [fk_soliCompra_aCompra]
GO
ALTER TABLE [dbo].[solicitudes_compra]  WITH NOCHECK ADD  CONSTRAINT [fk_soliCompra_estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[estados] ([idEstado])
GO
ALTER TABLE [dbo].[solicitudes_compra] CHECK CONSTRAINT [fk_soliCompra_estado]
GO
ALTER TABLE [dbo].[solicitudes_cotizacion]  WITH NOCHECK ADD  CONSTRAINT [fk_soliCotizacion_soliCompra] FOREIGN KEY([id_solicitud_compra])
REFERENCES [dbo].[solicitudes_compra] ([idSolicitudCompra])
GO
ALTER TABLE [dbo].[solicitudes_cotizacion] CHECK CONSTRAINT [fk_soliCotizacion_soliCompra]
GO
ALTER TABLE [dbo].[transportistas]  WITH NOCHECK ADD  CONSTRAINT [fk_transportista_empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[transportistas] CHECK CONSTRAINT [fk_transportista_empleado]
GO
ALTER TABLE [dbo].[usuario_rol]  WITH CHECK ADD  CONSTRAINT [FKe3kd49gu3mhj2ty5kl44qsytp] FOREIGN KEY([rol_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[usuario_rol] CHECK CONSTRAINT [FKe3kd49gu3mhj2ty5kl44qsytp]
GO
ALTER TABLE [dbo].[usuario_rol]  WITH CHECK ADD  CONSTRAINT [FKktsemf1f6awjww4da0ocv4n32] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuarios] ([id])
GO
ALTER TABLE [dbo].[usuario_rol] CHECK CONSTRAINT [FKktsemf1f6awjww4da0ocv4n32]
GO
ALTER TABLE [dbo].[roles]  WITH CHECK ADD CHECK  (([rol]='ROL_TRANSPORTISTA' OR [rol]='ROL_ALMACEN' OR [rol]='ROL_COMPRA' OR [rol]='ROL_VENTA' OR [rol]='ROLE_ADMIN'))
GO
USE [master]
GO
ALTER DATABASE [BBraunPharmaDB] SET  READ_WRITE 
GO
