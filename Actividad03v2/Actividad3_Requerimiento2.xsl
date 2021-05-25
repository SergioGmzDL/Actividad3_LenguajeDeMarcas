<?xml version="1.0" encoding="ISO-8859-1"?>
<!--<!DOCTYPE ite SYSTEM "test.dtd">-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <ite>
            <xsl:attribute name="empresa">
                <xsl:value-of select="ite/empresa"/>
            </xsl:attribute>
            <xsl:attribute name="telf">
                <xsl:value-of select="ite/telefono"/>
            </xsl:attribute>
            <nombre>
                <xsl:value-of select="ite/@nombre"/>
            </nombre>
            <web>
                <xsl:value-of select="ite/@web"/>
            </web>
            <profesores>
                <xsl:for-each select="ite/profesores/profesor">
                    <profesor>
                        <xsl:attribute name="id">
                            <xsl:value-of select="id"/>
                        </xsl:attribute>
                        <nombre>
                            <xsl:value-of select="nombre"/>
                        </nombre>
                    </profesor>
                </xsl:for-each>
            </profesores>
            <director>
                <xsl:attribute name="nombre">
                    <xsl:value-of select="ite/director/nombre"/>
                </xsl:attribute>
                <xsl:attribute name="despacho">
                    <xsl:value-of select="ite/director/despacho"/>
                </xsl:attribute>
            </director>
            <jefe_estudios>
                <xsl:attribute name="nombre">
                    <xsl:value-of select="ite/jefe_estudios/nombre"/>
                </xsl:attribute>
                <xsl:attribute name="despacho">
                    <xsl:value-of select="ite/jefe_estudios/despacho"/>
                </xsl:attribute>
            </jefe_estudios>
            <ciclos>
                <xsl:for-each select="ite/ciclos/ciclo">
                    <ciclo>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@id"/>
                        </xsl:attribute>
                        <xsl:attribute name="grado">
                            <xsl:value-of select="grado"/>
                        </xsl:attribute>
                        <xsl:attribute name="decreto">
                            <xsl:value-of select="decretoTitulo/@año"/>
                        </xsl:attribute>
                        <nombre>
                            <xsl:value-of select="nombre"/>
                        </nombre>
                    </ciclo>
                </xsl:for-each>
            </ciclos>
        </ite>
    </xsl:template>
</xsl:stylesheet>
