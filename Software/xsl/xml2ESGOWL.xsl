<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:owl2xml="http://www.w3.org/2006/12/owl2-xml#"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:owl="http://www.w3.org/2002/07/owl#"
    xmlns:esg="http://dataportal.ucar.edu/schemas/esg.owl#"
    xmlns="http://dataportal.ucar.edu/schemas/metafor.owl#">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>

<xsl:param name="Separator" select="''"/>
<xsl:param name="NSQualifier" select="''"/>

<xsl:template match="/">
<rdf:RDF xml:base="http://dataportal.ucar.edu/schemas/cmip5.owl">
  <owl:Ontology rdf:about="">
    <owl:imports rdf:resource="http://dataportal.ucar.edu/schemas/esg_data.owl"/>
    <owl:imports rdf:resource="http://dataportal.ucar.edu/schemas/grid.owl"/>
  </owl:Ontology>
  <xsl:apply-templates/>
</rdf:RDF>
</xsl:template>

<!-- skip definitions as we pull these out separately -->
<xsl:template match="definition"/>

<xsl:template match="parameter">

  <xsl:variable name="AttributeString">
    <xsl:for-each select="ancestor::component">
      <xsl:if test="@esgName!='KeyProperties'">
        <xsl:value-of select="@esgName"/>
      </xsl:if>
    </xsl:for-each>
    <xsl:value-of select="ancestor::parametergroup[1]/@esgName"/>
    <xsl:value-of select="@esgName"/>
  </xsl:variable>

  <xsl:variable name="AttributeStringSpaces">
    <xsl:for-each select="ancestor::component">
      <xsl:if test="@esgName!='' and @esgName!='KeyProperties'">
        <xsl:call-template name="splitName">
          <xsl:with-param name="name" select="@esgName"/>
          <!--  we don't want a space before the first capital letter -->
          <xsl:with-param name="skipSpace" select="'true'"/>
        </xsl:call-template>
        <xsl:value-of select="' '"/>
      </xsl:if>
    </xsl:for-each>
    <xsl:variable name="pgName" select="ancestor::parametergroup[1]/@esgName"/>
    <xsl:if test="$pgName!=''">
      <xsl:call-template name="splitName">
        <xsl:with-param name="name" select="$pgName"/>
        <xsl:with-param name="skipSpace" select="'true'"/>
      </xsl:call-template>
      <xsl:value-of select="' '"/>
    </xsl:if>
    <xsl:call-template name="splitName">
      <xsl:with-param name="name" select="@esgName"/>
      <xsl:with-param name="skipSpace" select="'true'"/>
    </xsl:call-template>
  </xsl:variable>

  <xsl:variable name="RDFProperty" select="concat('has',$AttributeString)"/>

  <xsl:choose>
    <xsl:when test="@choice='XOR' or @choice='OR' or @choice='AND'">
      <!-- controlled vocab -->

      <owl:Class rdf:ID="{$AttributeString}"/>

      <owl:ObjectProperty rdf:ID="{$RDFProperty}">
        <rdfs:label rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="$AttributeStringSpaces"/></rdfs:label>
        <rdfs:domain rdf:resource="http://dataportal.ucar.edu/schemas/esg.owl#ModelComponent"/>
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="definition"/></rdfs:comment>
        <rdfs:range rdf:resource="#{$AttributeString}"/>
      </owl:ObjectProperty> 

      <xsl:for-each select="value[not(normalize-space(translate(@name,'OTHER','other'))='other')]">
        <!-- RF adding namespace directly below is a hack - but it works -->
        <xsl:element name="{$NSQualifier}{$AttributeString}">
          <!-- RF hack again for rdf namespace -->
          <xsl:attribute name="rdf:ID"><!--<xsl:text>http://dataportal.ucar.edu/schemas/esg.owl#</xsl:text>--><xsl:text>#</xsl:text><xsl:value-of select="$AttributeString"/><xsl:text>_</xsl:text><xsl:value-of select="translate(@name,' ','_')"/></xsl:attribute>
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
        <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#{$datatype}"><xsl:value-of select="definition"/></rdfs:comment>
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

<xsl:template name="splitName">
  <xsl:param name="name"/>
  <xsl:param name="skipSpace"/>
  <xsl:if test="string-length($name)&gt;=1">
    <xsl:variable name="char" select="substring($name,1,1)"/>
    <xsl:if test="$skipSpace='false' and translate($char,'abcdefghijklmnopqrstuvwxyz-/','ABCDEFGHIJKLMNOPQRSTUVWXYZXX')=$char"> <!-- this char is upper case -->
      <xsl:text> </xsl:text>
    </xsl:if>
    <xsl:value-of select="$char"/>
    <xsl:variable name="skipNextSpace">
    <xsl:choose>
      <xsl:when test="$char='-' or $char='/'">
        <xsl:text>true</xsl:text>
      </xsl:when>
      <xsl:when test="string-length($name)&gt;1 and translate(substring($name,1,2),'abcdefghijklmnopqrstuvwxyz-/','ABCDEFGHIJKLMNOPQRSTUVWXYZXX')=substring($name,1,2)"> <!-- if this and next are both upper case then skip space next time -->
        <xsl:text>true</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>false</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    </xsl:variable>
    <xsl:call-template name="splitName">
      <xsl:with-param name="name" select="substring($name,2)"/>
      <xsl:with-param name="skipSpace" select="$skipNextSpace"/>
    </xsl:call-template>
  </xsl:if>

</xsl:template>

</xsl:stylesheet>
