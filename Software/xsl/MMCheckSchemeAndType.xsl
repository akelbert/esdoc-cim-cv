<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text"/>

<!-- This stylesheet performs checks on the Metafor MindMap controlled
vocabulary files to make sure they conform to the rule that a leaf
component must have a scheme and a type parameter (270409) -->

  <xsl:param name="verbose" select="'no'"/>

  <xsl:template match="node[@POSITION='left']" priority="1">
    <!-- skip these nodes as they are for information only -->
  </xsl:template>

  <!-- match all nodes with a messagebox_warning icon -->
  <!-- priority 2 overrides any lower priority template matches -->
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
    <xsl:text>Checking that leaf components have a "Scheme" and a "Type" parameter ...
</xsl:text>
    </xsl:if>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="node[font[@BOLD='true']]">
    <xsl:variable name="ComponentName" select="@TEXT"/>
    <xsl:if test="$verbose='yes'">
    <xsl:text>Found component </xsl:text>
    <xsl:value-of select="$ComponentName"/>
    <xsl:text>
</xsl:text>
    </xsl:if>
    <xsl:choose>
      <xsl:when test="count(node[font[@BOLD='true']])>0">
        <xsl:if test="$verbose='yes'">
        <xsl:text>  I contain more components
</xsl:text>
        </xsl:if>
      </xsl:when>
      <xsl:when test="@LINK">
        <xsl:if test="$verbose='yes'">
        <xsl:text>  I am a component reference
</xsl:text>
        </xsl:if>
      </xsl:when>
      <xsl:otherwise>
        <xsl:if test="$verbose='yes'">
        <xsl:text>  I am a leaf component
</xsl:text>
        </xsl:if>

        <!-- Check that we have a scheme parameter -->
        <xsl:if test="not(node[@TEXT='Scheme' and @COLOR='#996600'])">
          <xsl:message terminate="no">
            <xsl:text>Error: leaf component '</xsl:text>
            <xsl:value-of select="$ComponentName"/>
            <xsl:text>' must have a Scheme parameter
</xsl:text>
          </xsl:message>
        </xsl:if>

        <!-- Check that we have a type parameter -->
        <xsl:if test="not(node[@TEXT='Type' and @COLOR='#996600'])">
          <xsl:message terminate="no">
            <xsl:text>Error: leaf component '</xsl:text>
            <xsl:value-of select="$ComponentName"/>
            <xsl:text>' must have a Type parameter
</xsl:text>
          </xsl:message>
        </xsl:if>

      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates/>
  </xsl:template>

</xsl:stylesheet>
