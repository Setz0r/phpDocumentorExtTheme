<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output indent="yes" method="html" />

    <xsl:template name="chrome-head">
        <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
        <!--<link rel="stylesheet" href="{$root}css/template.css" type="text/css" />-->
        <link rel="stylesheet" type="text/css" href="{$root}resources/css/ext-all.css" />
        <link rel="stylesheet" type="text/css" href="{$root}resources/css/xtheme-gray.css" />
        <link rel="stylesheet" type="text/css" href="{$root}resources/docs.css" />
        <link rel="stylesheet" type="text/css" href="{$root}resources/style.css" />    
        <link rel="shortcut icon" href="{$root}resources/favicon.ico" />
        <link rel="icon" href="{$root}resources/favicon.ico" />
        <style type="text/css"></style>
        <script type="text/javascript" src="{$root}resources/ext-base.js"></script>
        <script type="text/javascript" src="{$root}resources/ext-all.js"></script>
        <script type="text/javascript" src="{$root}resources/TabCloseMenu.js"></script>
        <script type="text/javascript" src="{$root}resources/docs.js"></script>
        <script type="text/javascript" src="{$root}treedata.js"></script>
        <script type="text/javascript" src="{$root}icondata.js"></script>
    </xsl:template>

</xsl:stylesheet>
