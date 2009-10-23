<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>

<xsl:param name="Couple" select="'no'"/>

<!-- This stylesheet translates Metafor MindMap controlled vocabulary
files into a structured xml representation (260409) -->

<!-- higher priority (higher value) templates are matched before any
lower priority templates -->

  <!-- match the top level of the xml document -->
  <xsl:template match="/">
    <xsl:variable name="MMVersion">
      <xsl:call-template name="GetMMVersion"/>
    </xsl:variable>
    <vocab mmversion="{$MMVersion}" defnversion="">
      <xsl:apply-templates/>
    </vocab>
  </xsl:template>

  <xsl:template name="GetMMVersion">
    <xsl:value-of select="//node[@POSITION='left' and @TEXT='version']/node/@TEXT"/>
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
  <!--<xsl:template match="hook" priority="5">-->
    <!-- skip these nodes, the text is picked up separately -->
  <!--</xsl:template>-->

  <!-- match all component nodes (bold font) -->
  <!-- priority 4 overrides any lower (and default) priority template matches -->
  <xsl:template match="node[font[@BOLD='true']]" priority="4">
    <!-- The presence of a link indicates this is a reference. We allow references but ignore them -->
    <xsl:if test="not(@LINK)">

        <xsl:variable name="myName">
          <xsl:call-template name="string-replace">
            <xsl:with-param name="from" select="'_'"/>
            <xsl:with-param name="to" select="''"/> 
            <xsl:with-param name="string" select="@TEXT"/>
          </xsl:call-template>
        </xsl:variable>

        <component name="{$myName}">
          <xsl:if test="not(hook/text/definition)">
            <definition status="missing"><xsl:text>Definition of component type </xsl:text><xsl:value-of select="$myName"/><xsl:text> required</xsl:text></definition>
          </xsl:if>
          <xsl:if test="not(node[@COLOR='#990099' and @TEXT=concat($myName,'_Attributes')])">
            <parametergroup name="{concat($myName,'Attributes')}"/>
          </xsl:if>
          <xsl:apply-templates/>
        </component>

    </xsl:if>

  </xsl:template>

  <!-- match all parameter bundle nodes (colour purple) -->
  <xsl:template match="node[@COLOR='#990099']" priority="3">

        <xsl:variable name="myName">
          <xsl:call-template name="string-replace">
            <xsl:with-param name="from" select="'_'"/>
            <xsl:with-param name="to" select="''"/> 
            <xsl:with-param name="string" select="@TEXT"/>
          </xsl:call-template>
        </xsl:variable>

        <parametergroup name="{$myName}">
          <xsl:apply-templates/>
        </parametergroup>

  </xsl:template>

  <!-- match all constraint nodes (colour blue) -->
  <xsl:template match="node[@COLOR='#0033ff']" priority="3">

    <xsl:variable name="CountCoupleValues" select="count(node[@COLOR='#996600' and not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true'])]/node[not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true'])]/icon[@BUILTIN='back'])"/>
    <xsl:variable name="CountValues" select="count(node[@COLOR='#996600' and not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true'])]/node[not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true'])])"/>
    <xsl:if test="$Couple='yes' or $CountCoupleValues!=$CountValues"> <!-- ignore constraints which only contain couple parameters when we choose to ignore couple parameters -->
        <constraint name="{@TEXT}">
          <xsl:apply-templates/>
        </constraint>
    </xsl:if>

  </xsl:template>

  <!-- match all parameter nodes (colour brown) -->
  <xsl:template match="node[@COLOR='#996600']" priority="3">

    <xsl:if test="node">
      <!-- only output if our parameter has at least one defined value.
           This clause will not get triggered for "correct" mindmaps but
           is useful as it allows some "in-prep" mindmaps to give valid
           output. Note we simply test there is a node rather than
            checking if the node is a valid "value" node  -->

    <xsl:variable name="choice">
      <xsl:call-template name="GetChoice"/>
    </xsl:variable>

      <xsl:choose>
      <xsl:when test="$choice">
        <xsl:if test="not($Couple='no' and $choice='couple')">
          <parameter name="{@TEXT}" choice="{$choice}" >
            <xsl:if test="not(hook/text/definition)">
              <definition status="missing"><xsl:text>Definition of property name </xsl:text><xsl:value-of select="@TEXT"/><xsl:text> required</xsl:text></definition>
            </xsl:if>
            <xsl:apply-templates/>
          </parameter>
        </xsl:if>
      </xsl:when>
      <xsl:otherwise>
        <parameter name="{@TEXT}" >
          <xsl:if test="not(hook/text/definition)">
            <definition status="missing"><xsl:text>Definition of property name </xsl:text><xsl:value-of select="@TEXT"/><xsl:text> required</xsl:text></definition>
          </xsl:if>
          <xsl:apply-templates/>
        </parameter>
      </xsl:otherwise>
      </xsl:choose>
