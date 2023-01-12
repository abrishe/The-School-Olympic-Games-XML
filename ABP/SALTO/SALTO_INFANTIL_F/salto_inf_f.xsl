<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <header class="header">
        <div class="contenido logo-nav-container">
            <a href="#" class="logo">MONLAU</a>
            <nav class="navigation">
                <ul>
                  <li><a href="../../presentacion.html">Inicio</a></li>
                  <li><a href="../../DIRECCION/salto_inf_f_m/Infantil.html">Volver</a></li>
                </ul>                
            </nav>
        </div>
    </header>
    <center>
      <table border="1">
        <caption>Pruebas SALTO_INF_F</caption>
          <tr bgcolor="#9acd32">
          
            <th>NOMBRE</th>
            <th>APELLIDO</th>
            <th>CURSO</th>
            <th>PRUEBA</th>
            <th>MODALIDAD</th>
            <th>Eliminatoria</th>
            <th>Posicion</th>
            <th>Marca</th>
          </tr>
          <xsl:for-each select="Alumnos/Alumno">
            
            <xsl:sort order="ascending" select="Pruebas/Prueba/Eliminatorias/Eliminatoria/Posicion"/>
                <xsl:if test="Pruebas/Prueba/Id_Prueba = 'SALTO_INF_F'">
                <link rel="stylesheet" href="../../ABPs.css"/>
            <tr>
              
              <td><xsl:value-of select="Nombre"/></td>
              <td><xsl:value-of select="Apellido1"/></td>
              <td><xsl:value-of select="Curso"/></td>
              <td><xsl:value-of select="Pruebas/Prueba/Id_Prueba"/></td>
              <td><xsl:value-of select="Pruebas/Prueba/Modalidad"/></td>
              <td><xsl:value-of select="Pruebas/Prueba/Eliminatorias/Eliminatoria/Id_Eliminatoria"/></td>
              <td><xsl:value-of select="Pruebas/Prueba/Eliminatorias/Eliminatoria/Posicion"/></td>
              <td><xsl:value-of select="Pruebas/Prueba/Eliminatorias/Eliminatoria/Marca"/></td>
              
            </tr>
          </xsl:if>
          </xsl:for-each>
        </table>

  </center>
  <footer class="footer">
    <div class="contenido">
        <p>Jornada 1</p>

    </div>
    
  </footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
