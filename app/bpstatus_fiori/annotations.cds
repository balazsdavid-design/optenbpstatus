using OptenStatusService as service from '../../srv/services';
annotate service.BPStatuses with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrganizationBPName1',
                Value : OrganizationBPName1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TaxNumber',
                Value : TaxNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OptenStatus',
                Value : OptenStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LockSuggested',
                Value : LockSuggested,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'OrganizationBPName1',
            Value : OrganizationBPName1,
        },
        {
            $Type : 'UI.DataField',
            Label : 'TaxNumber',
            Value : TaxNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'OptenStatus',
            Value : OptenStatus,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LockSuggested',
            Value : LockSuggested,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'OptenStatusService.MarkForDeletion',
            Label : 'MarkForDeletion',
        },
    ],
);

