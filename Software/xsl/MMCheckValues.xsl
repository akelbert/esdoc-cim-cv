<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text"/>

<!-- This stylesheet performs checks on the Metafor MindMap controlled
vocabulary files to make sure they conform to the rule that a value
does not contain a value and that the parent of a value is a parameter
(280409) -->

  <xsl:param name="verbose" select="'no'"/>

  <xsl:template match="node[@POSITION='left']" priority="1">
    <!-- skip these nodes as they are for information only -->
  </xsl:template>

  <!-- match all nodes with a messagebox_warning icon -->
  <xsl:template match="node[icon[@BUILTIN='messagebox_warning']]" priority="1" >
    <!-- skip these nodes as they are not complete -->
  </xsl:template>

  <xsl:template match="node()">
    <!-- skip anything we are not interested in -->
    <xsl:apply-templates/>
  </xsl:template>

  <!-- match the top level of the xml document -->
  <xsl:template match="/">
    <xsl:if test="$verbose='yes'">
    <xsl:text>Checking that 1: values must not contain values 2: the parent of a value is a parameter and 3: all values are choices or are typed.
</xsl:text>
    </xsl:if>
    <xsl:apply-templates/>
  </xsl:template>

  <!-- this convoluted test is for a value -->
  <xsl:template match="node[@STYLE='fork' and @COLOR='#000000' and not(font[@ITALIC])]">

    <!-- Does this node contain another node? -->
    <xsl:if test="node[@STYLE='fork' and @COLOR='#000000']">
      <xsl:message terminate="no">
        <xsl:text>Error: value '</xsl:text>
        <xsl:value-of select="@TEXT"/>
        <xsl:text>' for Param '</xsl:text>
        <xsl:value-of select="ancestor::node[@COLOR='#996600'][1]/@TEXT"/>
        <xsl:text>' in Component '</xsl:text>
        <xsl:choose>
          <xsl:when test="ancestor::node[font[@BOLD='true']]">
            <xsl:value-of select="ancestor::node[font[@BOLD='true']][1]/@TEXT"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>None</xsl:text>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:text>' contains another node
</xsl:text>
      </xsl:message>
    </xsl:if>

    <!-- Does this node have a parent that is a (brown) parameter? -->
    <xsl:if test="not(parent::node[@COLOR='#996600'])">
      <xsl:message terminate="no">
        <xsl:text>Error: value '</xsl:text>
        <xsl:value-of select="@TEXT"/>
        <xsl:text>' does not have a parameter as a parent.
</xsl:text>
      </xsl:message>
    </xsl:if>

    <!-- is this value specified as being OR,AND,XOR or a keyboard input? -->
    <xsl:if test="not(icon[@BUILTIN='pencil' or @BUILTIN='full-1' or @BUILTIN='button_cancel' or @BUILTIN='button_ok' or @BUILTIN='bookmark'])">
      <xsl:message terminate="no">
        <xsl:text>Error: value '</xsl:text>
        <xsl:value-of select="@TEXT"/>
        <xsl:text>' must be an integer, string or a controlled vocabulary choice (AND,OR,XOR)
</xsl:text>
      </xsl:message>
    </xsl:if>

    <xsl:apply-templates/>

  </xsl:template>

</xsl:stylesheet>
