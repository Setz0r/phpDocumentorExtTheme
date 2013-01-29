<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output indent="yes" method="html" />
    <xsl:include href="sidebar/header.xsl" />
    <xsl:include href="sidebar/sections.xsl" />
    <xsl:include href="sidebar/footer.xsl" />

    <xsl:template match="/" name="root">
        Docs.classDataStr = '{"id":"apidocs","iconCls":"icon-docs","text":"API Documentation","singleClickExpand":true,"children":['+<xsl:call-template name="sidebar-treedata"/>']}';
        Docs.classDataStr = Docs.classDataStr.replace(/\}\,\]/g,'}]');
        eval('Docs.classData = '+Docs.classDataStr+';');
    </xsl:template>

</xsl:stylesheet>