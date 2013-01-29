<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output indent="yes" method="html" />
    <xsl:include href="sidebar/header.xsl" />
    <xsl:include href="sidebar/sections2.xsl" />
    <xsl:include href="sidebar/footer.xsl" />

    <xsl:template match="/" name="root">
        Docs.iconsStr = '{'+<xsl:call-template name="sidebar-icondata"/>'}';
        Docs.iconsStr = Docs.iconsStr.replace(/\"\,\}/g,'"}');
        eval('Docs.icons = '+Docs.iconsStr+';');
    </xsl:template>

</xsl:stylesheet>