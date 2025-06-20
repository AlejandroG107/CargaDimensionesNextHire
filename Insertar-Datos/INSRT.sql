

USE [NH]

INSERT INTO [dbo].[area_plaza_areaplaza] (Codigo, Descripcion) VALUES
('AREA001', 'Área de Ingeniería'),
('AREA002', 'Área de Marketing'),
('AREA003', 'Área de Recursos Humanos'),
('AREA004', 'Área de Finanzas'),
('AREA005', 'Área de Ventas'),
('AREA006', 'Área de Tecnología'),
('AREA007', 'Área de Producción'),
('AREA008', 'Área de Logística'),
('AREA009', 'Área de Atención al Cliente'),
('AREA010', 'Área de Diseño'),
('AREA011', 'Área de Calidad'),
('AREA012', 'Área de Investigación'),
('AREA013', 'Área de Compras'),
('AREA014', 'Área Legal'),
('AREA015', 'Área de Salud Ocupacional'),
('AREA016', 'Área de Seguridad'),
('AREA017', 'Área de Auditoría'),
('AREA018', 'Área de Desarrollo'),
('AREA019', 'Área de Comunicaciones'),
('AREA020', 'Área de Administración'),
('AREA021', 'Área de Servicios Generales'),
('AREA022', 'Área de Innovación'),
('AREA023', 'Área de Educación'),
('AREA024', 'Área de Soporte Técnico'),
('AREA025', 'Área de Medio Ambiente'),
('AREA026', 'Área de Planificación'),
('AREA027', 'Área de Proyectos'),
('AREA028', 'Área de Relaciones Públicas'),
('AREA029', 'Área de Exportaciones'),
('AREA030', 'Área de Importaciones');

SELECT * FROM dbo.area_plaza_areaplaza

INSERT INTO [dbo].[cargo_cargo] (Codigo, Nombre_cargo) VALUES
('CARGO001', 'Ingeniero de Software'),
('CARGO002', 'Analista de Sistemas'),
('CARGO003', 'Gerente de Proyecto'),
('CARGO004', 'Especialista en Marketing'),
('CARGO005', 'Técnico de Soporte'),
('CARGO006', 'Contador'),
('CARGO007', 'Abogado Corporativo'),
('CARGO008', 'Director de Ventas'),
('CARGO009', 'Auxiliar Administrativo'),
('CARGO010', 'Diseñador Gráfico'),
('CARGO011', 'Especialista en Calidad'),
('CARGO012', 'Asistente de Recursos Humanos'),
('CARGO013', 'Consultor de Negocios'),
('CARGO014', 'Coordinador de Logística'),
('CARGO015', 'Supervisor de Producción'),
('CARGO016', 'Auditor Interno'),
('CARGO017', 'Jefe de Compras'),
('CARGO018', 'Analista Financiero'),
('CARGO019', 'Ingeniero Industrial'),
('CARGO020', 'Técnico de Mantenimiento'),
('CARGO021', 'Encargado de Seguridad'),
('CARGO022', 'Gerente de Operaciones'),
('CARGO023', 'Especialista en Ventas'),
('CARGO024', 'Desarrollador Web'),
('CARGO025', 'Analista de Datos'),
('CARGO026', 'Jefe de Proyectos'),
('CARGO027', 'Especialista en Soporte Técnico'),
('CARGO028', 'Asistente de Marketing'),
('CARGO029', 'Coordinador de Calidad'),
('CARGO030', 'Administrador de Base de Datos');

SELECT * FROM dbo.cargo_cargo


