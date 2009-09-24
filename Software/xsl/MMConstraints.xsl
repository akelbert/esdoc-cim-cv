<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>

<!-- This stylesheet translates Metafor MindMap controlled vocabulary
files into a structured xml representation (260409) (230909) -->

<!-- higher priority (higher value) templates are matched before any
lower priority templates -->

  <!-- match the top level of the xml document -->
  <xsl:template match="/">
    <schema xmlns="http://www.ascc.net/xml/schematron" xmlns:xs="tmp.none">

      <xsl:variable name="Realm">
        <xsl:value-of select="//node[font[@BOLD='true']]/@TEXT"/>
      </xsl:variable>

      <pattern name="CMIP5 CV constraints checks for realm {$Realm}">
        <xsl:apply-templates/>
      </pattern>
    </schema>
  </xsl:template>

  <!-- match all nodes to the left (these are for information only) -->
  <xsl:template match="node[@POSITION='left']" priority="6">
    <!-- skip -->
  </xsl:template>

  <!-- match all nodes which are not complete (messagebox_warning icon) -->
  <xsl:template match="node[icon[@BUILTIN='messagebox_warning']]" priority="5" >
    <!-- skip -->
  </xsl:template>

  <!-- match all nodes in italics as they are comments (but not the top one!)-->
  <xsl:template match="node[font[@ITALIC='true'] and not(parent::map)]" priority="5" >
    <!-- skip -->
  </xsl:template>

  <!-- match all textual "hook" nodes which contain node notes -->
  <xsl:template match="hook" priority="5">
    <!-- skip these nodes, the text is picked up separately -->
  </xsl:template>

  <!-- match all component nodes (bold font) -->
  <!-- priority 4 overrides any lower (and default) priority template matches -->
  <xsl:template match="node[font[@BOLD='true']]" priority="4">
    <xsl:apply-templates/>
  </xsl:template>

  <!-- match all parameter nodes which contain values (colour brown) -->
  <xsl:template match="node[@COLOR='#996600']" priority="3">

    <xsl:if test="node">
      <!-- only output if our parameter has at least one defined value.
           This clause will not get triggered for "correct" mindmaps but
           is useful as it allows some "in-prep" mindmaps to give valid
           output. Note we simply test there is a node rather than
            checking if the node is a valid "value" node  -->

      <xsl:if test="hook/text">

        <xsl:variable name="ComponentHierarchy">
        <xsl:for-each select="ancestor::node[font[@BOLD='true']]">
          <xsl:value-of select = "@TEXT" />
          <xsl:if test = "not(position()=last())" >
            <xsl:text>/</xsl:text>
          </xsl:if>
        </xsl:for-each>
        </xsl:variable>

        <xsl:variable name="ComponentName">
          <xsl:value-of select="parent::node[font[@BOLD='true']]/@TEXT"/>
        </xsl:variable>

        <xsl:variable name="ParameterName">
          <xsl:value-of select="@TEXT"/>
        </xsl:variable>

        <xsl:variable name="ConstraintText">
          <xsl:value-of select="hook/text"/>
        </xsl:variable>

        <rule context="/CIMRecord//modelComponent[shortName='{$ComponentName}']">

<!--
        <debug info="constraint raw text">
        <xsl:value-of select="$ConstraintText"/>
        </debug>
-->
        <xsl:variable name="AfterIf" select="normalize-space(substring-after($ConstraintText,'Only required if'))"/>

        <xsl:variable name="OtherParameterValueString" select="normalize-space(substring-before($AfterIf,' is selected for '))"/>

        <xsl:variable name="OtherParameterName" select="normalize-space(substring-before(substring-after($AfterIf,'is selected for &quot;'),'&quot;.'))"/>

<!--
<debug info="value of other parameter name">
<xsl:value-of select="$OtherParameterName"/>
</debug>

<debug info="value of other parameter value string">
<xsl:value-of select="$OtherParameterValueString"/>
</debug>
-->
        <xsl:variable name="OtherParameterValues">
        <xsl:call-template name="OutputVarNames">
          <xsl:with-param name="VarString" select="$OtherParameterValueString"/>
        </xsl:call-template>
        </xsl:variable>

        <assert test="(componentProperty[shortName='{$ParameterName}'] and componentProperty[shortName='{$OtherParameterName}' and value='{$OtherParameterValues}']) or (not(componentProperty[shortName='{$ParameterName}']) and (componentProperty[shortName='{$OtherParameterName}' and not(value='{$OtherParameterValues}'])))">
        <xsl:text>Rule [</xsl:text><xsl:value-of select="$ConstraintText"/><xsl:text>] is not valid for component </xsl:text><xsl:value-of select="$ComponentHierarchy"/><xsl:text> and parameter </xsl:text><xsl:value-of select="$ParameterName"/>
        </assert>
<!--
        <report test="if {$ParameterName} exists then {$OtherParameterName} must have value {$OtherParameterValues}">Report text</report>
        <assert test="">Assert text</assert>
-->

        </rule>
<!--
        </pattern>
-->
      </xsl:if>

    </xsl:if>

  </xsl:template>

  <xsl:template name="OutputVarNames">
    <xsl:param name="VarString"/>
    <xsl:variable name="LHS" select="normalize-space(substring-before($VarString,'&quot; or '))"/>
    <xsl:variable name="RHS" select="normalize-space(substring-after($VarString,'&quot; or '))"/>

    <xsl:choose>
    <xsl:when test="$RHS='' and $LHS=''">
      <xsl:value-of select="substring-before(substring-after($VarString,'&quot;'),'&quot;')"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="substring-after($LHS,'&quot;')"/>
      <xsl:text> or </xsl:text>
      <xsl:call-template name="OutputVarNames">
      <xsl:with-param name="VarString" select="$RHS"/>
      </xsl:call-template>
    </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- match all nodes which expect a numerical keyboard input (full-1 icon) -->
  <xsl:template match="node[icon[@BUILTIN='full-1']]" priority="2">
  </xsl:template>

  <!-- match all nodes which expect a string keyboard input (pencil icon) -->
  <xsl:template match="node[icon[@BUILTIN='pencil']]" priority="2">
  </xsl:template>

  <!-- match all nodes which provide vocabulary (button_ok,button_cancel,bookmark) -->
  <xsl:template match="node[icon[@BUILTIN='button_ok' or @BUILTIN='button_cancel' or @BUILTIN='bookmark']]" priority="1">
  </xsl:template>

<!-- end of pattern matching -->
  <xsl:template name="display_path">
  </xsl:template>

</xsl:stylesheet>
