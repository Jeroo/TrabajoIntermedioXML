<?xml version="1.0" encoding="UTF-8"?>

<!--
    Bucles y condiciones: Proporcione una hoja de estilo XSLT que genere un fichero de texto con
    una línea para el NIA de cada alumno. Para cada línea con el NIA de un alumno, si dicho
    alumno tiene alguna asignatura cuyo código contiene la letra 'O', el código de esa asignatura se
    mostrará después del NIA.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text"/>     
<xsl:template match="/">
*****NIA**** - ****Código(s) Asignatura(s)****
<xsl:for-each select="alumnos/alumno">
"<xsl:value-of select="@NIA"/>" - <xsl:for-each select="asignaturas/asignatura"><xsl:if test="contains(@codigo, 'O')">"<xsl:value-of select="@codigo"/>"&#160;</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>