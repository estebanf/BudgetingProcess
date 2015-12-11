<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" 
xmlns:Variables="http://test.com/xvar/example" 
xmlns:this="http://budgeting.example.everteam.com/Processes/Scenarios/DepartmentRequirementCollection/Department" 
xmlns:DirectorRequirementsDefinition="http://www.intalio.com/gi/Forms/DirectorRequirementsDefinition.gi" 
xmlns:attachments="http://www.intalio.com/gi/Forms/DirectorRequirementsDefinition.gi/attachments" 
xmlns:AttachmentManagement-process="http://budgeting.example.everteam.com/Processes/Integrations/AttachmentManagement/process" 
xmlns:DepartmentimplicitPartner="http://budgeting.example.everteam.com/Processes/Scenarios/DepartmentRequirementCollection/DepartmentimplicitPartner" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns:DepartmentsRequirements-Departments="http://thisproject/Processes/Phases/DepartmentsRequirements/Departments" 
xmlns:diag="http://budgeting.example.everteam.com/Processes/Scenarios/DepartmentRequirementCollection" 
xmlns:xs="http://www.w3.org/2001/XMLSchema" 
xmlns:DepartmentsRequirements="http://www.intalio.com/Budgeting/Webcontents/requirements.html" 
xmlns:Business="http://budgeting.example.everteam.com/Types/Business" 
xmlns:tns="http://budgeting.example.everteam.com/Types/Technical" 
xmlns:GetSingleDepartment-Process="http://thisproject/Processes/Integrations/GetSingleDepartment/Process">
  <xsl:output method="xml" omit-xml-declaration="yes"/>
  <xsl:template match="/AttachmentManagement-process:Get_attachmentsResponse">
    <DirectorRequirementsDefinition:globalAttachments>
    	<xsl:apply-templates />
    </DirectorRequirementsDefinition:globalAttachments>
  </xsl:template>
  <xsl:template match="tns:attachment">
      <attachment>
        <attachmentMetadata>
          <mimeType><xsl:value-of select="tns:mimeType" /></mimeType>
          <fileName><xsl:value-of select="tns:fileName" /></fileName>
          <title><xsl:value-of select="tns:title" /></title>
          <description><xsl:value-of select="tns:description" /></description>
          <creationDate><xsl:value-of select="tns:creationDate" /></creationDate>
        </attachmentMetadata>
        <payloadUrl><xsl:value-of select="tns:payloadUrl" /></payloadUrl>
      </attachment>
  </xsl:template>
</xsl:stylesheet>
