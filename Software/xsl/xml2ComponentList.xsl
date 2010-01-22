<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text"/>
<xsl:strip-space elements="*"/>

<xsl:param name="Separator" select="''"/>
<xsl:param name="NSQualifier" select="''"/>

<!-- skip definitions as we pull these out separately -->
<xsl:template match="definition"/>

<xsl:template match="component">

  <xsl:value-of select="@name"/>
  <xsl:text>
</xsl:text>

  <xsl:apply-templates/>

</xsl:template>

</xsl:stylesheet>

