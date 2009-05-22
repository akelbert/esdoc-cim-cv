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

     <xsl:variable name="RHSChildren" select="map/node/node[not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true']) and @POSITION='right']"/>

     <!-- test for correct type of nodes at the "top" level of the mindmap -->
     <xsl:for-each select="$RHSChildren">
       <xsl:if test="not(font[@BOLD='true'])">
         <xsl:message terminate="no">
         <xsl:text>*ERROR: Expecting the top level right hand node to be a component, or to be marked as incomplete. Instead I found node '</xsl:text>
         <xsl:value-of select="@TEXT"/>
         <xsl:text>'
</xsl:text>
         </xsl:message>
       </xsl:if>
     </xsl:for-each>

     <!-- test for 1 top level software component for each mindmap -->
     <xsl:if test="count($RHSChildren[font[@BOLD='true']]) != 1">
       <xsl:message terminate="no">
         <xsl:text>*ERROR: Expecting there to be one component at the top level on the right hand side but found </xsl:text>
         <xsl:value-of select="count($RHSChildren[font[@BOLD='true']])"/> 
         <xsl:text>
</xsl:text>
       </xsl:message>
     </xsl:if>

     <xsl:apply-templates/>

  </xsl:template>

  <!-- match all nodes to the left (these are for information only) -->
  <xsl:template match="node[@POSITION='left']" priority="7">
    <!-- skip -->
  </xsl:template>

  <!-- match the central mm node so we don't need to worry about it when constructing our other rules -->
  <xsl:template match="node[parent::map]" priority="6">
    <xsl:apply-templates/>
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

  <!-- match all Software Component nodes (bold font) -->
  <xsl:template match="node[font[@BOLD='true']]" priority="4">

    <xsl:variable name="NodeName" select="@TEXT"/>

    <xsl:choose>

    <xsl:when test="@LINK">
      <!-- a componentref should have no children -->
      <xsl:variable name="Children" select="node[not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true'])]"/>
      <xsl:if test="$Children">
        <xsl:message terminate="no">
        <xsl:text>*ERROR: A Software Component Reference node should not have children. The offending node is '</xsl:text>
        <xsl:value-of select="@TEXT"/>
        <xsl:text>'
</xsl:text>
        </xsl:message>
      </xsl:if>

      <!-- A Componentref must reference something valid -->
      <xsl:choose>
        <xsl:when test="concat('#',substring-after(@LINK,'#'))=@LINK"> <!-- convoluted way to check there is a # at the beginning of the string -->

          <xsl:variable name="LinkName" select="substring-after(@LINK,'#')"/>

          <xsl:choose>

            <!-- Check reference points to a node -->
            <xsl:when test="not(//node[@ID=$LinkName])">

              <xsl:message terminate="no">
              <xsl:text>*ERROR: the internal reference in component node '</xsl:text>
              <xsl:value-of select="$NodeName"/>
              <xsl:text>' does not reference a node</xsl:text>
              </xsl:message>

            </xsl:when>

            <xsl:otherwise>

              <!-- Check reference points to a component -->
              <xsl:if test="not(//node[@ID=$LinkName and font[@BOLD='true']])">

                <xsl:message terminate="no">
                <xsl:text>*ERROR: the internal reference in component node '</xsl:text>
                <xsl:value-of select="$NodeName"/>
                <xsl:text>' does not reference a component. It references '</xsl:text>
                <xsl:value-of select="//node[@ID=$LinkName]/@TEXT"/>
                <xsl:text>'
</xsl:text>
                </xsl:message>

              </xsl:if>

              <!-- Check reference does not point to a parent of the reference (or we will recurse forever) -->
              <xsl:if test="ancestor::node[@ID=$LinkName]">

                <xsl:message terminate="no">
                <xsl:text>*ERROR: the internal reference in component node '</xsl:text>
                <xsl:value-of select="$NodeName"/>
                <xsl:text>' references a parent '</xsl:text>
                <xsl:value-of select="//node[@ID=$LinkName]/@TEXT"/>
                <xsl:text>'. Any inlining will cause infinite recursion.
