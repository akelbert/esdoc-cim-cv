<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" indent="yes" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>

<!-- This stylesheet Checks that Metafor MindMap controlled vocabulary
files conform to the required rules to allow for correct translation
with the MMRead.xsl stylesheet -->

<!-- note: higher priority (higher value) templates are matched before
any lower priority templates -->

  <!-- match the top level of the xml document -->
  <xsl:template match="/">

     <xsl:variable name="RHSChildren" select="map/node/node[not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true'])]"/>

     <xsl:for-each select="$RHSChildren">
       <xsl:choose>
         <xsl:when test="font[@BOLD='true'] or @COLOR='#0033ff'">
         </xsl:when>
         <xsl:otherwise>
           <xsl:message terminate="no">
           <xsl:text>*Error: Expecting the top level right hand nodes to be a component, a CommonProperty node or to be marked as incomplete. Instead I found node '</xsl:text>
           <xsl:value-of select="@TEXT"/>
           <xsl:text>'
</xsl:text>
           </xsl:message>
         </xsl:otherwise>
       </xsl:choose>
     </xsl:for-each>

     <xsl:if test="count($RHSChildren[font[@BOLD='true']]) != 1">
       <xsl:message terminate="no">
         <xsl:text>*Error: Expecting there to be one component at the top level on the right hand side but found </xsl:text>
         <xsl:value-of select="count($RHSChildren[font[@BOLD='true']])"/> 
         <xsl:text>
</xsl:text>
       </xsl:message>
     </xsl:if>

     <xsl:apply-templates/>

  </xsl:template>

  <!-- match all nodes to the left (these are for information only) -->
  <xsl:template match="node[@POSITION='left']" priority="6">
    <!-- skip -->
  </xsl:template>

  <!-- match all nodes which are not complete (messagebox_warning icon) -->
  <xsl:template match="node[icon[@BUILTIN='messagebox_warning']]" priority="5" >
    <!-- skip -->
  </xsl:template>

  <!-- match all nodes in italics as they are comments -->
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

     <!-- TODO: a componentref has no children -->
     <!-- TODO: a componentref must reference something valid -->

     <xsl:variable name="NodeName" select="@TEXT"/>

     <xsl:variable name="Children" select="node[not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true'])]"/>

    <!-- A component node must only contain components, parameters, or shared properties -->
     <xsl:for-each select="$Children">
       <xsl:if test="not(font[@BOLD='true'] or @COLOR='#0033ff' or @COLOR='#996600' or @COLOR='#990099')">
          <xsl:message terminate="no">
            <xsl:text>*Error: Component '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>' has child node '</xsl:text>
            <xsl:value-of select="@TEXT"/>
            <xsl:text>' which is not a component, parameter or shared property
</xsl:text>
          </xsl:message>
        </xsl:if>
      </xsl:for-each>

    <!-- The parent of a component node must be a component unless it is the root component -->
    <xsl:if test="not(parent::node[font[@BOLD='true']] or ../../../map)">
          <xsl:message terminate="no">
            <xsl:text>*Error: Component '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>' has a non-component parent node '</xsl:text>
            <xsl:value-of select="parent::node/@TEXT"/>
            <xsl:text>'
</xsl:text>
          </xsl:message>
    </xsl:if>

    <!-- A component should not have the word scheme at the end of its name -->
    <xsl:variable name="tolower" select="translate(@TEXT,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')"/>
    <xsl:if test="contains($tolower,'scheme')">
      <xsl:message terminate="no">
      <xsl:text>*Warning: It is recommended that you do not use the term 'scheme' when specifying a component. Found component called '</xsl:text>
      <xsl:value-of select="@TEXT"/>
      <xsl:text>'
</xsl:text>
      </xsl:message>
    </xsl:if>

    <xsl:apply-templates/>

  </xsl:template>

  <!-- match all parameter nodes which contain values (colour brown) -->
  <xsl:template match="node[@COLOR='#996600']" priority="3">

     <xsl:variable name="NodeName" select="@TEXT"/>

     <xsl:variable name="Children" select="node[not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true'])]"/>
    <!-- A parameter node must only contain values -->
     <xsl:for-each select="$Children">
       <xsl:if test="not(@STYLE='fork')">
          <xsl:message terminate="no">
            <xsl:text>*Error: Parameter '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>' has child node '</xsl:text>
            <xsl:value-of select="@TEXT"/>
            <xsl:text>' which is not a value node.
