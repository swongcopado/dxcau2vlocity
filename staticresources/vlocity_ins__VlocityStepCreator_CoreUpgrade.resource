{
    "type": "VlocityStepCreator",
    "fileName": "VlocityStepCreator_CoreUpgrade",
    "plan": {
        "Name": "Core Upgrade",
        "UniqueId": "Core Upgrade"
    },
    "steps": [
        {
            "ExternalId": "CoreAddPickListValues",
            "UniqueId": "CoreAddPickListValues",
            "Name": "Add Core Picklist Values",
            "Priority": "None",
            "Tags": "",
            "VersionIntroduced": "",
            "IsActive": true,
            "Type": "Group",
            "StepFrequency": "Always",
            "Instruction": "<p><span style=\"font-family: sans-serif;\">These upgrade steps are adding new picklist values to existing objects/fields</span></p>",
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "CoreAddPickListValueForOSElementType",
            "UniqueId": "CoreAddPickListValueForOSElementType",
            "Name": "Add Picklist Value to the Type Field in the Vlocity OmniScript Element Object",
            "Priority": "None",
            "Tags": "",
            "VersionIntroduced": "",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Always",
            "Instruction": "",
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "ToolingAPI": {
                    "ObjectName": "Element__c",
                    "FieldName": "Type__c",
                    "fieldValues": [
                        "Conditional Block",
                        "Loop Block",
                        "Cache Block",
                        "Try Catch Block",
                        "Batch Action",
                        "Navigate Action",
                        "Custom Lightning Web Component",
                        "DataRaptor Turbo Action",
                        "Chatter Action",
                        "Action Block",
                        "Assert Action"
                    ]
                },
                "jsAction": {
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "CoreAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        }
    ]
}