</xsl:text>
                </xsl:message>
              </xsl:if>

            </xsl:otherwise>

          </xsl:choose>
          
        </xsl:when>

        <xsl:when test="concat(substring-before(@LINK,'.mm'),'.mm')=@LINK"> <!-- convoluted way to check there is .mm at the end of the string -->

          <!-- check to see if the reference conforms to the _flat.mm naming convention -->
          <xsl:if test="not(concat(substring-before(@LINK,'_flat.mm'),'_flat.mm')=@LINK)">
            <xsl:message terminate="no">
            <xsl:text>*WARNING: the external mindmap '</xsl:text>
            <xsl:value-of select="@LINK"/>
            <xsl:text>' referenced by node '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>' does not conform to the _flat.mm naming convention.
</xsl:text>
            </xsl:message>
          </xsl:if>

          <xsl:choose>
          <!-- first check to see if the mm document exists -->
          <xsl:when test="not(document(@LINK))">
            <xsl:message terminate="no">
            <xsl:text>*ERROR: the external mindmap '</xsl:text>
            <xsl:value-of select="@LINK"/>
            <xsl:text>' referenced by node '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>' does not exist.
</xsl:text>
            </xsl:message>
          </xsl:when>
          <!-- now check to see if the required node in the document exists -->
          <xsl:when test="not(document(@LINK)//node[font[@BOLD='true'] and @TEXT=$NodeName])">
            <!-- Warning: not an exhaustive check so errors could creep in here -->
            <xsl:message terminate="no">
            <xsl:text>*ERROR: the external mindmap '</xsl:text>
            <xsl:value-of select="@LINK"/>
            <xsl:text>' does not contain the node '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>'.
</xsl:text>
            </xsl:message>
          </xsl:when>
          <xsl:otherwise/> <!-- all seems OK -->
          </xsl:choose>
          
        </xsl:when>
        <!-- I don't recognise this as an internal reference or a mindmap reference -->
        <xsl:otherwise>
          <xsl:message terminate="no">
          <xsl:text>*ERROR: the reference name '</xsl:text>
          <xsl:value-of select="@LINK"/>
          <xsl:text>' for node '</xsl:text>
          <xsl:value-of select="$NodeName"/>
          <xsl:text>' does not appear to be an internal reference or a mindmap reference.
