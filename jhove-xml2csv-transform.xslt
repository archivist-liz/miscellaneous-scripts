<?xml version="1.0" encoding="utf-8"?>

<!--
Basic XSLT to transform JHOVE XML output to a CSV file
Usage:
xsltproc jhove-xml2csv-transform.xslt jhove_output.xml > processed_jhove_output.csv

James Mooney, 2017
Version 1.01

Elizabeth Kata, 2018
Version 1.02
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:jhove="http://hul.harvard.edu/ois/xml/ns/jhove" xmlns:mix="http://www.loc.gov/mix/v20">
<xsl:output method="text" />
    <xsl:template match="jhove:jhove">

        <xsl:text>path,size,format,version,status,lastModified,imageWidth,imageHeight,dateTimeCreated,byteOrder,compressionScheme,colorSpace,iccProfileName,scannerManufacturer,scannerModelName,scanningSoftwareName,digitalCameraManufacturer,digitelCameraModelName,fNumber,exifVersion,exposureTime,samplingFrequencyUnit,xSamplingFrequency,ySamplingFrequency,bitsPerSampleValue,samplesPerPixel,md5</xsl:text>

        <xsl:text>&#10;</xsl:text>
        <xsl:for-each select="jhove:repInfo" >
            <xsl:value-of select="@uri"/><xsl:text>,</xsl:text>
            <xsl:value-of select="jhove:size"/><xsl:text>,</xsl:text>
            <xsl:value-of select="jhove:format"/><xsl:text>,</xsl:text>
            <xsl:value-of select="jhove:version"/><xsl:text>,</xsl:text>
            <xsl:value-of select="jhove:status"/><xsl:text>,</xsl:text>
            <xsl:value-of select="jhove:lastModified"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:imageWidth"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:imageHeight"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:dateTimeCreated"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:byteOrder"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:compressionScheme"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:colorSpace"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:iccProfileName"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:scannerManufacturer"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:scannerModelName"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:scanningSoftwareName"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:digitalCameraManufacturer"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:digitalCameraModelName"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:fNumber"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:exifVersion"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:exposureTime"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:samplingFrequencyUnit"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:xSamplingFrequency/mix:numerator"/><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:ySamplingFrequency/mix:numerator"/><xsl:text>,</xsl:text>
            <xsl:for-each select="descendant::mix:bitsPerSampleValue">
                <xsl:value-of select="."/>
                    <xsl:if test="not(position() = last())">
                        <xsl:value-of select="string(' ')"/>
                    </xsl:if>
                </xsl:for-each><xsl:text>,</xsl:text>
            <xsl:value-of select="descendant::mix:samplesPerPixel"/><xsl:text>,</xsl:text>
            <xsl:value-of select="jhove:checksums/jhove:checksum[@type = 'MD5']"/><xsl:text>,</xsl:text>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
