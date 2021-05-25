<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
            <meta charset="utf-8" />
            <link rel="stylesheet" href="css/styles.css"/>
            <title>Actividad-03: XSLT y XPATH</title>
        </head>
        <body>
            <div id="General">
                <header>
                    <h1><xsl:value-of select="ite/@nombre"/></h1>
                </header>
                <nav id="menu">
                    <ul>
                        <li><a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="ite/@web"/>
                            </xsl:attribute>
                            Web
                        </a></li>
                        <li><a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="ite/telefono"/>
                            </xsl:attribute>
                            Teléfono
                        </a></li>
                    </ul>
                    <div class="clearfix"></div>
                </nav>
    
                <section id="contenido">
                    <h3>Profesores</h3>
                    <table border="1">
                        <tr>
                            <th>ID</th>
                            <th>NOMBRE</th>
                        </tr>
                        <xsl:for-each select="ite/profesores/profesor">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                        </tr>
                        </xsl:for-each>
                    </table>
                    <div class="caja">
                        <ul>
                            <li>
                                <span>Director: </span>
                                <xsl:value-of select="ite/director/nombre"/>
                                <address>
                                    <xsl:value-of select="ite/director/despacho"/>
                                 </address>
                            </li>
                            <li>
                                <span>Jefe de Estudios: </span>
                                <xsl:value-of select="ite/jefe_estudios/nombre"/> 
                                <address>
                                    <xsl:value-of select="ite/jefe_estudios/despacho"/>
                                 </address>
                            </li>
                        </ul>
                        
                    </div>
                    
                        <h3>Ciclos: </h3>
                    <table>
                        <tr>
                            <th>NOMBRE</th>
                            <th>GRADO</th>
                            <th>DECRETO</th>
                        </tr>
                        <xsl:for-each select="ite/ciclos/ciclo">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="grado"/></td>
                            <td><xsl:value-of select="decretoTitulo/@año"/></td>
                        </tr>
                        </xsl:for-each>
                    </table>
                    <h3>Formulario de Contacto</h3>
                    <form method="post" action="">
                        <fieldset>
                            
                            <fieldset class="bigBox clearfix" id="blue">
                                <legend>Datos Personales:</legend>
                                <div class="box">
                                    <label>Apellidos: </label>
                                    <br/>
                                    <input type="text" name="apel" placeholder="apellidos..."/>
                                </div>
                                <div class="box">
                                    <label>Nombre: </label>
                                    <br/>
                                    <input type="text" name="nam" placeholder="nombre..."/>
                                </div>
                                <div class="box">
                                    <label>DNI:</label>
                                    <br/>
                                    <input type="text" name="dni" placeholder="DNI..."/>
                                </div>
                                <br/>
                                <div class="box">
                                    <label>Nacida/o en:</label>
                                    <br/>
                                    <input type="text" name="ciudad" placeholder="ciudad..."/>
                                </div>
                                <div class="box">
                                    <label>Provincia:</label>
                                    <br/>
                                    <select name="provincia">
                                        <option value="madrid">Madrid</option>
                                        <option value="barna">Barcelona</option>
                                        <option value="valencia">Valencia</option>
                                        <option value="alicante">Alicante</option>
                                        <option value="sevilla">Sevilla</option>
                                        <option value="malaga">Malaga</option>
                                        <option value="murcia">Murcia</option>
                                        <option value="cadiz">Cádiz</option>
                                        <option value="baleares">Baleares</option>
                                        <option value="vizcaya">Vizcaya</option>
                                        <option value="palamas">Las Palmas</option>
                                        <option value="coruña">A Coruña</option>
                                        <option value="tenerife">Santa Cruz de Tenerife</option>
                                        <option value="asturias">Asturias</option>
                                        <option value="zaragoza">Zaragoza</option>
                                        <option value="pontevedra">Pontevedra</option>
                                        <option value="granada">Granada</option>
                                        <option value="tarragona">Tarragona</option>
                                        <option value="gerona">Gerona</option>
                                        <option value="cordoba">Córdoba</option>
                                        <option value="almeria">Almería</option>
                                        <option value="guipuzcoa">Guipúzcoa</option>
                                        <option value="toledo">Toledo</option>
                                        <option value="badajoz">Badajoz</option>
                                        <option value="navarra">Navarra</option>
                                        <option value="jaen">Jaén</option>
                                        <option value="castellon">Castellón</option>
                                        <option value="cantabria">Cantabria</option>
                                        <option value="huelva">Huelva</option>
                                        <option value="valladolid">Valladolid</option>
                                        <option value="ciureal">Ciudad Real</option>
                                        <option value="leon">León</option>
                                        <option value="lerida">Lérida</option>
                                        <option value="caceres">Cáceres</option>
                                        <option value="albacete">Albacete</option>
                                        <option value="burgos">Burgos</option>
                                        <option value="alava">Álava</option>
                                        <option value="salamanca">Salamanca</option>
                                        <option value="lugo">Lugo</option>
                                        <option value="rioja">La Rioja</option>
                                        <option value="ourense">Ourense</option>
                                        <option value="guadalajara">Guadalajara</option>
                                        <option value="huesca">Huesca</option>
                                        <option value="cuenca">Cuenca</option>
                                        <option value="zamora">Zamora</option>
                                        <option value="palencia">Palencia</option>
                                        <option value="avila">Ávila</option>
                                        <option value="segovia">Segovia</option>
                                        <option value="teruel">Teruel</option>
                                        <option value="soria">Soria</option>
                                        <option value="melilla">Melilla</option>
                                        <option value="ceuta">Ceuta</option>
                                    </select>
                                </div>
                                <div class="box">
                                    <label>Fecha de Nacimineto:</label>
                                    <br/>
                                    <input type="date" name="nacimineto" placeholder="dd/mm/aaaa"/>
                                </div>
                                <div class="box2">
                                    <label>Domicilio:</label>
                                    <br/>
                                    <input type="text" name="domicilio" placeholder="C/domicilio, nº..."/>
                                </div>
                                <div class="box1">
                                    <label>Código Postal:</label>
                                    <br/>
                                    <input type="text" name="domicilio" placeholder="..."/>
                                </div>
                                <br/>
                                <div class="box">
                                    <label>Localidad: </label>
                                    <br/>
                                    <input type="text" name="loca" placeholder="localidad..."/>
                                </div>
                                <div class="box">
                                    <label>Provincia:</label>
                                    <br/>
                                    <select name="provincia">
                                        <option value="madrid">Madrid</option>
                                        <option value="barna">Barcelona</option>
                                        <option value="valencia">Valencia</option>
                                        <option value="alicante">Alicante</option>
                                        <option value="sevilla">Sevilla</option>
                                        <option value="malaga">Malaga</option>
                                        <option value="murcia">Murcia</option>
                                        <option value="cadiz">Cádiz</option>
                                        <option value="baleares">Baleares</option>
                                        <option value="vizcaya">Vizcaya</option>
                                        <option value="palamas">Las Palmas</option>
                                        <option value="coruña">A Coruña</option>
                                        <option value="tenerife">Santa Cruz de Tenerife</option>
                                        <option value="asturias">Asturias</option>
                                        <option value="zaragoza">Zaragoza</option>
                                        <option value="pontevedra">Pontevedra</option>
                                        <option value="granada">Granada</option>
                                        <option value="tarragona">Tarragona</option>
                                        <option value="gerona">Gerona</option>
                                        <option value="cordoba">Córdoba</option>
                                        <option value="almeria">Almería</option>
                                        <option value="guipuzcoa">Guipúzcoa</option>
                                        <option value="toledo">Toledo</option>
                                        <option value="badajoz">Badajoz</option>
                                        <option value="navarra">Navarra</option>
                                        <option value="jaen">Jaén</option>
                                        <option value="castellon">Castellón</option>
                                        <option value="cantabria">Cantabria</option>
                                        <option value="huelva">Huelva</option>
                                        <option value="valladolid">Valladolid</option>
                                        <option value="ciureal">Ciudad Real</option>
                                        <option value="leon">León</option>
                                        <option value="lerida">Lérida</option>
                                        <option value="caceres">Cáceres</option>
                                        <option value="albacete">Albacete</option>
                                        <option value="burgos">Burgos</option>
                                        <option value="alava">Álava</option>
                                        <option value="salamanca">Salamanca</option>
                                        <option value="lugo">Lugo</option>
                                        <option value="rioja">La Rioja</option>
                                        <option value="ourense">Ourense</option>
                                        <option value="guadalajara">Guadalajara</option>
                                        <option value="huesca">Huesca</option>
                                        <option value="cuenca">Cuenca</option>
                                        <option value="zamora">Zamora</option>
                                        <option value="palencia">Palencia</option>
                                        <option value="avila">Ávila</option>
                                        <option value="segovia">Segovia</option>
                                        <option value="teruel">Teruel</option>
                                        <option value="soria">Soria</option>
                                        <option value="melilla">Melilla</option>
                                        <option value="ceuta">Ceuta</option>
                                    </select>
                                </div>
                                <div class="box">
                                    <label>Teléfono:</label>
                                    <br/>
                                    <input type="tel" name="telefono" placeholder="telefono..."/>
                                </div>
                            </fieldset>
                            <fieldset class="bigBox clearfix" id="salmon">
                                <legend>Requisitos de Acceso:</legend>
                                <div class="box">
                                    <ul>
                                        <li> <input type="radio" name="acceso"/> Directo
                                            <ul>
                                                <li> <input type="radio" name="acceso"/> Bachillerato LOGSE</li>
                                                <li> <input type="radio" name="acceso"/> Bachillerato experimental</li>
                                                <li> <input type="radio" name="acceso"/> COU</li>
                                                <li> <input type="radio" name="acceso"/> FP2</li>
                                                <li> <input type="radio" name="acceso"/> Otros</li>
                                                
                                            </ul>
                                        </li>
                                        <li> <input type="radio" name="acceso"/> Mediante Prueba</li>
                                    </ul>
                                </div>
                            </fieldset>
                            <fieldset class="bigBox clearfix noBox" id="blue">
                                <legend>Solicitud:</legend>
                                <p>El/la que suscribe desea ser admitido en este centro para cursar el ciclo formativo superior:</p>
                                <br/>
                                <label>Ciclo Formativo:</label>
                                <select name="ciclo">
                                    <option value="asir">Administración de Sistemas Informáticos en Red</option>
                                    <option value="dam">Desarrollo de Aplicaciones Multiplataforma</option>
                                    <option value="daw">Desarrollo de Aplicaciones Web</option>
                                </select>
                                <br/>
                                <p>En caso de no ser admitido/a, solicita la admisión por orden de preferencia de los siguientes</p>
                                <label>Ciclos Formativos:</label>
                                <input type="text" name="opcion1"/>
                                <input type="text" name="opcion2"/>
                            </fieldset>
                            <fieldset class="bigBox clearfix" id="salmon">
                                <legend>Documentación Presentada:</legend>
                                <div class="box">
                                    <input type="checkbox" name="docu1"/> Fotocopia DNI
                                </div><div class="box">
                                    <input type="checkbox" name="docu2"/> Certificado Académico
                                </div>
                                <div class="box">
                                    
                                </div>
                                <br/>
                                <div class="box">
                                    <input type="checkbox" name="docu3"/> Otros Documentos
                                </div>
                                <div class="box">
                                    <input type="text" name="docu4"/>
                                </div>
                            </fieldset>
                            <div class="sub">
                                <input type="submit" value="Enviar"/>
                                <input type="reset" value="Borrar Datos"/>
                                
                            </div>
                        </fieldset>
                    </form>
                </section>
            </div>
            <footer>
                Todos los derechos reservados <!--&copy-->;
            </footer>
            
        </body>
    </html>

    </xsl:template>
</xsl:stylesheet>