INSERT INTO [dbo].[departamentos_departamento] (Codigo, Nombre) VALUES
('DEP001', 'Managua'),
('DEP002', 'León'),
('DEP003', 'Granada'),
('DEP004', 'Chinandega'),
('DEP005', 'Masaya'),
('DEP006', 'Matagalpa'),
('DEP007', 'Jinotega'),
('DEP008', 'Estelí'),
('DEP009', 'Rivas'),
('DEP010', 'Boaco'),
('DEP011', 'Carazo'),
('DEP012', 'Chontales'),
('DEP013', 'Jalapa'),
('DEP014', 'Madriz'),
('DEP015', 'Nueva Segovia'),
('DEP016', 'Río San Juan'),
('DEP017', 'Atlántico Norte'),
('DEP018', 'Atlántico Sur'),
('DEP019', 'Matagalpa Norte'),
('DEP020', 'Matagalpa Sur'),
('DEP021', 'Ocotal'),
('DEP022', 'Somoto'),
('DEP023', 'Bluefields'),
('DEP024', 'Waslala'),
('DEP025', 'Waspam'),
('DEP026', 'San Carlos'),
('DEP027', 'El Rama'),
('DEP028', 'La Dalia'),
('DEP029', 'San Rafael del Norte'),
('DEP030', 'Puerto Cabezas');


SELECT * FROM dbo.departamentos_departamento

INSERT INTO [dbo].[habilidades_habilidades] (Codigo, Nombre_Habilidad) VALUES
('HAB001', 'Programación en Python'),
('HAB002', 'Gestión de Proyectos'),
('HAB003', 'Análisis de Datos'),
('HAB004', 'Diseño Gráfico'),
('HAB005', 'Marketing Digital'),
('HAB006', 'Soporte Técnico'),
('HAB007', 'Contabilidad'),
('HAB008', 'Redacción Técnica'),
('HAB009', 'Atención al Cliente'),
('HAB010', 'Ventas'),
('HAB011', 'Auditoría'),
('HAB012', 'Desarrollo Web'),
('HAB013', 'Administración de Base de Datos'),
('HAB014', 'Diseño UX/UI'),
('HAB015', 'Negociación'),
('HAB016', 'Manejo de ERP'),
('HAB017', 'Logística'),
('HAB018', 'Inglés Técnico'),
('HAB019', 'Técnicas de Ventas'),
('HAB020', 'Capacitación'),
('HAB021', 'Mantenimiento'),
('HAB022', 'Investigación'),
('HAB023', 'Seguridad Informática'),
('HAB024', 'Programación Java'),
('HAB025', 'Diseño Industrial'),
('HAB026', 'Trabajo en Equipo'),
('HAB027', 'Liderazgo'),
('HAB028', 'Gestión Financiera'),
('HAB029', 'Producción'),
('HAB030', 'Comunicación Efectiva');

SELECT * FROM dbo.habilidades_habilidades

INSERT INTO [dbo].[municipio_municipio] (Codigo, Nombre, Departamento_id) VALUES
('MUN001', 'Managua', 1),
('MUN002', 'Ciudad Sandino', 1),
('MUN003', 'León', 2),
('MUN004', 'El Jicaral', 2),
('MUN005', 'Granada', 3),
('MUN006', 'Nandaime', 3),
('MUN007', 'Chinandega', 4),
('MUN008', 'El Viejo', 4),
('MUN009', 'Masaya', 5),
('MUN010', 'Nindirí', 5),
('MUN011', 'Matagalpa', 6),
('MUN012', 'Esquipulas', 6),
('MUN013', 'Jinotega', 7),
('MUN014', 'Wiwilí', 7),
('MUN015', 'Estelí', 8),
('MUN016', 'La Trinidad', 8),
('MUN017', 'Rivas', 9),
('MUN018', 'San Jorge', 9),
('MUN019', 'Boaco', 10),
('MUN020', 'Camoapa', 10),
('MUN021', 'Jinotepe', 11),
('MUN022', 'San Marcos', 11),
('MUN023', 'Juigalpa', 12),
('MUN024', 'La Libertad', 12),
('MUN025', 'Jalapa', 13),
('MUN026', 'Madriz', 14),
('MUN027', 'Somoto', 15),
('MUN028', 'San Carlos', 16),
('MUN029', 'El Rama', 17),
('MUN030', 'Puerto Cabezas', 18);

SELECT * FROM dbo.municipio_municipio

