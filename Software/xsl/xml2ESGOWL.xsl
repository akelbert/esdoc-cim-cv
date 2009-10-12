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

<!-- translate the xml into a form suitable to import into excel in order to examine and/or edit the parameter definitions -->
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

<xsl:template match="parameter">

<xsl:variable name="AttributeString">
  <xsl:for-each select="ancestor::component">
    <xsl:value-of select = "@name" />
    <xsl:value-of select="$Separator"/>
  </xsl:for-each>
  <xsl:value-of select="@name"/>
</xsl:variable>

<xsl:variable name="AttributeStringSpaces">
  <xsl:for-each select="ancestor::component">
    <xsl:value-of select = "@name" />
    <xsl:value-of select="' '"/>
  </xsl:for-each>
  <xsl:value-of select="@name"/>
</xsl:variable>

<xsl:variable name="RDFProperty" select="concat('has',$AttributeString)"/>

<owl:Class rdf:ID="{$AttributeString}"/>

<xsl:variable name="Definition">
  <xsl:choose>
  <xsl:when test="@definition">
    <xsl:value-of select="@definition"/>
  </xsl:when>
  <xsl:otherwise>
    <xsl:text>[TBA]</xsl:text>
  </xsl:otherwise>
  </xsl:choose>
</xsl:variable>

<owl:ObjectProperty rdf:ID="{$RDFProperty}">
   <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="$AttributeStringSpaces"/></rdfs:label>
   <rdfs:domain rdf:resource="#ModelComponent"/>
   <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="$Definition"/></rdfs:comment>
   <rdfs:range rdf:resource="#attribute_string"/>
</owl:ObjectProperty> 

<xsl:choose>
<xsl:when test="@choice='keyboard'">
<xsl:variable name="datatype">
  <xsl:value-of select="value/@format"/>
</xsl:variable>
<owl:DatatypeProperty rdf:ID="{concat('has',@name,'Value')}">
    <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#{$datatype}"><xsl:value-of select="@name"/></rdfs:label>
    <rdfs:range rdf:resource="http://www.w3.org/2001/XMLSchema#{$datatype}"/>
    <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#{$datatype}"><xsl:text>[currently no definitions for free text input]</xsl:text></rdfs:comment>
</owl:DatatypeProperty>
</xsl:when>
<xsl:when test="@choice='XOR' or @choice='OR'">

<xsl:variable name="CVName" select="translate(@name,' ','_')"/>
<xsl:element name="esg:{$CVName}"> <!-- RF adding esg: is a hack - but it works -->
    <xsl:attribute name="rdf:about"><xsl:text>http://dataportal.ucar.edu/schemas/esg.owl#XXX</xsl:text></xsl:attribute> <!-- hack again for rdf: -->
    <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:text>XXXX</xsl:text></rdfs:label>
</xsl:element>
<!--
<esg:AdvectionScheme rdf:about="http://dataportal.ucar.edu/schemas/esg.owl#advectionscheme_modified_arakawa">
    <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string">Modified Arakawa</rdfs:label>
</esg:AdvectionScheme>
-->

</xsl:when>
<xsl:otherwise>
<xsl:message terminate="yes">
<xsl:text>fatal error in parsing parameter choices. Expecting XOR, OR or keyboard but found </xsl:text>
<xsl:value-of select="@choice"/>
</xsl:message>
</xsl:otherwise>
</xsl:choose>

</xsl:template>

</xsl:stylesheet>
