<?xml version="1.0" encoding="UTF-8"?>

<!--
    Escribiendo texto: Codificar una hoja XSLT que escriba en un fichero de texto una línea por
    cada asignatura que un alumno tiene en convocatoria igual o superior a la cuarta. El formato de
    la línea será el siguiente: El alumno [NIA] va en la convocatoria [#convocatoria] en la
    asignatura [CodigoAsignatura].
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text"/>     
<xsl:template match="/">
<xsl:for-each select="alumnos/alumno">
<xsl:variable name="nia">
<xsl:value-of select="@NIA"/>
</xsl:variable>
<xsl:for-each select="asignaturas/asignatura"> 
<xsl:if test="@convocatoria &gt;&#61; 4">
El alumno <xsl:copy-of select="$nia" /> va en la convocatoria <xsl:value-of select="@convocatoria"/>  en la asignatura <xsl:value-of select="@codigo"/>.</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
