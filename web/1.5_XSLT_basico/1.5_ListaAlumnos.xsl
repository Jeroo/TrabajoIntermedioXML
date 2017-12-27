<?xml version="1.0" encoding="UTF-8"?>

<!--
    Conversión a HTML: Proporcionar una hoja de estilo XSLT que seleccione todos los alumnos
    del documento y los muestre en una tabla en un documento HTML. En cada fila debe aparecer
    (este orden): Nombre completo del alumno, NIA, Titulación, Número de asignaturas.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Alumnos</title>
                <link rel="stylesheet" href="estilos.css" type="text/css" />
            </head>
            <body>
               <div class="contenedor">
                <span class="titulo"><h2>Lista de Alumnos</h2></span> 
               <table>
                <tr>
                  <th>Nombre completo del alumno</th>
                  <th>NIA</th>
                  <th>Titulación</th>
                  <th>Número de asignaturas</th>
                </tr>
                <xsl:for-each select="alumnos/alumno">
                    <xsl:sort select="nombre"/>
                    <tr>
                      <td>
                          <p> <xsl:value-of select="nombre"/>&#160;
                            <xsl:value-of select="apellido1"/>
                          </p>                          
                      </td>
                      <td>
                          <p> <xsl:value-of select="@NIA"/>
                          </p>                          
                      </td>  
                      <td>
                          <p> 
                            <xsl:value-of select="@titulacion"/>
                          </p>                          
                      </td>
                      <td>
                          <p> 
                           <xsl:variable name="count" select="count(/asignaturas/asignatura)"/>  
                          </p> 
                          <xsl:if test="asignaturas/asignatura">
                                <span>
                                  **(<xsl:value-of select="count(asignaturas/asignatura)"/>)**
                                </span>
                          </xsl:if>                         
                      </td>  
                      
                                                              
                    </tr>  
                </xsl:for-each>              
              </table>
             </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
