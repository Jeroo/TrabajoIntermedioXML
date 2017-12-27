DECLARE @TYPED_XML XML(dbo.lista_asignaturas_schema);
DECLARE @UNTYPED_XML XML = N'<?xml version="1.0" encoding="utf-16" ?>
<!--DOCTYPE Lista SYSTEM "lista_asignatura.dtd"-->

<Lista xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
           xsi:noNamespaceSchemaLocation="1.3_lista_asignaturas_schema.xsd">
    <Alumno id="1">
        <Nombre>Arturo</Nombre> 
        <Apellidos>Pérez Rubio</Apellidos>
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
        <Día>Lunes</Día> 
        <Hora>12:00</Hora>
    </Asignatura>
</Lista>


';

BEGIN TRY
  SELECT @TYPED_XML = @UNTYPED_XML;
  SELECT MSG = N'PASSED SCHEMA VALIDATION';
END TRY
BEGIN CATCH
  SELECT MSG=ERROR_MESSAGE();
END CATCH