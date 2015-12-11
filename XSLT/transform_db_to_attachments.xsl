<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:caller="http://budgeting.example.everteam.com/Processes/Integrations/AttachmentManagement/caller" xmlns:processimplicitPartner="http://budgeting.example.everteam.com/Processes/Integrations/AttachmentManagement/processimplicitPartner" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:this="http://budgeting.example.everteam.com/Processes/Integrations/AttachmentManagement/process" xmlns:select_attachmetns="urn:intalio.com:connectors:database:budgeting:select_attachmetnsservice" xmlns:tns="http://budgeting.example.everteam.com/Types/Technical" xmlns:diag="http://budgeting.example.everteam.com/Processes/Integrations/AttachmentManagement" xmlns:ns="urn:intalio.com:connectors:database:budgeting:insert_attachmentservice">
  <xsl:output method="xml" omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="/select_attachmetns:select_attachmetnsResultSet">
  	<xsl:apply-templates />
  </xsl:template>
  <xsl:template match="select_attachmetns:rows">
    <this:Get_attachmentsResponse>
    <xsl:apply-templates />
    </this:Get_attachmentsResponse>
  </xsl:template>
  <xsl:template match="select_attachmetns:row">
  <tns:attachment>
        <tns:mimeType><xsl:value-of select="select_attachmetns:MIMETYPE" /></tns:mimeType>
        <tns:fileName><xsl:value-of select="select_attachmetns:FILENAME" /></tns:fileName>
        <tns:title><xsl:value-of select="select_attachmetns:TITLE" /></tns:title>
        <tns:description><xsl:value-of select="select_attachmetns:DESCRIPTION" /></tns:description>
        <tns:creationDate><xsl:value-of select="select_attachmetns:CREATIONDATE" /></tns:creationDate>
        <tns:payloadUrl><xsl:value-of select="select_attachmetns:PAYLOADURL" /></tns:payloadUrl>
      </tns:attachment>
  
  </xsl:template>
</xsl:stylesheet>
