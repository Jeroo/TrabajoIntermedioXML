INSERT INTO [XMLValidateWithXSD].[dbo].[tblXMLDataInformation]
           ([XMLData]
           ,[LoadedDateTime])
     VALUES
           ('<?xml version="1.0" encoding="windows-1252" ?>
<!--DOCTYPE Lista SYSTEM "lista_asignatura.dtd"-->

<Lista xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           xsi:noNamespaceSchemaLocation="lista_asignaturas_schema.xsd">
    <Alumno id="1">
        <Nombre>Arturo</Nombre> 
        <Apellidos>P�rez Rubio</Apellidos>
    </Alumno>
    <Alumno id="2">
        <Apellidos>Rodr�guez Garc�a</Apellidos> 
        <Nombre>Manuel</Nombre>
    </Alumno>
    <Alumno id="6">
        <Apellidos>Lozano G�mez</Apellidos> 
        <Nombre>Sara</Nombre>
    </Alumno>
    <Asignatura codigo="059">
        Ingl�s 
        <D�a>Lunes</D�a> 
        <Hora>12:00</Hora>
    </Asignatura>
</Lista>'
           ,GETDATE())
GO


