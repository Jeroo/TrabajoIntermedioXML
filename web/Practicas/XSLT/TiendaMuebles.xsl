<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : TiendaMuebles.xsl
    Created on : November 18, 2017, 5:34 PM
    Author     : scuev
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Tienda de Muebles</title>
            </head>
            <body>
                <table border="1">
                    <th>Material</th>
                    <tr>
                        <td>
                            <xsl:value-of select="muebles/silla/material"/>
                        </td>
                    </tr>
                </table>
                <center>
                 <table border="1">
                    <th>Material</th>
                    <xsl:for-each select="muebles/silla">
                    <xsl:sort select="material"/>
                    <tr>
                        <td>
                            <xsl:value-of select="material"/>
                        </td>
                    </tr>
                    </xsl:for-each>
                </table>
                </center>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