<!--
    </xsl:otherwise>
    </xsl:choose>
-->
    </xsl:if>

  </xsl:template>

  <!-- match all nodes which expect a numerical keyboard input (full-1 icon) -->
  <xsl:template match="node[icon[@BUILTIN='full-1']]" priority="2">
    <!-- Extract the name from the Square Brackets -->
    <xsl:variable name="myName" select="substring-before(substring-after(@TEXT,'['),']')"/>
    <!-- Extract the units from the Round Brackets -->
    <xsl:variable name="myUnits" select="substring-before(substring-after(@TEXT,'('),')')"/>

<!--
    <xsl:choose>
    <xsl:when test="hook/text">

      <xsl:choose>
      <xsl:when test="$myUnits">
        <value format="numerical" name="{$myName}" units="{$myUnits}" note="{hook/text}"/>
      </xsl:when>
      <xsl:otherwise>
        <value format="numerical" name="{$myName}" note="{hook/text}"/>
      </xsl:otherwise>
      </xsl:choose>

    </xsl:when>
    <xsl:otherwise>
-->
      <xsl:choose>
      <xsl:when test="$myUnits">
        <value format="numerical" name="{$myName}" units="{$myUnits}">
          <xsl:apply-templates/>
        </value>
      </xsl:when>
      <xsl:otherwise>
        <value format="numerical" name="{$myName}">
          <xsl:apply-templates/>
        </value>
      </xsl:otherwise>
      </xsl:choose>
<!--
    </xsl:otherwise>
    </xsl:choose>
-->
  </xsl:template>

  <!-- match all nodes which expect a string keyboard input (pencil icon) -->
  <xsl:template match="node[icon[@BUILTIN='pencil']]" priority="2">
    <!-- Extract the name from the Square Brackets -->
    <xsl:variable name="myName" select="substring-before(substring-after(@TEXT,'['),']')"/>

<!--
    <xsl:choose>
    <xsl:when test="hook/text">
      <value format="string" name="{$myName}" note="{hook/text}"/>
    </xsl:when>
    <xsl:otherwise>
-->
      <value format="string" name="{$myName}">
        <xsl:apply-templates/>
      </value>
<!--
    </xsl:otherwise>
    </xsl:choose>
-->

  </xsl:template>

  <!-- match all nodes which provide vocabulary (button_ok,button_cancel,bookmark) -->
  <xsl:template match="node[icon[@BUILTIN='button_ok' or @BUILTIN='button_cancel' or @BUILTIN='bookmark']]" priority="1">
<!--
    <xsl:choose>
    <xsl:when test="hook/text">
    <value name="{@TEXT}" note="{hook/text}"/>
    </xsl:when>
    <xsl:otherwise>
-->
    <value name="{@TEXT}">
      <xsl:apply-templates/>
    </value>
<!--
    </xsl:otherwise>
    </xsl:choose>
-->

  </xsl:template>

  <xsl:template match="constraint" priority="1">
    <!-- ignore old format constraints -->
  </xsl:template>

  <xsl:template match="info" priority="1">
    <!-- ignore old format info -->
  </xsl:template>

  <xsl:template match="definition" priority="1">
    <definition status="provided"><xsl:value-of select="."/></definition>
  </xsl:template>

  <xsl:template match="hook/text[not(constraint or info or definition)]" priority="1">
    <!-- skip old style notes in our output
    <oldnote><xsl:value-of select="."/></oldnote>
    -->
  </xsl:template>

<!-- end of pattern matching -->


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
    <xsl:when test="node/icon[@BUILTIN='back']">
      <!-- this is a coupling parameter -->
      <xsl:text>couple</xsl:text>
    </xsl:when>
    <xsl:when test="count(node)=1">
      <!-- there is only 1 node so we do not need XOR, OR or AND to be specified -->
      <xsl:text>1NODE</xsl:text>
    </xsl:when>
<!--
    <xsl:when test="count(node)=0">
        there are no nodes. This should not really happen (it is an error in the checker)
      <xsl:text>0NODES</xsl:text>
    </xsl:when>
-->
    <xsl:otherwise>
      <xsl:message terminate="yes">
        <xsl:text>Error: In general a parameter should have a child with a value that is declared as one of XOR, OR, AND, or KeyBoardEntry. The exception is when the parameter only has one child. This parameter breaks these rules.
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

<xsl:template name="string-replace" >
  <xsl:param name="string"/>
  <xsl:param name="from"/>
  <xsl:param name="to"/>
  <xsl:choose>
    <xsl:when test="contains($string,$from)">
      <xsl:value-of select="substring-before($string,$from)"/>
      <xsl:value-of select="$to"/>
      <xsl:call-template name="string-replace">
      <xsl:with-param name="string" select="substring-after($string,$from)"/>
      <xsl:with-param name="from" select="$from"/>
      <xsl:with-param name="to" select="$to"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$string"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

</xsl:stylesheet>