INSERT INTO [dbo].[profesion_profesion] (Codigo, Nombre_Profesion) VALUES
('PROF001', 'Ingeniero de Software'),
('PROF002', 'Analista de Sistemas'),
('PROF003', 'Gerente de Proyecto'),
('PROF004', 'Especialista en Marketing'),
('PROF005', 'Técnico de Soporte'),
('PROF006', 'Contador'),
('PROF007', 'Abogado'),
('PROF008', 'Director de Ventas'),
('PROF009', 'Auxiliar Administrativo'),
('PROF010', 'Diseñador Gráfico'),
('PROF011', 'Especialista en Calidad'),
('PROF012', 'Asistente de Recursos Humanos'),
('PROF013', 'Consultor de Negocios'),
('PROF014', 'Coordinador de Logística'),
('PROF015', 'Supervisor de Producción'),
('PROF016', 'Auditor Interno'),
('PROF017', 'Jefe de Compras'),
('PROF018', 'Analista Financiero'),
('PROF019', 'Ingeniero Industrial'),
('PROF020', 'Técnico de Mantenimiento'),
('PROF021', 'Encargado de Seguridad'),
('PROF022', 'Gerente de Operaciones'),
('PROF023', 'Especialista en Ventas'),
('PROF024', 'Desarrollador Web'),
('PROF025', 'Analista de Datos'),
('PROF026', 'Jefe de Proyectos'),
('PROF027', 'Especialista en Soporte Técnico'),
('PROF028', 'Asistente de Marketing'),
('PROF029', 'Coordinador de Calidad'),
('PROF030', 'Administrador de Base de Datos');

SELECT * FROM dbo.profesion_profesion



INSERT INTO [dbo].[tipo_empresa_tipoempresa] ( Nombre) VALUES
( 'Salud'),
( 'Educación'),
( 'Finanzas'),
( 'Construcción'),
( 'Turismo'),
( 'Agroindustria'),
('Comercio'),
( 'Transporte'),
( 'Manufactura'),
( 'Consultoría'),
( 'Legal'),
( 'Telecomunicaciones'),
( 'Energía'),
( 'Entretenimiento'),
( 'Publicidad'),
( 'Investigación'),
( 'Logística'),
( 'Farmacéutica'),
( 'Minería'),
( 'Moda'),
( 'Automotriz'),
( 'Alimentos'),
( 'Banca'),
( 'Servicios Públicos'),
( 'Inmobiliaria'),
( 'Seguros'),
( 'Medio Ambiente'),
( 'Organización sin fines de lucro'),
( 'Otro');

SELECT * FROM dbo.tipo_empresa_tipoempresa


