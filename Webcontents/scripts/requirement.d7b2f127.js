$(function(){var a=new WorkflowClient,b=a.getTask();b.then(function(a){var b=a["tms:getTaskResponse"]["tms:task"]["tms:input"].RequirementDefinitionInput;$("#department_name").text(b.DepartmentInfo.DeparmentName.$),$("#fiscal_year").text(b.Variables.FiscalYear.$),$("#expected_increase").text(b.Variables.ExpectedIncrease.$),$("#new_investements").text(b.Variables.NewInvestments.$),$("#target_approval_date").text(b.Variables.TargetApproval.$),$("#target_expenses").text(b.Variables.TargetExpenses.$),$("#target_submission").text(b.Variables.TargetSubmission.$),$.each(b.Team.Member,function(a,b){$("#projectResponsible").append($("<option>",{value:b.username.$}).text(b.DisplayName.$))})},function(a){console.log(a)});var c=_.template($("#project-template").html());$("#addProject").click(function(){var a={projectName:$("#projectName").val(),projectResponsibleDisplay:$("#projectResponsible option:selected").text(),projectResponsibleValue:$("#projectResponsible option:selected").val(),targetBudget:$("#targetBudget").val(),projectNotes:$("#projectNotes").val()};$("#projectName").val(""),$("#targetBudget").val(""),$("#projectNotes").val("");var b=$(c({data:a}));b.data(a),$("#projects").append(b)}),$("#submit").click(function(){var b={"tns:RequirementDefinisionOutput":{"@xmlns":{tns:"http://budgeting.example.everteam.com/Types/Business"},"tns:Projects":_.map($(".projectItem"),function(a){var b=$(a).data();return{"tns:ProjectName":{$:b.projectName},"tns:ProjectResponsible":{$:b.projectResponsibleValue},"tns:TargetBudget":{$:b.targetBudget},"tns:Notes":{$:b.projectNotes}}})}};a.completeTask(b)})});