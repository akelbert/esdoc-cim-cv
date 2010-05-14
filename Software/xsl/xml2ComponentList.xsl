<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text"/>
<xsl:strip-space elements="*"/>

<xsl:param name="Separator" select="''"/>
<xsl:param name="NSQualifier" select="''"/>

<!-- include template convert2drsname -->
<xsl:include href="utils.xsl"/>

<!-- skip definitions as we pull these out separately -->
<xsl:template match="definition"/>

<xsl:template match="component">

  <xsl:call-template name="convert2drsname">
  <xsl:with-param name="name" select="@name"/>
  </xsl:call-template>
  <xsl:text>
</xsl:text>

  <xsl:apply-templates/>

</xsl:template>

</xsl:stylesheet>

