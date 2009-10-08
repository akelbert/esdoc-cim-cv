<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:owl="owl" xmlns:rdf="rdf" xmlns:rdfs="rdfs" version="1.0">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>

<!-- translate the xml into a form suitable to import into excel in order to examine and/or edit the parameter definitions -->
<xsl:param name="Separator" select="''"/>

<xsl:template match="/">
<DummyContainer>
  <xsl:apply-templates/>
</DummyContainer>
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
    <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#{$datatype}"><xsl:value-of select="@name"/><xsl:text> Value</xsl:text></rdfs:label>
    <rdfs:range rdf:resource="http://www.w3.org/2001/XMLSchema#{$datatype}"/>
    <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#{$datatype}"><xsl:text>[currently no definitions for free text input]</xsl:text></rdfs:comment>
</owl:DatatypeProperty>
</xsl:when>
<xsl:when test="@choice='XOR' or @choice='OR'">

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
