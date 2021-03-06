

/*Alejandro Morillo  ------------- 16-EIIN-1-068 -----   0541*/
/*Alex Núñez --------------------- 16-MIIT-1-013 -----   0541*/
/*Oscar Jimenez ------------------ 16-EIIN-1-067 -----   0541*/


USE [master]
GO
/****** Object:  Database [ProyectoFinalBD]    Script Date: 29/11/2017 16:45:43 ******/
CREATE DATABASE [ProyectoFinalBD]
 
USE [ProyectoFinalBD]
GO
/****** Object:  Table [dbo].[Piezas]    Script Date: 29/11/2017 16:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Piezas](
	[CodigoPieza] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
 CONSTRAINT [PK_Piezas] PRIMARY KEY CLUSTERED 
(
	[CodigoPieza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 29/11/2017 16:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[IDProveedor] [char](10) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[IDProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suministra]    Script Date: 29/11/2017 16:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suministra](
	[CodigoPieza] [int] NULL,
	[IDProveedor] [char](10) NULL,
	[Precio] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Piezas] ([CodigoPieza], [Nombre]) VALUES (1, N'Abanico')
INSERT [dbo].[Piezas] ([CodigoPieza], [Nombre]) VALUES (2, N'Muebles')
INSERT [dbo].[Piezas] ([CodigoPieza], [Nombre]) VALUES (3, N'Puerta')
INSERT [dbo].[Piezas] ([CodigoPieza], [Nombre]) VALUES (4, N'Manguera')
INSERT [dbo].[Piezas] ([CodigoPieza], [Nombre]) VALUES (5, N'Mesa')
INSERT [dbo].[Piezas] ([CodigoPieza], [Nombre]) VALUES (6, N'Cama')
INSERT [dbo].[Piezas] ([CodigoPieza], [Nombre]) VALUES (7, N'Lavadora')
INSERT [dbo].[Piezas] ([CodigoPieza], [Nombre]) VALUES (8, N'Espejo')
INSERT [dbo].[Piezas] ([CodigoPieza], [Nombre]) VALUES (9, N'Licuadora')
INSERT [dbo].[Piezas] ([CodigoPieza], [Nombre]) VALUES (10, N'Escalera')
INSERT [dbo].[Proveedores] ([IDProveedor], [Nombre]) VALUES (N'1         ', N'Cerveceria Presidente')
INSERT [dbo].[Proveedores] ([IDProveedor], [Nombre]) VALUES (N'10        ', N'Plaza Lama')
INSERT [dbo].[Proveedores] ([IDProveedor], [Nombre]) VALUES (N'2         ', N'Coca-Cola')
INSERT [dbo].[Proveedores] ([IDProveedor], [Nombre]) VALUES (N'3         ', N'Café Santo Domingo')
INSERT [dbo].[Proveedores] ([IDProveedor], [Nombre]) VALUES (N'4         ', N'Cocoa Muné')
INSERT [dbo].[Proveedores] ([IDProveedor], [Nombre]) VALUES (N'5         ', N'O&M')
INSERT [dbo].[Proveedores] ([IDProveedor], [Nombre]) VALUES (N'6         ', N'Metaldón')
INSERT [dbo].[Proveedores] ([IDProveedor], [Nombre]) VALUES (N'7         ', N'Ferreteria H&A')
INSERT [dbo].[Proveedores] ([IDProveedor], [Nombre]) VALUES (N'8         ', N'Banco Central')
INSERT [dbo].[Proveedores] ([IDProveedor], [Nombre]) VALUES (N'9         ', N'Provocón')
INSERT [dbo].[Suministra] ([CodigoPieza], [IDProveedor], [Precio]) VALUES (1, N'10        ', N'1000      ')
INSERT [dbo].[Suministra] ([CodigoPieza], [IDProveedor], [Precio]) VALUES (2, N'9         ', N'2000      ')
INSERT [dbo].[Suministra] ([CodigoPieza], [IDProveedor], [Precio]) VALUES (3, N'8         ', N'3000      ')
INSERT [dbo].[Suministra] ([CodigoPieza], [IDProveedor], [Precio]) VALUES (4, N'7         ', N'4000      ')
INSERT [dbo].[Suministra] ([CodigoPieza], [IDProveedor], [Precio]) VALUES (5, N'6         ', N'5000      ')
INSERT [dbo].[Suministra] ([CodigoPieza], [IDProveedor], [Precio]) VALUES (6, N'5         ', N'6000      ')
INSERT [dbo].[Suministra] ([CodigoPieza], [IDProveedor], [Precio]) VALUES (7, N'4         ', N'7000      ')
INSERT [dbo].[Suministra] ([CodigoPieza], [IDProveedor], [Precio]) VALUES (8, N'3         ', N'8000      ')
INSERT [dbo].[Suministra] ([CodigoPieza], [IDProveedor], [Precio]) VALUES (9, N'2         ', N'9000      ')
INSERT [dbo].[Suministra] ([CodigoPieza], [IDProveedor], [Precio]) VALUES (10, N'1         ', N'10000     ')
ALTER TABLE [dbo].[Suministra]  WITH CHECK ADD  CONSTRAINT [FK_Suministra_Piezas] FOREIGN KEY([CodigoPieza])
REFERENCES [dbo].[Piezas] ([CodigoPieza])
GO
ALTER TABLE [dbo].[Suministra] CHECK CONSTRAINT [FK_Suministra_Piezas]
GO
ALTER TABLE [dbo].[Suministra]  WITH CHECK ADD  CONSTRAINT [FK_Suministra_Proveedores] FOREIGN KEY([IDProveedor])
REFERENCES [dbo].[Proveedores] ([IDProveedor])
GO
ALTER TABLE [dbo].[Suministra] CHECK CONSTRAINT [FK_Suministra_Proveedores]
GO
USE [master]
GO
ALTER DATABASE [ProyectoFinalBD] SET  READ_WRITE 
GO
