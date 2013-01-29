<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output indent="yes" method="html"/>
    <xsl:include href="chrome.xsl"/>

    <xsl:template match="/">
        <xsl:call-template name="root">
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template name="content">
        <div id="loading-mask"></div>
        <div id="loading">
            <div class="loading-indicator">
                <img src="resources/extanim32.gif" width="32" height="32" style="margin-right:8px;" align="absmiddle" />
                Loading...
            </div>
        </div>

        <div id="header">
            <img style="margin-left: 5px" src="resources/images/IPM_Banner_Header.png" alt="IPM API Documentation" height="49" />
            <div style="float:right; margin-top: 15px;margin-right: 10px;color: #CCC">
                <a href="javascript:void(0);" style="padding:5px" onclick="window.mainPanel.loadClass('report_markers.html','TODO/FIxMe');">TODO/FixMe</a> | 
                <a href="javascript:void(0);" style="padding:5px" onclick="window.mainPanel.loadClass('report_deprecated.html','Deprecated Elements');">Deprecated Elements</a> | 
                <a href="javascript:void(0);" style="padding:5px" onclick="window.mainPanel.loadClass('report_parse_markers.html','Compile Errors');">Compile Errors</a> | 
                <a href="javascript:void(0);" style="padding:5px" onclick="window.mainPanel.loadClass('http://www.hkipm.com/','HK IPM Global');">www.hkipm.com</a>
            </div>
        </div>

        <div id="classes"></div>

        <div id="main"></div>

        <select id="search-options" style="display:none">
            <option>Starts with</option>
            <option>Ends with</option>
            <option>Any Match</option>
        </select>
    </xsl:template>

</xsl:stylesheet>