<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>CDS</h1>
        <table>
        <tr bgcolor="#63d6ff">
            <th>Titulo</th>
            <th>Artista</th>
            <th>Sello Discografico</th>
            <th>Año</th>
            <th>Canciones</th>
        </tr>
        <xsl:for-each select="listaCDS/cd[sello='Disciple Recordings']">
        <tr>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="artista"/></td>
            <td><xsl:value-of select="sello"/></td>
            <td><xsl:value-of select="anio"/></td>
            <td>
                <ol>
                <xsl:for-each select="cancion">
                <li><xsl:value-of select="."/></li>
                </xsl:for-each>
                </ol>
            </td>
        </tr>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>