INSERT INTO [dbo].[empresa_empresa] (Codigo, Nombre_Empresa, Direccion, Telefono, Correo, ID_Municipio_id, ID_TipoEmpresa_id) VALUES
('EMP001', 'Tech Solutions SA', 'Av. Siempre Viva 123', '22223333', 'contacto@techsolutions.com', 1, 1),
('EMP002', 'Marketing Creativo', 'Calle Central 456', '22224444', 'info@marketingcreativo.com', 2, 2),
('EMP003', 'Construcciones Rápidas', 'Barrio Nuevo 789', '22225555', 'ventas@construccionesrapidas.com', 3, 3),
('EMP004', 'Servicios Financieros', 'Av. Libertad 101', '22226666', 'soporte@serviciosfinancieros.com', 4, 1),
('EMP005', 'Importadora Global', 'Zona Industrial 202', '22227777', 'importaciones@global.com', 5, 2),
('EMP006', 'Seguridad Total', 'Calle 5 Sur 303', '22228888', 'contacto@seguridadtotal.com', 6, 3),
('EMP007', 'Logística Express', 'Av. Norte 404', '22229999', 'logistica@express.com', 7, 1),
('EMP008', 'Agroexport SA', 'Zona Rural 505', '22221000', 'export@agroexport.com', 8, 2),
('EMP009', 'Salud y Vida', 'Calle Principal 606', '22221111', 'contacto@saludyvida.com', 9, 3),
('EMP010', 'Educación Avanzada', 'Av. Académica 707', '22221222', 'info@educacionavanzada.com', 10, 1),
('EMP011', 'Innovación Tecnológica', 'Parque Industrial 808', '22221333', 'innovacion@tecnologica.com', 11, 2),
('EMP012', 'Consultores Empresariales', 'Centro Comercial 909', '22221444', 'consultores@empresariales.com', 12, 3),
('EMP013', 'Servicios Legales', 'Calle Justicia 100', '22221555', 'legal@servicios.com', 13, 1),
('EMP014', 'Desarrollo Web', 'Zona Tecnológica 111', '22221666', 'web@desarrolloweb.com', 14, 2),
('EMP015', 'Ventas Globales', 'Av. Comercio 121', '22221777', 'ventas@globales.com', 15, 3),
('EMP016', 'Producción Industrial', 'Barrio Industrial 131', '22221888', 'produccion@industrial.com', 16, 1),
('EMP017', 'Atención al Cliente', 'Calle Servicio 141', '22221999', 'contacto@cliente.com', 17, 2),
('EMP018', 'Diseño Creativo', 'Av. Arte 151', '22222000', 'diseno@creativo.com', 18, 3),
('EMP019', 'Calidad Total', 'Zona Calidad 161', '22222111', 'calidad@total.com', 19, 1),
('EMP020', 'Investigación y Desarrollo', 'Av. Ciencia 171', '22222222', 'investigacion@desarrollo.com', 20, 2),
('EMP021', 'Compras y Abastecimiento', 'Calle Mercado 181', '22222333', 'compras@abastecimiento.com', 21, 3),
('EMP022', 'Auditoría y Control', 'Zona Auditoría 191', '22222444', 'auditoria@control.com', 22, 1),
('EMP023', 'Proyectos Especiales', 'Av. Proyectos 201', '22222555', 'proyectos@especiales.com', 23, 2),
('EMP024', 'Relaciones Públicas', 'Calle Comunicación 211', '22222666', 'relaciones@publicas.com', 24, 3),
('EMP025', 'Exportaciones Norte', 'Zona Exportación 221', '22222777', 'exportaciones@norte.com', 25, 1),
('EMP026', 'Importaciones Sur', 'Av. Importación 231', '22222888', 'importaciones@sur.com', 26, 2),
('EMP027', 'Tecnología Avanzada', 'Parque Tecnológico 241', '22222999', 'tecnologia@avanzada.com', 27, 3),
('EMP028', 'Servicios Generales', 'Calle Servicios 251', '22223000', 'servicios@generales.com', 28, 1),
('EMP029', 'Innovación y Creatividad', 'Zona Innovación 261', '22223111', 'innovacion@creatividad.com', 29, 2),
('EMP030', 'Educación Continua', 'Av. Educación 271', '22223222', 'educacion@continua.com', 30, 3);




