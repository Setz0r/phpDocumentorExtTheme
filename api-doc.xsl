<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output indent="yes" method="html"/>

    <xsl:include href="api-doc/property.xsl"/>
    <xsl:include href="api-doc/class.xsl"/>
    <xsl:include href="api-doc/constant.xsl"/>
    <xsl:include href="api-doc/function.xsl"/>
    <xsl:include href="api-doc/docblock.xsl"/>
    <xsl:include href="api-doc/file.xsl"/>

    <xsl:template name="title">
        <xsl:choose>
            <xsl:when test="$title != ''">
                <xsl:value-of select="$title"/>
            </xsl:when>
            <xsl:otherwise>IPM API Documentation</xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="/" name="root">
        <xsl:param name="pageId" select="''"/>
        <html>
            <xsl:if test="$pageId!=''">
                <xsl:attribute name="id"><xsl:value-of select="$pageId" /></xsl:attribute>
            </xsl:if>
            <head>
                <title><xsl:call-template name="title" /></title>
                <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
                <link rel="stylesheet" href="{$root}css/template.css" type="text/css" />
                <link type="text/css" rel="stylesheet" href="{$root}syntax_highlighter/styles/shCoreDefault.css"/>
                <script type="text/javascript" src="{$root}js/jquery-1.4.2.min.js"> </script>
                <script type="text/javascript" src="{$root}js/jquery.tools.min.js"> </script>
                <script type="text/javascript" src="{$root}js/jquery-ui-1.8.2.custom.min.js"> </script>
                <script type="text/javascript" src="{$root}js/template.js"> </script>
                
                <script type="text/javascript" src="{$root}syntax_highlighter/scripts/shCore.js"></script>
                <script type="text/javascript" src="{$root}syntax_highlighter/scripts/shBrushJScript.js"></script>
                <script type="text/javascript">SyntaxHighlighter.all();</script>
            </head>
            <body>
                <div id="content">
                    <xsl:apply-templates select="/project/file[@path=$path]"/>
                </div>

                <small class="footer">
                </small>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>