
CREATE DATABASE NH
GO
USE NH
GO
/****** Object:  Table [dbo].[area_plaza_areaplaza]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[area_plaza_areaplaza](
	[ID_AreaPLAZA] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](16) NOT NULL,
	[Descripcion] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_AreaPLAZA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cargo_cargo]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargo_cargo](
	[ID_Cargo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](20) NOT NULL,
	[Nombre_cargo] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departamentos_departamento]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamentos_departamento](
	[ID_Departamento] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empresa_empresa]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresa_empresa](
	[ID_Empresa] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](50) NOT NULL,
	[Nombre_Empresa] [nvarchar](100) NOT NULL,
	[Direccion] [nvarchar](200) NOT NULL,
	[Telefono] [nvarchar](16) NOT NULL,
	[Correo] [nvarchar](100) NOT NULL,
	[ID_Municipio_id] [bigint] NOT NULL,
	[ID_TipoEmpresa_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[habilidades_detallehabilidades]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[habilidades_detallehabilidades](
	[ID_DetalleHabilidades] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](300) NOT NULL,
	[ID_Postulante_id] [int] NOT NULL,
	[Id_Habilidades_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DetalleHabilidades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[habilidades_habilidades]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[habilidades_habilidades](
	[ID_Habilidade] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](20) NOT NULL,
	[Nombre_Habilidad] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Habilidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[municipio_municipio]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[municipio_municipio](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Departamento_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[plaza_detalleplaza]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[plaza_detalleplaza](
	[ID_DetallePlaza] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](300) NOT NULL,
	[Id_Plaza_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DetallePlaza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[plaza_plaza]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[plaza_plaza](
	[ID_Plaza] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](16) NOT NULL,
	[Salario] [float] NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
	[ID_AreaPLAZA_id] [int] NOT NULL,
	[ID_Cargo_id] [int] NOT NULL,
	[ID_Empresa_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Plaza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[postulante_detallepostulante]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[postulante_detallepostulante](
	[ID_DETALLE_POSTULANTE] [int] IDENTITY(1,1) NOT NULL,
	[Comentarios] [nvarchar](200) NOT NULL,
	[ID_DetallePlaza_id] [int] NOT NULL,
	[ID_Postulante_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DETALLE_POSTULANTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[postulante_postulante]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[postulante_postulante](
	[ID_Postulante] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [nvarchar](24) NOT NULL,
	[Nombre_Postulante] [nvarchar](56) NOT NULL,
	[Apellidos] [nvarchar](56) NOT NULL,
	[Sexo] [nvarchar](17) NOT NULL,
	[Correo] [nvarchar](100) NOT NULL,
	[Telefono] [nvarchar](16) NOT NULL,
	[Fecha_Nacimiento] [nvarchar](24) NOT NULL,
	[Direccion] [nvarchar](100) NOT NULL,
	[Experiencia_Laboral] [nvarchar](100) NOT NULL,
	[ID_Municipio_id] [bigint] NOT NULL,
	[ID_Profesion_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Postulante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profesion_profesion]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profesion_profesion](
	[ID_Profesion] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](20) NOT NULL,
	[Nombre_Profesion] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Profesion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_empresa_tipoempresa]    Script Date: 13/6/2025 21:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_empresa_tipoempresa](
	[ID_TipoEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TipoEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[empresa_empresa]  WITH CHECK ADD  CONSTRAINT [empresa_empresa_ID_Municipio_id_6ab80613_fk_municipio_municipio_id] FOREIGN KEY([ID_Municipio_id])
REFERENCES [dbo].[municipio_municipio] ([id])
GO
ALTER TABLE [dbo].[empresa_empresa] CHECK CONSTRAINT [empresa_empresa_ID_Municipio_id_6ab80613_fk_municipio_municipio_id]
GO
ALTER TABLE [dbo].[empresa_empresa]  WITH CHECK ADD  CONSTRAINT [empresa_empresa_ID_TipoEmpresa_id_720b5637_fk_tipo_empresa_tipoempresa_ID_TipoEmpresa] FOREIGN KEY([ID_TipoEmpresa_id])
REFERENCES [dbo].[tipo_empresa_tipoempresa] ([ID_TipoEmpresa])
GO
ALTER TABLE [dbo].[empresa_empresa] CHECK CONSTRAINT [empresa_empresa_ID_TipoEmpresa_id_720b5637_fk_tipo_empresa_tipoempresa_ID_TipoEmpresa]
GO
ALTER TABLE [dbo].[habilidades_detallehabilidades]  WITH CHECK ADD  CONSTRAINT [habilidades_detallehabilidades_Id_Habilidades_id_32a14d4d_fk_habilidades_habilidades_ID_Habilidade] FOREIGN KEY([Id_Habilidades_id])
REFERENCES [dbo].[habilidades_habilidades] ([ID_Habilidade])
GO
ALTER TABLE [dbo].[habilidades_detallehabilidades] CHECK CONSTRAINT [habilidades_detallehabilidades_Id_Habilidades_id_32a14d4d_fk_habilidades_habilidades_ID_Habilidade]
GO
ALTER TABLE [dbo].[habilidades_detallehabilidades]  WITH CHECK ADD  CONSTRAINT [habilidades_detallehabilidades_ID_Postulante_id_ac1a5ce1_fk_postulante_postulante_ID_Postulante] FOREIGN KEY([ID_Postulante_id])
REFERENCES [dbo].[postulante_postulante] ([ID_Postulante])
GO
ALTER TABLE [dbo].[habilidades_detallehabilidades] CHECK CONSTRAINT [habilidades_detallehabilidades_ID_Postulante_id_ac1a5ce1_fk_postulante_postulante_ID_Postulante]
GO
ALTER TABLE [dbo].[municipio_municipio]  WITH CHECK ADD  CONSTRAINT [municipio_municipio_Departamento_id_0a52e1a1_fk_departamentos_departamento_ID_Departamento] FOREIGN KEY([Departamento_id])
REFERENCES [dbo].[departamentos_departamento] ([ID_Departamento])
GO
ALTER TABLE [dbo].[municipio_municipio] CHECK CONSTRAINT [municipio_municipio_Departamento_id_0a52e1a1_fk_departamentos_departamento_ID_Departamento]
GO
ALTER TABLE [dbo].[plaza_detalleplaza]  WITH CHECK ADD  CONSTRAINT [plaza_detalleplaza_Id_Plaza_id_3dbb6423_fk_plaza_plaza_ID_Plaza] FOREIGN KEY([Id_Plaza_id])
REFERENCES [dbo].[plaza_plaza] ([ID_Plaza])
GO
ALTER TABLE [dbo].[plaza_detalleplaza] CHECK CONSTRAINT [plaza_detalleplaza_Id_Plaza_id_3dbb6423_fk_plaza_plaza_ID_Plaza]
GO
ALTER TABLE [dbo].[plaza_plaza]  WITH CHECK ADD  CONSTRAINT [plaza_plaza_ID_AreaPLAZA_id_c8d80c19_fk_area_plaza_areaplaza_ID_AreaPLAZA] FOREIGN KEY([ID_AreaPLAZA_id])
REFERENCES [dbo].[area_plaza_areaplaza] ([ID_AreaPLAZA])
GO
ALTER TABLE [dbo].[plaza_plaza] CHECK CONSTRAINT [plaza_plaza_ID_AreaPLAZA_id_c8d80c19_fk_area_plaza_areaplaza_ID_AreaPLAZA]
GO
ALTER TABLE [dbo].[plaza_plaza]  WITH CHECK ADD  CONSTRAINT [plaza_plaza_ID_Cargo_id_6945cc59_fk_cargo_cargo_ID_Cargo] FOREIGN KEY([ID_Cargo_id])
REFERENCES [dbo].[cargo_cargo] ([ID_Cargo])
GO
ALTER TABLE [dbo].[plaza_plaza] CHECK CONSTRAINT [plaza_plaza_ID_Cargo_id_6945cc59_fk_cargo_cargo_ID_Cargo]
GO
ALTER TABLE [dbo].[plaza_plaza]  WITH CHECK ADD  CONSTRAINT [plaza_plaza_ID_Empresa_id_4661e0a7_fk_empresa_empresa_ID_Empresa] FOREIGN KEY([ID_Empresa_id])
REFERENCES [dbo].[empresa_empresa] ([ID_Empresa])
GO
ALTER TABLE [dbo].[plaza_plaza] CHECK CONSTRAINT [plaza_plaza_ID_Empresa_id_4661e0a7_fk_empresa_empresa_ID_Empresa]
GO
ALTER TABLE [dbo].[postulante_detallepostulante]  WITH CHECK ADD  CONSTRAINT [postulante_detallepostulante_ID_DetallePlaza_id_922c4187_fk_plaza_detalleplaza_ID_DetallePlaza] FOREIGN KEY([ID_DetallePlaza_id])
REFERENCES [dbo].[plaza_detalleplaza] ([ID_DetallePlaza])
GO
ALTER TABLE [dbo].[postulante_detallepostulante] CHECK CONSTRAINT [postulante_detallepostulante_ID_DetallePlaza_id_922c4187_fk_plaza_detalleplaza_ID_DetallePlaza]
GO
ALTER TABLE [dbo].[postulante_detallepostulante]  WITH CHECK ADD  CONSTRAINT [postulante_detallepostulante_ID_Postulante_id_cf01a679_fk_postulante_postulante_ID_Postulante] FOREIGN KEY([ID_Postulante_id])
REFERENCES [dbo].[postulante_postulante] ([ID_Postulante])
GO
ALTER TABLE [dbo].[postulante_detallepostulante] CHECK CONSTRAINT [postulante_detallepostulante_ID_Postulante_id_cf01a679_fk_postulante_postulante_ID_Postulante]
GO
ALTER TABLE [dbo].[postulante_postulante]  WITH CHECK ADD  CONSTRAINT [postulante_postulante_ID_Municipio_id_a82943e7_fk_municipio_municipio_id] FOREIGN KEY([ID_Municipio_id])
REFERENCES [dbo].[municipio_municipio] ([id])
GO
ALTER TABLE [dbo].[postulante_postulante] CHECK CONSTRAINT [postulante_postulante_ID_Municipio_id_a82943e7_fk_municipio_municipio_id]
GO
ALTER TABLE [dbo].[postulante_postulante]  WITH CHECK ADD  CONSTRAINT [postulante_postulante_ID_Profesion_id_69da56c2_fk_profesion_profesion_ID_Profesion] FOREIGN KEY([ID_Profesion_id])
REFERENCES [dbo].[profesion_profesion] ([ID_Profesion])
GO
ALTER TABLE [dbo].[postulante_postulante] CHECK CONSTRAINT [postulante_postulante_ID_Profesion_id_69da56c2_fk_profesion_profesion_ID_Profesion]
GO
