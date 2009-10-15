<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns="http://dataportal.ucar.edu/schemas/cmip5.owl#"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:owl="http://www.w3.org/2002/07/owl#"
    xmlns:esg="http://dataportal.ucar.edu/schemas/esg.owl#"
    xmlns:daml="http://www.daml.org/2001/03/daml+oil#"
    xmlns:dc="http://purl.org/dc/elements/1.1/">

<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>

<xsl:param name="Separator" select="''"/>

<xsl:template match="/">
<rdf:RDF xml:base="http://dataportal.ucar.edu/schemas/cmip5.owl">
  <owl:Ontology rdf:about="">
    <owl:imports rdf:resource="http://dataportal.ucar.edu/schemas/esg_data.owl"/>
    <owl:imports rdf:resource="http://dataportal.ucar.edu/schemas/grid.owl"/>
  </owl:Ontology>
  <xsl:apply-templates/>
</rdf:RDF>
</xsl:template>

<!-- skip definitions so we don't output their values -->
<xsl:template match="definition"/>

<xsl:template match="parameter">

<xsl:variable name="myName" select="translate(normalize-space(@name),' ','_')"/>

<xsl:variable name="AttributeString">
  <xsl:for-each select="ancestor::component">
    <xsl:if test="not(@name='KeyProperties')"> <!-- skip KeyProperties component -->
      <xsl:value-of select = "@name" />
    </xsl:if>
  </xsl:for-each>
  <xsl:if test="not(ancestor::parametergroup[1]/@name=concat(ancestor::component[1]/@name,'_Attributes'))">
    <xsl:value-of select="ancestor::parametergroup[1]/@name"/>
  </xsl:if>
  <xsl:value-of select="$myName"/>
</xsl:variable>

<xsl:variable name="AttributeStringSpaces">
  <xsl:for-each select="ancestor::component">
    <xsl:if test="not(@name='KeyProperties')"> <!-- skip KeyProperties component -->
      <xsl:value-of select = "@name" />
      <xsl:value-of select="' '"/>
    </xsl:if>
  </xsl:for-each>
  <xsl:if test="not(ancestor::parametergroup[1]/@name=concat(ancestor::component[1]/@name,'_Attributes'))">
    <xsl:value-of select="ancestor::parametergroup[1]/@name"/>
    <xsl:value-of select="' '"/>
  </xsl:if>
  <xsl:value-of select="$myName"/>
</xsl:variable>

<xsl:variable name="RDFProperty" select="concat('has',$AttributeString)"/>

<xsl:variable name="Definition">
  <xsl:choose>
  <xsl:when test="definition">
    <xsl:value-of select="definition"/>
  </xsl:when>
  <xsl:otherwise>
    <xsl:text>[Missing]</xsl:text>
  </xsl:otherwise>
  </xsl:choose>
</xsl:variable>

<xsl:choose>
  <xsl:when test="@choice='XOR' or @choice='OR' or @choice='AND'"> <!-- then controlled vocab -->

    <owl:Class rdf:ID="{$AttributeString}"/>

    <owl:ObjectProperty rdf:ID="{$RDFProperty}">
      <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="$AttributeStringSpaces"/></rdfs:label>
      <rdfs:domain rdf:resource="#ModelComponent"/>
      <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="$Definition"/></rdfs:comment>
      <rdfs:range rdf:resource="#{$AttributeString}"/>
    </owl:ObjectProperty> 

    <xsl:for-each select="value[not(normalize-space(translate(@name,'OTHER','other'))='other')]">
      <!-- RF adding esg namespace directly below is a hack - but it works -->
      <xsl:element name="esg:{$AttributeString}">
        <!-- hack again for rdf namespace -->
        <xsl:attribute name="rdf:about"><!--<xsl:text>http://dataportal.ucar.edu/schemas/esg.owl#</xsl:text>--><xsl:text>#</xsl:text><xsl:value-of select="$AttributeString"/><xsl:text>_</xsl:text><xsl:value-of select="translate(@name,' ','_')"/></xsl:attribute>
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="@name"/></rdfs:label>
      </xsl:element>
    </xsl:for-each>

  </xsl:when>
  <xsl:when test="@choice='couple'"/> <!-- skip -->
  <xsl:when test="@choice='keyboard'">

    <xsl:variable name="datatype">
      <xsl:choose>
        <xsl:when test="value[@format='numerical']">
          <xsl:text>float</xsl:text>
        </xsl:when>
        <xsl:when test="value[@format='string']">
          <xsl:text>string</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:message terminate="yes">
            <xsl:text>Error datatype value </xsl:text>
            <xsl:value-of select="value/@format"/>
            <xsl:text> is not supported</xsl:text>
          </xsl:message>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>

    <owl:DatatypeProperty rdf:ID="{concat('has',$AttributeString,'Value')}">
      <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#{$datatype}"><xsl:value-of select="$AttributeStringSpaces"/></rdfs:label>
      <rdfs:range rdf:resource="http://www.w3.org/2001/XMLSchema#{$datatype}"/>
      <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#{$datatype}"><xsl:value-of select="$Definition"/></rdfs:comment>
    </owl:DatatypeProperty>

  </xsl:when>

  <xsl:otherwise><!-- error -->
    <xsl:message terminate="yes">
      <xsl:text>Error choice type </xsl:text>
      <xsl:value-of select="@choice"/>
      <xsl:text> is not supported</xsl:text>
    </xsl:message>
</xsl:otherwise>
</xsl:choose>

</xsl:template>

</xsl:stylesheet>
