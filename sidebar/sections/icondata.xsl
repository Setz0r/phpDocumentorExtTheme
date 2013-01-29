<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output indent="yes" method="html"/>

    <xsl:template name="sidebar-icondata">
        <xsl:apply-templates select="/project/package">
            <xsl:sort select="@name"/>
            <xsl:with-param name="total_fuckface" select="''"/>
        </xsl:apply-templates>
    </xsl:template>

  <xsl:template match="package">
    <xsl:param name="total_fuckface" />
    <xsl:variable name="full_name" select="concat($total_fuckface, @name)" />

      <xsl:if test="((count(/project/file/class[contains(@package, $full_name)]) > 0)
        or (count(/project/file/interface[contains(@package, $full_name)]) > 0)
        or (count(/project/file/function[contains(@package, $full_name)]) > 0))
      ">
          <!-- process child packages -->
          <xsl:apply-templates select="package">
            <xsl:sort select="@name" />
            <xsl:with-param name="total_fuckface" select="concat($full_name, '\')" />
          </xsl:apply-templates>

          <xsl:for-each select="/project/file/function[@package=$full_name]">
            <xsl:sort select="name" />
                '"<xsl:value-of select="name" />":"icon-method",'+
          </xsl:for-each>

          <xsl:for-each select="/project/file/class[@package=$full_name]|/project/file/interface[@package=$full_name]">
            <xsl:sort select="name" />
                '"<xsl:value-of select="name" />":"icon-cls",'+
          </xsl:for-each>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>