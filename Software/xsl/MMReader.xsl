<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>

<!-- This stylesheet translates Metafor MindMap controlled vocabulary
files into a structured xml representation (260409) -->

<!-- higher priority (higher value) templates are matched before any
lower priority templates -->

  <!-- match the top level of the xml document -->
  <xsl:template match="/">
    <vocab>
      <xsl:apply-templates/>
    </vocab>
  </xsl:template>

  <!-- match all nodes to the left (these are for information only) -->
  <xsl:template match="node[@POSITION='left']" priority="6">
    <!-- skip -->
  </xsl:template>

  <!-- match all nodes which are not complete (messagebox_warning icon) -->
  <xsl:template match="node[icon[@BUILTIN='messagebox_warning']]" priority="5" >
    <!-- skip -->
  </xsl:template>

  <!-- match all textual "hook" nodes which contain node notes -->
  <xsl:template match="hook" priority="5">
    <!-- skip these nodes, the text is picked up separately -->
  </xsl:template>

  <!-- match all component nodes (bold font) -->
  <!-- priority 4 overrides any lower (and default) priority template matches -->
  <xsl:template match="node[font[@BOLD='true']]" priority="4">
    <!-- determine type of component -->
    <xsl:variable name="ComponentType">
      <xsl:call-template name="GetComponentType"/>
    </xsl:variable>
    <!-- The presence of a link indicates info exists elsewhere -->
    <xsl:choose>
    <xsl:when test="@LINK">
      <componentRef name="{@TEXT}" ref="{@LINK}" mmtype="{$ComponentType}"/>
    </xsl:when>
    <xsl:otherwise>
      <!-- add an id if I am referenced -->
      <component name="{@TEXT}" mmtype="{$ComponentType}">
        <xsl:apply-templates/>
      </component>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- match all parameter nodes which contain values (colour brown) -->
  <xsl:template match="node[@COLOR='#996600']" priority="3">
    <xsl:variable name="choice">
      <xsl:call-template name="GetChoice"/>
    </xsl:variable>
    <xsl:choose>
    <xsl:when test="hook/text">
    <parameter name="{@TEXT}" common="false" choice="{$choice}" note="{hook/text}" >
      <xsl:apply-templates/>
    </parameter>
    </xsl:when>
    <xsl:otherwise>
    <parameter name="{@TEXT}" common="false" choice="{$choice}" >
      <xsl:apply-templates/>
    </parameter>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- match all parameter nodes which contain other parameters (colour purple) -->
  <xsl:template match="node[@COLOR='#990099']" priority="3">
    <xsl:variable name="choice">
      <xsl:call-template name="GetChoice"/>
    </xsl:variable>
    <xsl:choose>
    <xsl:when test="hook/text">
    <parameter name="{@TEXT}" common="false" choice="{$choice}" note="{hook/text}" >
      <xsl:apply-templates/>
    </parameter>
    </xsl:when>
    <xsl:otherwise>
    <parameter name="{@TEXT}" common="false" choice="{$choice}" >
      <xsl:apply-templates/>
    </parameter>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- match all common parameters (colour blue) -->
  <xsl:template match="node[@COLOR='#0033ff']" priority="3">
    <!-- The presence of a link indicates info exists elsewhere -->
    <xsl:choose>
    <xsl:when test="@LINK">
      <parameterRef name="{@TEXT}" common="true" ref="{@LINK}"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:variable name="choice">
        <xsl:call-template name="GetChoice"/>
      </xsl:variable>
    <xsl:choose>
    <xsl:when test="hook/text">
      <parameter name="{@TEXT}" common="true" choice="{$choice}" note="{hook/text}" >
        <xsl:apply-templates/>
      </parameter>
    </xsl:when>
    <xsl:otherwise>
      <parameter name="{@TEXT}" common="true" choice="{$choice}" >
        <xsl:apply-templates/>
      </parameter>
    </xsl:otherwise>
    </xsl:choose>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- match all nodes which expect a numerical keyboard input (full-1 icon) -->
  <xsl:template match="node[icon[@BUILTIN='full-1']]" priority="2">
    <!-- Remove the square brackets from the name -->
    <xsl:variable name="myName" select="substring-before(substring-after(@TEXT,'['),']')"/>
    <value format="numerical" note="{$myName}"/>
  </xsl:template>

  <!-- match all nodes which expect a string keyboard input (pencil icon) -->
  <xsl:template match="node[icon[@BUILTIN='pencil']]" priority="2">
    <!-- Remove the square brackets from the name -->
    <xsl:variable name="myName" select="substring-before(substring-after(@TEXT,'['),']')"/>
    <value format="string" note="{$myName}" />
  </xsl:template>

  <!-- match all nodes which provide vocabulary (button_ok,button_cancel,bookmark) -->
  <xsl:template match="node[icon[@BUILTIN='button_ok' or @BUILTIN='button_cancel' or @BUILTIN='bookmark']]" priority="1">
    <xsl:choose>
    <xsl:when test="hook/text">
    <value name="{@TEXT}" note="{hook/text}"/>
    </xsl:when>
    <xsl:otherwise>
    <value name="{@TEXT}"/>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="GetChoice">
    <xsl:choose>
    <xsl:when test="node/icon[@BUILTIN='button_cancel']">
      <xsl:text>XOR</xsl:text>
    </xsl:when>
    <xsl:when test="node/icon[@BUILTIN='button_ok']">
      <xsl:text>OR</xsl:text>
    </xsl:when>
    <xsl:when test="node/icon[@BUILTIN='bookmark']">
      <xsl:text>AND</xsl:text>
    </xsl:when>
    <xsl:when test="node/icon[@BUILTIN='full-1' or @BUILTIN='pencil']">
      <!-- there is only one option which must be typed by the user -->
      <xsl:text>keyboard</xsl:text>
    </xsl:when>
    <!-- I am purple and at least one of my children are brown -->
    <xsl:when test="@COLOR='#990099' and node[@COLOR='#996600']">
      <!-- assumption: it is XOR for parameters containing parameters -->
      <xsl:text>XOR</xsl:text>
    </xsl:when>
    <!-- I am blue and at least one of my children are purple or brown -->
    <xsl:when test="@COLOR='#0033ff' and node[@COLOR='#990099' or @COLOR='#996600']">
      <!-- assumption: it is AND for vocab containing parameters -->
      <xsl:text>AND</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:message terminate="yes">
        <xsl:text>Error: In general a parameter should have a child with a value that is declared as one of XOR,OR,AND, or KeyBoardEntry. The valid exceptions are 1: a parameter coded in purple contains parameters coded in brown 2: the common CV parameter coded in blue may contain parameters coded in brown and/or parameters coded in purple. This parameter breaks these rules.
</xsl:text>
        <xsl:text>Parameter is '</xsl:text>
      <xsl:value-of select="@TEXT"/>
      <xsl:text>' in Component '</xsl:text>
      <xsl:value-of select="ancestor::node[font[@BOLD='true']][1]/@TEXT"/>
      <xsl:text>'
</xsl:text>
      </xsl:message>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="GetComponentType">
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
        <xsl:text>Error, unknown component type found in mindmap</xsl:text>
        <xsl:text>Expecting component (bold 18font), sub-component(bold 14font) or scheme(bold,blue,14font.
</xsl:text>
        </xsl:message>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
