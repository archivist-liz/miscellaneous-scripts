<?xml version="1.0" encoding="utf-8"?>

<!--
Basic XSLT to transform MediaInfo XML output to a CSV file
Usage:
xsltproc mediainfo-to-csv.xslt mediainfo_output.xml > processed_mediainfo_output.csv

James Mooney, 2017
Version 1.01

Elizabeth Kata, 2019
Version 2.01
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:MediaInfo="https://mediaarea.net/mediainfo">
<xsl:output method="text" />
    <xsl:template match="MediaInfo:MediaInfo">


        <xsl:text>fileName,audioCount,fileExtension,format,fileSize,duration,overallBitRate_Mode,overallBitRate,streamSize,lastModifiedDate,lastModifiedDate_Local,format,formatSettingsEndianness,formatSettingsSign,codecID,duration,bitRateMode,bitRate,channels,samplingRate,samplingCount,bitDepth,streamSize,streamSizeProportion</xsl:text>

        <xsl:text>&#10;</xsl:text>
        <xsl:for-each select="MediaInfo:media" >
            <xsl:value-of select="@ref"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:AudioCount"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:FileExtension"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:Format"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:FileSize"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:Duration"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:OverallBitRate_Mode"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:OverallBitRate"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:StreamSize"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:File_Modified_Date"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:File_Modified_Date_Local"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:Format"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:Format_Settings_Endianness"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:FormatSettings_Sign"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:CodecID"/><xsl:text>,</xsl:text>
	    <xsl:value-of select="MediaInfo:track/MediaInfo:Duration"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:BitRate_Mode"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:BitRate"/><xsl:text>,</xsl:text>
	    <xsl:value-of select="MediaInfo:track/MediaInfo:Channels"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:SamplingRate"/><xsl:text>,</xsl:text>
	    <xsl:value-of select="MediaInfo:track/MediaInfo:SamplingCount"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:BitDepth"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:StreamSize"/><xsl:text>,</xsl:text>
            <xsl:value-of select="MediaInfo:track/MediaInfo:StreamSizeProportion"/><xsl:text>,</xsl:text>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