</xsl:text>
          </xsl:message>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>

    <!-- Software Component is not a link -->
    <xsl:otherwise>

      <xsl:variable name="Children" select="node[not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true'])]"/>

      <!-- A component node must only contain components (bold) and/or parameters (#996600) -->
      <xsl:for-each select="$Children">
<!--
        <xsl:if test="not(font[@BOLD='true'] or @COLOR='#0033ff' or @COLOR='#996600' or @COLOR='#990099')">
-->
        <xsl:if test="not(font[@BOLD='true'] or @COLOR='#996600')">
          <xsl:message terminate="no">
            <xsl:text>*ERROR: Component '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>' has child node '</xsl:text>
            <xsl:value-of select="@TEXT"/>
            <xsl:text>' which is not a component or a parameter
</xsl:text>
          </xsl:message>
        </xsl:if>
      </xsl:for-each>

    </xsl:otherwise>

    </xsl:choose>

    <!-- The parent of a component node must be a component unless it is the root component -->
    <xsl:if test="not(parent::node[font[@BOLD='true']] or ../../../map)">
          <xsl:message terminate="no">
            <xsl:text>*ERROR: Component '</xsl:text>
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
      <xsl:text>*WARNING: It is recommended that you do not use the term 'scheme' when specifying a component. Found component called '</xsl:text>
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
     <xsl:variable name="ComponentName" select="parent::node/@TEXT"/>

     <xsl:variable name="Children" select="node[not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true'])]"/>
    <!-- A parameter node must only contain values -->
     <xsl:for-each select="$Children">
       <xsl:if test="not(@STYLE='fork')">
          <xsl:message terminate="no">
            <xsl:text>*ERROR: Parameter '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>' has child node '</xsl:text>
            <xsl:value-of select="@TEXT"/>
            <xsl:text>' which is not a value node.
</xsl:text>
          </xsl:message>
        </xsl:if>
      </xsl:for-each>

    <!-- The parent of a parameter node must be a component -->
    <xsl:if test="not(parent::node[font[@BOLD='true']])">
          <xsl:message terminate="no">
            <xsl:text>*ERROR: Parameter '</xsl:text>
            <xsl:value-of select="@TEXT"/>
            <xsl:text>' has a parent node '</xsl:text>
            <xsl:value-of select="parent::node/@TEXT"/>
            <xsl:text>' that is not a component.
</xsl:text>
          </xsl:message>
    </xsl:if>

    <!-- Perform some checks on the values associated with this parameter -->
    <xsl:variable name="ValueChildren" select="node[not(icon[@BUILTIN='messagebox_warning'] or font[@ITALIC='true']) and @STYLE='fork']"/>

    <xsl:choose>
    <!-- we musy have at least one value for a parameter -->
    <xsl:when test="count($ValueChildren)=0">

      <xsl:message terminate="no">
        <xsl:text>*ERROR: Parameter '</xsl:text>
        <xsl:value-of select="@TEXT"/>
        <xsl:text>' must have at least one associated value.
</xsl:text>
      </xsl:message>

    </xsl:when>
    <xsl:when test="count($ValueChildren)=1">

      <!-- we have only 1 value for this parameter so it should not have a choice option -->
      <xsl:if test="$ValueChildren[icon[@BUILTIN='button_ok' or @BUILTIN='button_cancel' or @BUILTIN='bookmark']]">
        <xsl:message terminate="no">
        <xsl:text>*ERROR: Parameter '</xsl:text>
        <xsl:value-of select="@TEXT"/>
        <xsl:text>' has one valid value '</xsl:text>
        <xsl:value-of select="$ValueChildren/@TEXT"/>
        <xsl:text>' so this value should not be marked as OR, XOR or AND
</xsl:text>
        </xsl:message>
      </xsl:if>

    </xsl:when>
    <xsl:otherwise><!-- this parameter has multiple values -->

      <xsl:choose>
      <!-- all must have OR, XOR or AND -->
      <xsl:when test="$ValueChildren[not(icon[@BUILTIN='button_ok' or @BUILTIN='button_cancel' or @BUILTIN='bookmark'])]">
        <xsl:message terminate="no">
        <xsl:text>*ERROR: Parameter '</xsl:text>
        <xsl:value-of select="@TEXT"/>
        <xsl:text>' has more than one valid value but at least one of these is not marked as being OR, XOR or AND
</xsl:text>
        </xsl:message>
      </xsl:when>
      <!-- all icons must be the same -->
      <xsl:otherwise>

        <xsl:variable name="FirstIcon">
          <xsl:choose>
          <xsl:when test="$ValueChildren[1][icon[@BUILTIN='button_ok']]">
            <xsl:value-of select="'button_ok'"/>
          </xsl:when>
          <xsl:when test="$ValueChildren[1][icon[@BUILTIN='button_cancel']]">
            <xsl:value-of select="'button_cancel'"/>
          </xsl:when>
          <xsl:when test="$ValueChildren[1][icon[@BUILTIN='bookmark']]">
            <xsl:value-of select="'bookmark'"/>
          </xsl:when>
          <xsl:otherwise>
             <xsl:message terminate="yes">
               <xsl:text>FATAL INTERNAL ERROR in MMCheck.xsl
</xsl:text>
             </xsl:message>
          </xsl:otherwise>
          </xsl:choose>
        </xsl:variable>

        <xsl:for-each select="$ValueChildren">
          <xsl:if test="not(icon[@BUILTIN=$FirstIcon])">
            <xsl:message terminate="no">
            <xsl:text>*ERROR: Parameter '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>' in component '</xsl:text>
            <xsl:value-of select="$ComponentName"/>
            <xsl:text>' has values with different choice (AND,OR,XOR) icons
</xsl:text>
            </xsl:message>
          </xsl:if>
        </xsl:for-each>

      </xsl:otherwise>
      </xsl:choose>

      <!-- if pencil then all pencil -->
      <xsl:if test="$ValueChildren[icon[@BUILTIN='pencil']]">

        <xsl:for-each select="$ValueChildren">
          <xsl:if test="not(icon[@BUILTIN='pencil'])">
            <xsl:message terminate="no">
            <xsl:text>*ERROR: Parameter '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>' in component '</xsl:text>
            <xsl:value-of select="$ComponentName"/>
            <xsl:text>' has some values with the pencil icon but others without
</xsl:text>
            </xsl:message>
          </xsl:if>
        </xsl:for-each>

      </xsl:if>

      <!-- if "full-1" then all "full-1" -->
      <xsl:if test="$ValueChildren[icon[@BUILTIN='full-1']]">

        <xsl:for-each select="$ValueChildren">
          <xsl:if test="not(icon[@BUILTIN='full-1'])">
            <xsl:message terminate="no">
            <xsl:text>*ERROR: Parameter '</xsl:text>
            <xsl:value-of select="$NodeName"/>
            <xsl:text>' in component '</xsl:text>
            <xsl:value-of select="$ComponentName"/>
            <xsl:text>' has some values with the full-1 icon but others without
</xsl:text>
            </xsl:message>
          </xsl:if>
        </xsl:for-each>

      </xsl:if>

      <!-- if pencil or purple 1 then check for []() format -->
      <xsl:if test="$ValueChildren[icon[@BUILTIN='full-1' or @BUILTIN='pencil']]">

        <xsl:for-each select="$ValueChildren">
          <xsl:if test="icon[@BUILTIN='full-1' or @BUILTIN='pencil']">

            <xsl:variable name="LHS" select="substring-before(@TEXT,'[')"/>
            <xsl:variable name="SquareBrackets" select="substring-before(substring-after(@TEXT,'['),']')"/>
            <xsl:variable name="Middle" select="substring-before(substring-after(@TEXT,']'),'(')"/>
            <xsl:variable name="RoundBrackets" select="substring-before(substring-after(@TEXT,'('),')')"/>
            <xsl:variable name="RHS" select="substring-after(@TEXT,')')"/>

            <xsl:if test="not($LHS='' and $Middle='' and $RHS='' and not($SquareBrackets='' and $RoundBrackets=''))">
              <xsl:message terminate="no">
              <xsl:text>*ERROR: value '</xsl:text>
              <xsl:value-of select="$NodeName"/>
              <xsl:text>' in component '</xsl:text>
              <xsl:value-of select="$ComponentName"/>
              <xsl:text>' with pencil or full-1 does not conform to format [](). Found '</xsl:text>
              <xsl:value-of select="@TEXT"/>
              <xsl:text>'
</xsl:text>
              </xsl:message>

            </xsl:if>

          </xsl:if>
        </xsl:for-each>

      </xsl:if>

    </xsl:otherwise>
    </xsl:choose>

     <xsl:apply-templates/>

 </xsl:template>

  <!-- match all parameter nodes which contain other parameters (colour purple) -->
  <xsl:template match="node[@COLOR='#990099']" priority="3">

    <xsl:message terminate="no">
      <xsl:text>*ERROR: Complex Parameters (purple nodes) are not supported by the questionnaire. The offending node is '</xsl:text>
      <xsl:value-of select="@TEXT"/>
      <xsl:text>'.
</xsl:text>
    </xsl:message>

  </xsl:template>

  <!-- match all common parameters (colour blue) -->
  <xsl:template match="node[@COLOR='#0033ff']" priority="3">

    <xsl:message terminate="no">
      <xsl:text>*ERROR: Common Parameters (blue nodes) are not supported by the questionnaire. The offending node is '</xsl:text>
      <xsl:value-of select="@TEXT"/>
      <xsl:text>'.
</xsl:text>
    </xsl:message>

  </xsl:template>

  <!-- match all value nodes -->
  <xsl:template match="node[@STYLE='fork']">

    <!-- make sure parents are parameters -->
    <xsl:if test="not(parent::node[@COLOR='#996600'])">
      <xsl:message terminate="no">
        <xsl:text>*ERROR: Value '</xsl:text>
        <xsl:value-of select="@TEXT"/>
        <xsl:text>' has a parent node '</xsl:text>
        <xsl:value-of select="parent::node/@TEXT"/>
        <xsl:text>' that is not a parameter.
</xsl:text>
      </xsl:message>
    </xsl:if>

    <!-- make sure I have no children -->
    <xsl:if test="node">
      <xsl:message terminate="no">
        <xsl:text>*ERROR: Value '</xsl:text>
        <xsl:value-of select="@TEXT"/>
        <xsl:text>' in node '</xsl:text>
        <xsl:value-of select="parent::node/@TEXT"/>
        <xsl:text>' has a child node.
</xsl:text>
      </xsl:message>
    </xsl:if>

    <!-- one icon for each -->
    <xsl:if test="count(icon[@BUILTIN='button_cancel' or @BUILTIN='button_ok' or @BUILTIN='bookmark'])>1">
      <xsl:message terminate="no">
        <xsl:text>*ERROR: Value '</xsl:text>
        <xsl:value-of select="@TEXT"/>
        <xsl:text>' in node '</xsl:text>
        <xsl:value-of select="parent::node/@TEXT"/>
        <xsl:text>' has more than one XOR, OR or AND icon.
</xsl:text>
      </xsl:message>
    </xsl:if>

  </xsl:template>

<!-- end of pattern matching -->

</xsl:stylesheet>
