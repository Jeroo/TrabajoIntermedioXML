<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : Google.xsl
    Created on : November 18, 2017, 4:24 PM
    Author     : scuev
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" indent="yes"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Google xsl</title>
            </head>
            <body>
                <h1><xsl:apply-templates /></h1>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