</xsl:text>
          </xsl:message>
        </xsl:if>
      </xsl:for-each>

    <!-- The parent of a parameter node must be a component, a complex parameter or a shared property-->
    <xsl:if test="not(parent::node[font[@BOLD='true'] or @COLOR='#990099' or @COLOR='#0033ff'])">
          <xsl:message terminate="no">
            <xsl:text>*Error: Parameter '</xsl:text>
            <xsl:value-of select="@TEXT"/>
            <xsl:text>' has a parent node '</xsl:text>
            <xsl:value-of select="parent::node/@TEXT"/>
            <xsl:text>' that is not a component, a complex parameter or a Shared Property.
</xsl:text>
          </xsl:message>
    </xsl:if>

     <xsl:apply-templates/>

 </xsl:template>

  <!-- match all parameter nodes which contain other parameters (colour purple) -->
  <xsl:template match="node[@COLOR='#990099']" priority="3">

     <xsl:variable name="NodeName" select="@TEXT"/>

     <xsl:variable name="Children" select="node[not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true'])]"/>

    <!-- A complex parameter node must only contain parameters -->
     <xsl:for-each select="$Children">
       <xsl:if test="not(@COLOR='#990099' or @COLOR='#996600')">
          <xsl:message terminate="no">
            <xsl:text>*Error: Complex Parameter '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>' has a child node '</xsl:text>
            <xsl:value-of select="@TEXT"/>
            <xsl:text>' which is not a parameter or complex parameter.
</xsl:text>
          </xsl:message>
        </xsl:if>
      </xsl:for-each>

    <!-- The parent of a complex parameter node must be a component, a complex parameter or a shared property-->
    <xsl:if test="not(parent::node[font[@BOLD='true'] or @COLOR='#990099' or @COLOR='#0033ff'])">
          <xsl:message terminate="no">
            <xsl:text>*Error: Complex Parameter '</xsl:text>
            <xsl:value-of select="@TEXT"/>
            <xsl:text>' has a parent node '</xsl:text>
            <xsl:value-of select="parent::node/@TEXT"/>
            <xsl:text>' that is not a component, a complex parameter or a Shared Property.
</xsl:text>
          </xsl:message>
    </xsl:if>

    <xsl:apply-templates/>

  </xsl:template>

  <!-- match all common parameters (colour blue) -->
  <xsl:template match="node[@COLOR='#0033ff']" priority="3">

  <!-- TODO: common ref can not contain any children -->
  <!-- TODO: common ref must have a valid ref -->
  <!-- TODO: children must be parameters -->
  <!-- TODO: parent must be component or the top level -->

  <xsl:apply-templates/>

  </xsl:template>

  <!-- todo match all nodes -->
  <!-- a node must be atomic -->
  <!-- the parent of a node must be a parameter -->
  <!-- a node must have a pencil,xx,xx,xx icon -->
  <!-- check []() format -->

  <!-- match all nodes which expect a numerical keyboard input (full-1 icon) -->
  <xsl:template match="node[icon[@BUILTIN='full-1']]" priority="2">
    <!-- Remove the square brackets from the name -->
    <xsl:variable name="myName" select="substring-before(substring-after(@TEXT,'['),']')"/>
  </xsl:template>

  <!-- match all nodes which expect a string keyboard input (pencil icon) -->
  <xsl:template match="node[icon[@BUILTIN='pencil']]" priority="2">
    <!-- Remove the square brackets from the name -->
    <xsl:variable name="myName" select="substring-before(substring-after(@TEXT,'['),']')"/>
  </xsl:template>

  <!-- match all nodes which provide vocabulary (button_ok,button_cancel,bookmark) -->
  <xsl:template match="node[icon[@BUILTIN='button_ok' or @BUILTIN='button_cancel' or @BUILTIN='bookmark']]" priority="1">
    <xsl:choose>
    <xsl:when test="hook/text">
    </xsl:when>
    <xsl:otherwise>
    </xsl:otherwise>
    </xsl:choose>
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
        <xsl:text>child</xsl:text>
      </xsl:when>
      <xsl:when test="font[@SIZE='14']">
        <xsl:text>child-of-root</xsl:text>
      </xsl:when>
      <xsl:when test="font[@SIZE='18']">
        <xsl:text>root</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:message terminate="yes">
        <xsl:text>Error, unknown component format found in mindmap</xsl:text>
        <xsl:text>Expecting component (bold 18font),(bold 14font) or (bold,blue,14font).
</xsl:text>
        </xsl:message>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
