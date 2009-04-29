<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>

<!-- This stylesheet translates the structured controlled vocabulary
xml representation into an xml MindMap representation (270409) -->

  <!-- match the top level of the xml document -->
  <xsl:template match="/">
    <xsl:variable name="RootComponentName" select="vocab/component/@name"/>
    <map version="0.8.1">
    <node BACKGROUND_COLOR="#ffffff" COLOR="#990000" CREATED="" ID="" MODIFIED="" STYLE="fork" TEXT="{$RootComponentName} Controlled Vocabulary">
      <edge WIDTH="2"/>
      <font ITALIC="true" NAME="Arial" SIZE="15"/>
      <xsl:apply-templates/>
    </node>
    </map>
  </xsl:template>

  <xsl:template match="component">
    <xsl:choose>
    <xsl:when test="@mmtype='component'">
    <node BACKGROUND_COLOR="#ffffff" CREATED="" ID="" MODIFIED="" POSITION="right" STYLE="bubble" TEXT="{@name}">
      <edge COLOR="#999999" STYLE="bezier" WIDTH="2"/>
      <font BOLD="true" NAME="Arial" SIZE="18"/>
      <xsl:apply-templates/>
    </node>
    </xsl:when>
    <xsl:when test="@mmtype='sub-component'">
    <node BACKGROUND_COLOR="#ffffff" CREATED="" ID="" MODIFIED="" POSITION="right" STYLE="bubble" TEXT="{@name}">
      <edge COLOR="#999999" STYLE="bezier" WIDTH="2"/>
      <font BOLD="true" NAME="Arial" SIZE="14"/>
      <xsl:apply-templates/>
    </node>
    </xsl:when>
    <xsl:when test="@mmtype='scheme'">
    <node BACKGROUND_COLOR="#ffffff" COLOR="#990099" CREATED="" ID="" MODIFIED="" POSITION="right" STYLE="bubble" TEXT="{@name}">
      <edge COLOR="#999999" STYLE="bezier" WIDTH="2"/>
      <font BOLD="true" NAME="SansSerif" SIZE="14"/>
      <xsl:apply-templates/>
    </node>
    </xsl:when>
    <xsl:otherwise>
      <xsl:message terminate="yes">
        <xsl:text>Error: unknown mmtype found for component in xml
</xsl:text>
      </xsl:message>
    </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <xsl:template match="componentRef">
    <xsl:choose>
    <xsl:when test="@mmtype='component'">
    <node BACKGROUND_COLOR="#ffffff" LINK="{@ref}" CREATED="" ID="" MODIFIED="" POSITION="right" STYLE="bubble" TEXT="{@name}">
      <edge COLOR="#999999" STYLE="bezier" WIDTH="2"/>
      <font BOLD="true" NAME="Arial" SIZE="18"/>
      <xsl:apply-templates/>
    </node>
    </xsl:when>
    <xsl:when test="@mmtype='sub-component'">
    <node BACKGROUND_COLOR="#ffffff" LINK="{@ref}" CREATED="" ID="" MODIFIED="" POSITION="right" STYLE="bubble" TEXT="{@name}">
      <edge COLOR="#999999" STYLE="bezier" WIDTH="2"/>
      <font BOLD="true" NAME="Arial" SIZE="14"/>
      <xsl:apply-templates/>
    </node>
    </xsl:when>
    <xsl:when test="@mmtype='scheme'">
    <node BACKGROUND_COLOR="#ffffff" COLOR="#990099" LINK="{@ref}" CREATED="" ID="" MODIFIED="" POSITION="right" STYLE="bubble" TEXT="{@name}">
      <edge COLOR="#999999" STYLE="bezier" WIDTH="2"/>
      <font BOLD="true" NAME="SansSerif" SIZE="14"/>
      <xsl:apply-templates/>
    </node>
    </xsl:when>
    <xsl:otherwise>
      <xsl:message terminate="yes">
        <xsl:text>Error: unknown mmtype found for component in xml
</xsl:text>
      </xsl:message>
    </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <xsl:template match="parameter">
    <node BACKGROUND_COLOR="#ffffff" COLOR="#996600" CREATED="" ID="" MODIFIED="" POSITION="right" TEXT="{@name}">
      <edge WIDTH="thin"/>
      <font NAME="SansSerif" SIZE="14"/>
      <xsl:apply-templates/>
    </node>
  </xsl:template>

  <xsl:template match="value">
    <node BACKGROUND_COLOR="#ffffff" CREATED="" ID="" MODIFIED="" STYLE="fork" TEXT="{@name}">
      <font NAME="Arial" SIZE="14"/>
      <xsl:choose>
        <xsl:when test="@format='number'">
          <icon BUILTIN="full-1"/>
        </xsl:when>
        <xsl:when test="@type='string'">
          <icon BUILTIN="pencil"/>
        </xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
      <xsl:choose>
        <xsl:when test="@type='XOR'">
          <icon BUILTIN="button_cancel"/>
        </xsl:when>
        <xsl:when test="@type='AND'">
          <icon BUILTIN="bookmark"/>
        </xsl:when>
        <xsl:when test="@type='OR'">
          <icon BUILTIN="button_ok"/>
        </xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
      <xsl:apply-templates/>
    </node>
  </xsl:template>

  <xsl:template match="CommonPropertyType">
    <node COLOR="#0033ff" CREATED="" ID="" MODIFIED="" POSITION="right" TEXT="{@name}">
      <font NAME="Arial" SIZE="15"/>
      <xsl:apply-templates/>
    </node>
  </xsl:template>

  <xsl:template match="CommonPropertyTypeRef">
    <node COLOR="#0033ff" LINK="@ref" CREATED="" ID="" MODIFIED="" POSITION="right" TEXT="{@name}">
      <font NAME="Arial" SIZE="15"/>
      <xsl:apply-templates/>
    </node>
  </xsl:template>
 
  <xsl:template match="ComplexParameter">
    <node BACKGROUND_COLOR="#ffffff" COLOR="#990099" CREATED="" ID="" MODIFIED="" STYLE="bubble" TEXT="{@name}">
      <font NAME="SansSerif" SIZE="14"/>
      <xsl:apply-templates/>
    </node>
  </xsl:template>

  <xsl:template match="text">
    <hook NAME="accessories/plugins/NodeNote.properties">
      <text><xsl:value-of select="."/></text>
    </hook>
  </xsl:template>

</xsl:stylesheet>