INSERT INTO [dbo].[plaza_plaza] 
(Codigo, Descripcion, Salario, ID_AreaPlaza_id, ID_Cargo_id, ID_Empresa_id) VALUES
('PLZ001', 'Ingeniero de Software Senior', 2500.00, 1, 1, 1),
('PLZ002', 'Analista de Sistemas Junior', 1400.00, 1, 2, 2),
('PLZ003', 'Gerente de Proyecto TI', 3000.00, 1, 3, 3),
('PLZ004', 'Especialista en Marketing Digital', 1800.00, 2, 4, 4),
('PLZ005', 'Técnico de Soporte IT', 1200.00, 6, 5, 5),
('PLZ006', 'Contador General', 2000.00, 4, 6, 6),
('PLZ007', 'Abogado Corporativo', 2700.00, 14, 7, 7),
('PLZ008', 'Director de Ventas Regional', 3500.00, 5, 8, 8),
('PLZ009', 'Auxiliar Administrativo', 1100.00, 20, 9, 9),
('PLZ010', 'Diseñador Gráfico Senior', 1600.00, 10, 10, 10),
('PLZ011', 'Especialista en Control de Calidad', 1900.00, 11, 11, 11),
('PLZ012', 'Asistente de Recursos Humanos', 1300.00, 3, 12, 12),
('PLZ013', 'Consultor de Negocios', 2800.00, 19, 13, 13),
('PLZ014', 'Coordinador de Logística', 2100.00, 8, 14, 14),
('PLZ015', 'Supervisor de Producción', 2200.00, 7, 15, 15),
('PLZ016', 'Auditor Interno', 2300.00, 17, 16, 16),
('PLZ017', 'Jefe de Compras', 2400.00, 13, 17, 17),
('PLZ018', 'Analista Financiero', 2000.00, 4, 18, 18),
('PLZ019', 'Ingeniero Industrial', 2100.00, 1, 19, 19),
('PLZ020', 'Técnico de Mantenimiento', 1500.00, 21, 20, 20),
('PLZ021', 'Encargado de Seguridad', 1700.00, 16, 21, 21),
('PLZ022', 'Gerente de Operaciones', 3200.00, 20, 22, 22),
('PLZ023', 'Especialista en Ventas', 1800.00, 5, 23, 23),
('PLZ024', 'Desarrollador Web', 1900.00, 6, 24, 24),
('PLZ025', 'Analista de Datos', 2000.00, 18, 25, 25),
('PLZ026', 'Jefe de Proyectos', 2600.00, 27, 26, 26),
('PLZ027', 'Especialista en Soporte Técnico', 1500.00, 24, 27, 27),
('PLZ028', 'Asistente de Marketing', 1300.00, 2, 28, 28),
('PLZ029', 'Coordinador de Calidad', 2000.00, 11, 29, 29),
('PLZ030', 'Administrador de Base de Datos', 2200.00, 6, 30, 30);





