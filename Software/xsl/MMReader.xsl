<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>

<!-- This stylesheet translates Metafor MindMap controlled vocabulary
files into a structured xml representation (260409) -->

  <!-- match the top level of the xml document -->
  <xsl:template match="/">
    <vocab>
      <xsl:apply-templates/>
    </vocab>
  </xsl:template>

  <!-- match all nodes to the left -->
  <!-- priority 2 overrides any lower priority template matches -->
  <xsl:template match="node[@POSITION='left']" priority="2">
    <!-- skip these nodes as they are for information only -->
  </xsl:template>

  <!-- match all nodes with a messagebox_warning icon -->
  <!-- priority 2 overrides any lower priority template matches -->
  <xsl:template match="node[icon[@BUILTIN='messagebox_warning']]" priority="2" >
    <!-- skip these nodes as they are not complete -->
  </xsl:template>

  <!-- match all bold nodes -->
  <!-- priority 1 overrides any lower priority template matches -->
  <xsl:template match="node[font[@BOLD='true']]" priority="1">
    <!-- These nodes are component nodes -->
    <!-- determine type of component -->
    <xsl:variable name="ComponentType">
    <xsl:choose>
      <xsl:when test="@COLOR='#990099'">
        <xsl:text>scheme</xsl:text>
      </xsl:when>
      <xsl:when test="font[@SIZE='14']">
        <xsl:text>sub-component</xsl:text>
      </xsl:when>
      <xsl:when test="font[@SIZE='18']">
        <xsl:text>component</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:message terminate="yes">
        <xsl:text>Error, unknown component type found in mindmap
</xsl:text>
        </xsl:message>
      </xsl:otherwise>
    </xsl:choose>
    </xsl:variable>
    <!-- The presence of a link indicates info exists elsewhere -->
    <xsl:choose>
    <xsl:when test="@LINK">
      <componentRef name="{@TEXT}" ref="{@LINK}" mmtype="{$ComponentType}"/>
    </xsl:when>
    <xsl:otherwise>
      <component name="{@TEXT}" mmtype="{$ComponentType}">
        <xsl:apply-templates/>
      </component>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- match all brown nodes -->
  <xsl:template match="node[@COLOR='#996600']">
    <!-- These nodes are parameter nodes with controlled values -->
    <parameter name="{@TEXT}">
      <xsl:apply-templates/>
    </parameter>
  </xsl:template>

  <!-- match all purple nodes -->
  <xsl:template match="node[@COLOR='#990099']">
    <!-- These nodes are complex parameter nodes with controlled values -->
    <ComplexParameter name="{@TEXT}">
      <xsl:apply-templates/>
    </ComplexParameter>
  </xsl:template>

  <!-- match all blue nodes -->
  <xsl:template match="node[@COLOR='#0033ff']">
    <!-- These nodes are common parameters with controlled values -->
    <!-- The presence of a link indicates info exists elsewhere -->
    <xsl:choose>
    <xsl:when test="@LINK">
      <CommonPropertyTypeRef name="{@TEXT}" ref="{@LINK}"/>
    </xsl:when>
    <xsl:otherwise>
      <CommonPropertyType name="{@TEXT}">
        <xsl:apply-templates/>
      </CommonPropertyType>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- match all nodes with a button_ok icon -->
  <xsl:template match="node[icon[@BUILTIN='button_ok']]">
    <!-- These nodes provide values and indicate more than one value
    can be provided -->
    <value name="{@TEXT}" type="OR">
      <xsl:apply-templates/>
    </value>
  </xsl:template>

  <!-- match all nodes with a button_cancel icon -->
  <xsl:template match="node[icon[@BUILTIN='button_cancel']]">
    <!-- These nodes provide values and indicate that only one value
    is required -->
    <value name="{@TEXT}" type="XOR">
      <xsl:apply-templates/>
    </value>
  </xsl:template>

  <!-- match all nodes with a bookmark icon -->
  <xsl:template match="node[icon[@BUILTIN='bookmark']]">
    <!-- These nodes provide values and indicate that all entries are
    required -->
    <value name="{@TEXT}" type="AND">
      <xsl:apply-templates/>
    </value>
  </xsl:template>

  <!-- match all nodes with a full-1 icon -->
  <xsl:template match="node[icon[@BUILTIN='full-1']]">
    <!-- These nodes provided values and indicates that a number
    should be entered -->
    <!-- Remove the square brackets from the name -->
    <xsl:variable name="myName" select="substring-before(substring-after(@TEXT,'['),']')"/>
    <xsl:choose>
    <xsl:when test="icon[@BUILTIN='button_cancel']">
      <value name="{$myName}" format="number" type="XOR" >
        <xsl:apply-templates/>
      </value>
    </xsl:when>
    <xsl:when test="icon[@BUILTIN='button_ok']">
      <value name="{$myName}" format="number" type="OR" >
        <xsl:apply-templates/>
      </value>
    </xsl:when>
    <xsl:when test="icon[@BUILTIN='bookmark']">
      <value name="{$myName}" format="number" type="AND" >
        <xsl:apply-templates/>
      </value>
    </xsl:when>
    <xsl:otherwise>
      <value name="{$myName}" format="number">
        <xsl:apply-templates/>
      </value>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- match all nodes with a pencil icon -->
  <xsl:template match="node[icon[@BUILTIN='pencil']]">
    <!-- These nodes provided values and indicates that a string
    should be entered -->
    <!-- Remove the square brackets from the name -->
    <xsl:variable name="myName" select="substring-before(substring-after(@TEXT,'['),']')"/>
    <xsl:choose>
    <xsl:when test="icon[@BUILTIN='button_cancel']">
      <value name="{$myName}" format="string" type="XOR" >
        <xsl:apply-templates/>
      </value>
    </xsl:when>
    <xsl:when test="icon[@BUILTIN='button_ok']">
      <value name="{$myName}" format="string" type="OR" >
        <xsl:apply-templates/>
      </value>
    </xsl:when>
    <xsl:when test="icon[@BUILTIN='bookmark']">
      <value name="{$myName}" format="string" type="AND" >
        <xsl:apply-templates/>
      </value>
    </xsl:when>
    <xsl:otherwise>
      <value name="{$myName}" format="string">
        <xsl:apply-templates/>
      </value>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- match all hook elements -->
  <xsl:template match="hook">
    <xsl:if test="text!=''">
    <text><xsl:value-of select="text"/></text>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
