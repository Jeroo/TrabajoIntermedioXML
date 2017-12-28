<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

<xsl:template match="/">
    <html>
        <head>
            <title>Encargos</title>
            <link rel="stylesheet" href="estilos.css" type="text/css" />
        </head>
        <body> 
            <div class="contenedor">
                <span class="titulo"><h2>Encargo</h2></span>    
                <table>
                    <thead>
                     <tr>
                        <th>Código Cliente</th>
                        <th>Nombre Cliente</th> 
                        <th class="centralizar">Listado de Productos</th>                   
                     </tr>
                    </thead>
                    <tbody>
                     <tr>
                        <td><xsl:value-of select="Encargo/Cliente/@id"/></td>
                        <td><xsl:value-of select="Encargo/Cliente"/></td>
                        <td>
                            <table>
                            <thead>
                                <tr>                               
                                    <th>Producto Nombre</th>
                                    <th>Cantidad</th>
                                    <th>Precio</th>
                                    <th class="centralizar">Enviar</th>                                                            
                                </tr>
                           </thead> 
                            <tfoot class="footer">
                            <tr >
                                <td><h4>Subtotal:</h4></td>
                                <td>
                                    <xsl:if test="Encargo/Subtotal/@moneda = 'EUR'">
                                        <h4>
                                            <xsl:value-of select="Encargo/Subtotal"/> &#8364;
                                        </h4>
                                    </xsl:if> 
                                </td>
                            </tr>
                            <tr>
                                <td><h4>Tasa:</h4></td>
                                <td>
                                    <xsl:if test="Encargo/Tasa/@moneda = 'EUR'">
                                        <h4>
                                            <xsl:value-of select="Encargo/Tasa"/> &#8364;
                                        </h4>
                                    </xsl:if> 
                                </td>
                            </tr>
                            <tr>
                                <td><h4>Impuestos:</h4></td>
                                <td>
                                    <xsl:if test="Encargo/Tasa/@moneda = 'EUR'">
                                        <h4>
                                            <xsl:value-of select="Encargo/Tasa/@impuestos"/> &#8364;
                                        </h4>
                                    </xsl:if> 
                                </td>
                            </tr>
                            <tr>
                                <td><h4>Total:</h4></td>
                                <td>
                                    <xsl:if test="Encargo/Total/@moneda = 'EUR'">
                                        <h4>
                                            <xsl:value-of select="Encargo/Total"/> &#8364;
                                        </h4>
                                    </xsl:if> 
                                </td>
                           </tr>
                           </tfoot>                     
                           <tbody> 
                            <xsl:for-each select="Encargo/Producto">                                    
                                <tr>
                                      <td>
                                          <xsl:value-of select="Nombre"/>
                                      </td>
                                      <td>
                                          <xsl:value-of select="Cantidad"/>
                                      </td>
                                      <td>
                                          <xsl:if test="Precio/@moneda = 'EUR'">
                                             <xsl:value-of select="Precio"/> &#8364;
                                          </xsl:if>                                  
                                      </td>                            
                                      <td>
                                         <table>
                                             <thead>
                                              <tr>
                                                 <th>Calle</th>
                                                 <th>Ciudad</th>
                                                 <th>Provincia</th>
                                                 <th>CP</th>
                                              </tr>
                                             </thead>
                                             <tbody>
                                              <tr>
                                                 <td><xsl:value-of select="Enviar/Calle"/></td>
                                                 <td><xsl:value-of select="Enviar/Ciudad"/></td>
                                                 <td><xsl:value-of select="Enviar/Provincia"/></td>
                                                 <td><xsl:value-of select="Enviar/CP"/></td>
                                              </tr>                                    
                                             </tbody>
                                            </table>
                                      </td>
                                  </tr>  
                            </xsl:for-each>                       
                            </tbody>
                        </table>
                        </td>
                     </tr>
                    </tbody>
                 </table> 
             </div>  
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>