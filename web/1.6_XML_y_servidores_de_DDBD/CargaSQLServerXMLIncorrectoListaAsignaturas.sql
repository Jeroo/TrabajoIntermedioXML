INSERT INTO [XMLValidateWithXSD].[dbo].[tblXMLDataInformation]
           ([XMLData]
           ,[LoadedDateTime])
     VALUES
           ('<?xml version="1.0" encoding="windows-1252" ?>
<!--DOCTYPE Lista SYSTEM "lista_asignatura.dtd"-->

<Lista xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           xsi:noNamespaceSchemaLocation="lista_asignaturas_schema.xsd">
<!--Lista-->
    <Alumno id="1">
        <Nombre>Arturo</Nombre> 
        <Apellidos>Pérez Rubio</Apellidos>
    </Alumno>
     <Alumno id="3">
        <Nombre>Salvador</Nombre> 
    </Alumno>
    <Alumno id="2">
        <Apellidos>Rodríguez García</Apellidos> 
        <Nombre>Manuel</Nombre>
    </Alumno>
    <Alumno id="6">
        <Apellidos>Lozano Gómez</Apellidos> 
        <Nombre>Sara</Nombre>
    </Alumno>
    <Asignatura codigo="059">
        Inglés 
        <Día>Domingo</Día> 
        <Hora>12:00</Hora>
    </Asignatura>
     <Asignatura codigo="059">
        Frances 
        <Día>Domingo</Día> 
    </Asignatura>
</Lista>'
           ,GETDATE())
GO


