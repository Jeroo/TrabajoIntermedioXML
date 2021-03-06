USE [XMLValidateWithXSD]
GO
/****** Object:  Table [dbo].[XMLTranformFailedEntry]    Script Date: 12/27/2017 10:48:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XMLTranformFailedEntry](
	[Id] [int] NULL,
	[Reason] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblXMLDataInformation]    Script Date: 12/27/2017 10:48:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblXMLDataInformation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[XMLData] [xml] NULL,
	[LoadedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblXMLDataInformation] ON
INSERT [dbo].[tblXMLDataInformation] ([Id], [XMLData], [LoadedDateTime]) VALUES (1, N'<!--DOCTYPE Lista SYSTEM "lista_asignatura.dtd"--><Lista xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="lista_asignaturas_schema.xsd"><Alumno id="1"><Nombre>Arturo</Nombre><Apellidos>Pérez Rubio</Apellidos></Alumno><Alumno id="2"><Apellidos>Rodríguez García</Apellidos><Nombre>Manuel</Nombre></Alumno><Alumno id="6"><Apellidos>Lozano Gómez</Apellidos><Nombre>Sara</Nombre></Alumno><Asignatura codigo="059">
        Inglés 
        <Día>Lunes</Día><Hora>12:00</Hora></Asignatura></Lista>', CAST(0x0000A856009D30EE AS DateTime))
INSERT [dbo].[tblXMLDataInformation] ([Id], [XMLData], [LoadedDateTime]) VALUES (4, N'<!--DOCTYPE Lista SYSTEM "1.3_lista_asignatura.dtd"--><Lista xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="1.3_lista_asignaturas_schema.xsd"><!--Lista--><Alumno id="1"><Nombre>Arturo</Nombre><Apellidos>Pérez Rubio</Apellidos></Alumno><Alumno id="3"><Nombre>Salvador</Nombre></Alumno><Alumno id="2"><Apellidos>Rodríguez García</Apellidos><Nombre>Manuel</Nombre></Alumno><Alumno id="6"><Apellidos>Lozano Gómez</Apellidos><Nombre>Sara</Nombre></Alumno><Asignatura codigo="059">
        Inglés 
        <Día>Nada</Día><Hora>12:00</Hora></Asignatura><Asignatura codigo="059">
        Frances 
        <Día>Domingo</Día></Asignatura></Lista>', CAST(0x0000A856009DFD69 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblXMLDataInformation] OFF
/****** Object:  XmlSchemaCollection [dbo].[lista_asignaturas_schema]    Script Date: 12/27/2017 10:48:48 ******/
CREATE XML SCHEMA COLLECTION [dbo].[lista_asignaturas_schema] AS N'<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" elementFormDefault="qualified"><xsd:element name="Lista"><xsd:complexType><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:sequence><xsd:element name="Alumno" type="modelAlumno" minOccurs="0" maxOccurs="unbounded" /><xsd:element name="Asignatura" type="modelAsignatura" minOccurs="0" maxOccurs="unbounded" /></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:element><xsd:complexType name="modelAlumno"><xsd:complexContent><xsd:restriction base="xsd:anyType"><xsd:choice maxOccurs="unbounded"><xsd:element name="Apellidos" type="xsd:string" minOccurs="0" maxOccurs="unbounded" /><xsd:element name="Nombre" type="xsd:string" minOccurs="0" maxOccurs="unbounded" /></xsd:choice><xsd:attribute name="id" type="xsd:integer" /></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:complexType name="modelAsignatura" mixed="true"><xsd:complexContent mixed="true"><xsd:restriction base="xsd:anyType"><xsd:choice maxOccurs="unbounded"><xsd:element name="Hora" type="xsd:string" minOccurs="0" maxOccurs="unbounded" /><xsd:element name="Día" type="modeloDias" minOccurs="0" maxOccurs="unbounded" /></xsd:choice><xsd:attribute name="codigo" type="xsd:string" /></xsd:restriction></xsd:complexContent></xsd:complexType><xsd:simpleType name="modeloDias"><xsd:restriction base="xsd:string"><xsd:enumeration value="Lunes" /><xsd:enumeration value="Martes" /><xsd:enumeration value="Miercoles" /><xsd:enumeration value="Jueves" /><xsd:enumeration value="Viernes" /><xsd:enumeration value="Sabado" /><xsd:enumeration value="Domingo" /></xsd:restriction></xsd:simpleType></xsd:schema>'
GO