INSERT INTO [dbo].[postulante_postulante] 
(Cedula, Nombre_Postulante, Apellidos, Correo, Telefono, Fecha_Nacimiento, Sexo, Direccion, Experiencia_Laboral, ID_Profesion_id, ID_Municipio_id) 
VALUES
('POS001', 'Carlos', 'Ramirez', 'carlos.ramirez@email.com', '55510001', '1990-01-15', 'M', 'Managua, Zona 1', '5 años en ventas', 1, 1),
('POS002', 'Maria', 'Lopez', 'maria.lopez@email.com', '55510002', '1992-03-22', 'F', 'Leon, Calle Central', '3 años como administradora', 2, 2),
('POS003', 'Juan', 'Perez', 'juan.perez@email.com', '55510003', '1988-07-09', 'M', 'Masaya, Barrio San Juan', '8 años en construcción', 3, 3),
('POS004', 'Ana', 'Gonzalez', 'ana.gonzalez@email.com', '55510004', '1995-11-30', 'F', 'Chinandega, Reparto La Luz', '2 años en contabilidad', 4, 4),
('POS005', 'Luis', 'Martinez', 'luis.martinez@email.com', '55510005', '1991-05-21', 'M', 'Matagalpa, Zona Alta', '4 años en marketing', 5, 5),
('POS006', 'Sofia', 'Rodriguez', 'sofia.rodriguez@email.com', '55510006', '1993-08-14', 'F', 'Estelí, Calle Real', '3 años como docente', 6, 6),
('POS007', 'Jorge', 'Fernandez', 'jorge.fernandez@email.com', '55510007', '1987-12-03', 'M', 'Jinotega, Sector Oeste', '6 años como ingeniero civil', 7, 7),
('POS008', 'Elena', 'Sanchez', 'elena.sanchez@email.com', '55510008', '1994-04-19', 'F', 'Granada, Centro Histórico', '1 año como asistente', 8, 8),
('POS009', 'Miguel', 'Torres', 'miguel.torres@email.com', '55510009', '1989-09-25', 'M', 'Masatepe, Zona Sur', '7 años en sistemas', 9, 9),
('POS010', 'Laura', 'Vargas', 'laura.vargas@email.com', '55510010', '1996-02-11', 'F', 'Managua, Villa Progreso', '2 años como analista', 10, 10),
('POS011', 'Pedro', 'Castillo', 'pedro.castillo@email.com', '55510011', '1990-06-05', 'M', 'Diriamba, Barrio El Carmen', '4 años en logística', 11, 11),
('POS012', 'Gabriela', 'Morales', 'gabriela.morales@email.com', '55510012', '1993-07-18', 'F', 'Juigalpa, Zona Norte', '2 años como recepcionista', 12, 12),
('POS013', 'Raul', 'Ramirez', 'raul.ramirez@email.com', '55510013', '1986-10-29', 'M', 'Ocotal, Sector 3', '10 años en mecánica', 13, 13),
('POS014', 'Isabel', 'Fernandez', 'isabel.fernandez@email.com', '55510014', '1994-03-23', 'F', 'Boaco, El Empalme', '3 años en finanzas', 14, 14),
('POS015', 'Oscar', 'Mendoza', 'oscar.mendoza@email.com', '55510015', '1988-08-30', 'M', 'Rivas, Barrio Nuevo', '5 años en diseño gráfico', 15, 15),
('POS016', 'Veronica', 'Lopez', 'veronica.lopez@email.com', '55510016', '1991-12-12', 'F', 'Tipitapa, Sector Este', '4 años como secretaria', 16, 16),
('POS017', 'Ricardo', 'Jimenez', 'ricardo.jimenez@email.com', '55510017', '1992-09-14', 'M', 'Bluefields, Calle del Puerto', '6 años como técnico', 17, 17),
('POS018', 'Patricia', 'Diaz', 'patricia.diaz@email.com', '55510018', '1990-11-21', 'F', 'Corn Island, Zona Central', '5 años en hotelería', 18, 18),
('POS019', 'Fernando', 'Gomez', 'fernando.gomez@email.com', '55510019', '1987-01-06', 'M', 'Siuna, Barrio San Pedro', '7 años en electricidad', 19, 19),
('POS020', 'Natalia', 'Herrera', 'natalia.herrera@email.com', '55510020', '1995-04-10', 'F', 'Managua, Los Robles', '3 años en docencia', 20, 20),
('POS021', 'Hector', 'Ramirez', 'hector.ramirez@email.com', '55510021', '1993-07-07', 'M', 'Estelí, Barrio El Rosario', '4 años como supervisor', 21, 21),
('POS022', 'Monica', 'Santos', 'monica.santos@email.com', '1991-05-25', '55510022', 'F', 'Matagalpa, Reparto San José', '3 años en calidad', 22, 22),
('POS023', 'Andres', 'Lopez', 'andres.lopez@email.com', '1989-09-15', '55510023', 'M', 'Jinotepe, Calle Principal', '6 años en logística', 23, 23),
('POS024', 'Diana', 'Cruz', 'diana.cruz@email.com', '1994-02-28', '55510024', 'F', 'Masaya, Reparto Las Flores', '2 años en servicio al cliente', 24, 24),
('POS025', 'Victor', 'Salazar', 'victor.salazar@email.com', '1990-03-03', '55510025', 'M', 'Chinandega, Zona Industrial', '8 años en producción', 25, 25),
('POS026', 'Jessica', 'Ortiz', 'jessica.ortiz@email.com', '1992-06-12', '55510026', 'F', 'Boaco, Centro', '3 años como contadora', 26, 26),
('POS027', 'Enrique', 'Castro', 'enrique.castro@email.com', '1988-10-20', '55510027', 'M', 'Nueva Guinea, Barrio 19 de Julio', '5 años como auditor', 27, 27),
('POS028', 'Karen', 'Vega', 'karen.vega@email.com', '1991-08-09', '55510028', 'F', 'Río Blanco, Zona Alta', '4 años en análisis de datos', 28, 28),
('POS029', 'Alfredo', 'Lopez', 'alfredo.lopez@email.com', '1987-04-16', '55510029', 'M', 'Somoto, Calle Bolívar', '10 años en redes', 29, 29);
('POS030', 'Maria', 'Ruiz', 'maria.ruiz@email.com', '1995-01-27', '55510030', 'F', 'San Carlos, Reparto Central', '3 años como asesora', 30, 30);




SELECT * FROM INT.Lineage 
SELECT * from int.IncrementalLoads 
SELECT * FROM dbo.[dbo].[Staging_Empresa] 
SELECT COUNT(1) FROM DBO.DIM_Product





