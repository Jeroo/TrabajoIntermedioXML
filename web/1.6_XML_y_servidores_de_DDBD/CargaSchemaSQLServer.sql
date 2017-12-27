CREATE XML SCHEMA COLLECTION lista_asignaturas_schema
    AS'<?xml version="1.0" encoding="windows-1252" ?>
<xsd:schema 
           xmlns:xsd="http://www.w3.org/2001/XMLSchema"
           elementFormDefault="qualified">
    <xsd:element name="Lista">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="Alumno" type="modelAlumno" minOccurs="0" maxOccurs="unbounded"/>
                <xsd:element name="Asignatura" type="modelAsignatura" minOccurs="0" maxOccurs="unbounded"/>
            </xsd:sequence>
        </xsd:complexType>        
    </xsd:element>    
    <xsd:complexType name="modelAlumno">
         <xsd:choice maxOccurs="unbounded">
             <xsd:element name="Apellidos" type="xsd:string" minOccurs="0" maxOccurs="unbounded"/>
             <xsd:element name="Nombre" type="xsd:string" minOccurs="0" maxOccurs="unbounded"/>
         </xsd:choice>
         <xsd:attribute name="id" use="optional" type="xsd:integer"/>
    </xsd:complexType>    
    <xsd:complexType name="modelAsignatura" mixed="true">
         <xsd:choice maxOccurs="unbounded">
             <xsd:element name="Hora" type="xsd:string" minOccurs="0" maxOccurs="unbounded"/>
             <xsd:element name="Día" type="modeloDias" minOccurs="0" maxOccurs="unbounded"/>
         </xsd:choice>
         <xsd:attribute name="codigo" use="optional" type="xsd:string"/>
    </xsd:complexType>    
    <xsd:simpleType name="modeloDias">
        <xsd:restriction base="xsd:string">
            <xsd:enumeration value="Lunes"/>
            <xsd:enumeration value="Martes"/>
            <xsd:enumeration value="Miercoles"/>
            <xsd:enumeration value="Jueves"/>
            <xsd:enumeration value="Viernes"/>
            <xsd:enumeration value="Sabado"/>
            <xsd:enumeration value="Domingo"/>
        </xsd:restriction>
    </xsd:simpleType>
</xsd:schema>'

-- Consultamos si se creo el schema
SELECT * FROM sys.xml_schema_collections 