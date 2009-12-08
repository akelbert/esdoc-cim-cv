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

<!-- skip definitions so we don't output their values -->
<xsl:template match="definition"/>

<xsl:template match="parameter">

<xsl:variable name="myName">
  <xsl:call-template name="processName">
    <xsl:with-param name="name" select="@name"/>
  </xsl:call-template>
</xsl:variable>

<xsl:variable name="mySplitName">
  <xsl:call-template name="splitName">
    <xsl:with-param name="name" select="$myName"/>
    <xsl:with-param name="level" select="'1'"/> <!-- so we can ignore spaces for the first capital -->
  </xsl:call-template>
</xsl:variable>

<xsl:variable name="AttributeString">
  <xsl:for-each select="ancestor::component">
    <xsl:if test="position()!=1"> <!-- skip the realm component as the realm name is encoded at the next level -->
      <xsl:if test="not(@name='KeyProperties')"> <!-- skip KeyProperties component -->
        <xsl:variable name="tmpName">
          <xsl:call-template name="processName">
            <xsl:with-param name="name" select="@name"/>
          </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select = "$tmpName" />
      </xsl:if>
    </xsl:if>
  </xsl:for-each>
  <!-- skip General Attributes parameter group definition -->
  <xsl:if test="not(ancestor::parametergroup[1]/@name='General Attributes')">
    <xsl:variable name="tmpName">
      <xsl:call-template name="processName">
        <xsl:with-param name="name" select="ancestor::parametergroup[1]/@name"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:value-of select="$tmpName"/>
  </xsl:if>
  <xsl:value-of select="$myName"/>
</xsl:variable>

<xsl:variable name="AttributeStringSpaces">
  <xsl:for-each select="ancestor::component">
    <xsl:if test="position()!=1"> <!-- skip the realm component as the realm name is encoded at the next level -->
    <xsl:if test="not(@name='KeyProperties')"> <!-- skip KeyProperties component -->

      <xsl:variable name="tmpName">
        <xsl:call-template name="processName">
          <xsl:with-param name="name" select="@name"/>
        </xsl:call-template>
      </xsl:variable>

      <xsl:variable name="tmpSplitName">
        <xsl:call-template name="splitName">
          <xsl:with-param name="name" select="$tmpName"/>
          <xsl:with-param name="skipSpace" select="'true'"/> <!-- so we can ignore spaces for the first capital -->
        </xsl:call-template>
      </xsl:variable>
      <xsl:value-of select="$tmpSplitName"/>

      <xsl:value-of select="' '"/>
    </xsl:if>
    </xsl:if>
  </xsl:for-each>
  <xsl:if test="not(ancestor::parametergroup[1]/@name='General Attributes')">
    <xsl:variable name="tmpName">
      <xsl:call-template name="processName">
        <xsl:with-param name="name" select="ancestor::parametergroup[1]/@name"/>
      </xsl:call-template>
    </xsl:variable>
    <xsl:variable name="tmpSplitName">
      <xsl:call-template name="splitName">
        <xsl:with-param name="name" select="$tmpName"/>
        <xsl:with-param name="skipSpace" select="'true'"/> <!-- so we can ignore spaces for the first capital -->
      </xsl:call-template>
    </xsl:variable>
    <xsl:value-of select="$tmpSplitName"/>
    <xsl:value-of select="' '"/>
  </xsl:if>
  <xsl:value-of select="$mySplitName"/>
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
      <rdfs:domain rdf:resource="http://dataportal.ucar.edu/schemas/esg.owl#ModelComponent"/>
      <rdfs:comment rdf:datatype="http://www.w3.org/2001/XMLSchema#string"><xsl:value-of select="$Definition"/></rdfs:comment>
      <rdfs:range rdf:resource="#{$AttributeString}"/>
    </owl:ObjectProperty> 

    <xsl:for-each select="value[not(normalize-space(translate(@name,'OTHER','other'))='other')]">
      <!-- RF adding any required namespace directly below is a hack - but it works -->
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

<xsl:template name="processName">
  <xsl:param name="name"/>

  <!-- just in case some white space has crept in. This should not pass the validation tests if it has -->
  <xsl:variable name="normName" select="normalize-space($name)"/>

<!-- remove anything before "_" and anything after "." as Marie-Pierre has used this convention in the mindmaps
 to remove redundancy in the name hierarchy -->
<xsl:variable name="NumberOfDots" select="string-length($normName) - string-length(translate($normName, '.', ''))"/>
<xsl:variable name="NumberOfUnderbars" select="string-length($normName) - string-length(translate($normName, '_', ''))"/>

<xsl:variable name="myName">
  <xsl:choose>
    <xsl:when test="$NumberOfDots = 0 and $NumberOfUnderbars = 0">
    <xsl:value-of select="$normName"/>
    </xsl:when>
    <xsl:when test="$NumberOfDots = 1 and $NumberOfUnderbars = 1">
    <xsl:value-of select="substring-before(substring-after($normName,'_'),'.')"/>
    </xsl:when>
    <xsl:when test="$NumberOfDots = 1 and $NumberOfUnderbars = 0">
    <xsl:value-of select="substring-before($normName,'.')"/>
    </xsl:when>
    <xsl:when test="$NumberOfDots = 0 and $NumberOfUnderbars = 1">
    <xsl:value-of select="substring-after($normName,'_')"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:message terminate="yes">
        <xsl:text>Error in removal of any "_" and "." text in parameter name for </xsl:text>
        <xsl:value-of select="@name"/>
        <xsl:text>. Are you sure you have generated this xml from a valid mm file?</xsl:text>
      </xsl:message>
    </xsl:otherwise>
  </xsl:choose>
</xsl:variable>

<xsl:if test="$myName=''">
  <xsl:message terminate="yes">
    <xsl:text>Error in removal of any "_" and "." text in parameter name for </xsl:text>
    <xsl:value-of select="@name"/>
  </xsl:message>
</xsl:if>

<xsl:value-of select="$myName"/>

</xsl:template>

</xsl:stylesheet>
