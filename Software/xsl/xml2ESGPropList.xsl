<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text"/>
<xsl:strip-space elements="*"/>

<xsl:param name="Separator" select="''"/>
<xsl:param name="NSQualifier" select="''"/>

<!-- skip definitions as we pull these out separately -->
<xsl:template match="definition"/>

<xsl:template match="parameter">

  <xsl:if test="not(@choice='keyboard')"> <!-- do not output keyboard parameters -->

  <xsl:variable name="AttributeString">
    <xsl:for-each select="ancestor::component">
      <xsl:if test="@esgName!='KeyProperties'">
        <xsl:value-of select="@esgName"/>
      </xsl:if>
    </xsl:for-each>
    <xsl:value-of select="ancestor::parametergroup[1]/@esgName"/>
    <xsl:value-of select="@esgName"/>
  </xsl:variable>

  <xsl:value-of select="$AttributeString"/>
  <xsl:text>
</xsl:text>
<!--
  <xsl:variable name="AttributeStringSpaces">
    <xsl:for-each select="ancestor::component">
      <xsl:if test="@esgName!='' and @esgName!='KeyProperties'">
        <xsl:call-template name="splitName">
          <xsl:with-param name="name" select="@esgName"/>
-->
          <!--  we don't want a space before the first capital letter -->
<!--
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
-->
  </xsl:if>

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

<!-- the purpose of this template is to make sure we create a name that is limited to characters that are valid in an xml element definition. The translation is defined in metafor ticket 519 -->
<xsl:template name="rdfAttrValIDgen">
  <xsl:param name="name"/>
  <!-- translate any characters that we dont like the look of to '_' -->
  <xsl:if test="string-length($name)>0">
    <xsl:variable name="myChar" select="substring($name,1,1)"/>
    <xsl:choose>
      <xsl:when test="contains('.-_0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',$myChar)">
        <xsl:value-of select="substring($name,1,1)"/>
      </xsl:when>
      <xsl:when test="$myChar=' '">
        <xsl:text>_</xsl:text>
      </xsl:when>
      <xsl:when test="$myChar=')'">
        <xsl:text>_RPAREN_</xsl:text>
      </xsl:when>
      <xsl:when test="$myChar='('">
        <xsl:text>_LPAREN_</xsl:text>
      </xsl:when>
      <xsl:when test="$myChar=&quot;'&quot;">
        <xsl:text>_APOS_</xsl:text>
      </xsl:when>
      <xsl:when test="$myChar='>'">
        <xsl:text>_GT_</xsl:text>
      </xsl:when>
      <xsl:when test="$myChar='/'">
        <xsl:text>_SLASH_</xsl:text>
      </xsl:when>
      <xsl:when test="$myChar='+'">
        <xsl:text>_PLUS_</xsl:text>
      </xsl:when>
      <xsl:when test="$myChar=','">
        <xsl:text>_COMMA_</xsl:text>
      </xsl:when>
      <xsl:when test="$myChar='*'">
        <xsl:text>_STAR_</xsl:text>
      </xsl:when>
      <xsl:when test="$myChar='&amp;'">
        <xsl:text>_AND_</xsl:text>
      </xsl:when>
      <xsl:otherwise> <!-- unknown char : abort -->
        <xsl:message terminate="yes">
          <xsl:text>Error: char </xsl:text><xsl:value-of select="$myChar"/><xsl:text> has no valid mapping.
</xsl:text>
        </xsl:message>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:call-template name="rdfAttrValIDgen">
       <xsl:with-param name="name" select="substring($name,2)"/>
    </xsl:call-template>
  </xsl:if>
<!--
  <xsl:variable name="myCheck" select="translate($name,&quot;&gt;,&apos;&amp;/() +-_.0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ&quot;,'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx')"/>
  <xsl:value-of select="translate($name,&quot;,&apos;&amp;/() &quot;,'__+_____')"/>
-->
</xsl:template>

<xsl:template name="makex">
  <xsl:param name="NumberOfXs"/>
  <xsl:if test="$NumberOfXs>0">
    <xsl:text>x</xsl:text>
    <xsl:call-template name="makex">
      <xsl:with-param name="NumberOfXs" select="$NumberOfXs - 1"/>
    </xsl:call-template>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
