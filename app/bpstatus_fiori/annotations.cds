using OptenStatusService as service from '../../srv/services';
annotate service.BPStatuses with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ID}',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OrganizationBPName1}',
                Value : OrganizationBPName1,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>TaxNumber}',
                Value : TaxNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>LockSuggested}',
                Value : LockSuggested,
            },
            {
                $Type : 'UI.DataField',
                Value : OptenStatus.StatusText,
                Label : '{i18n>OptenStatus}',
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
            Label : '{i18n>ID}',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>OrganizationBPName1}',
            Value : OrganizationBPName1,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>TaxNumber}',
            Value : TaxNumber,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'OptenStatusService.MarkForDeletion',
            Label : '{i18n>MarkForDeletion}',
        },
        {
            $Type : 'UI.DataField',
            Value : OptenStatus.StatusText,
            Label : '{i18n>OptenStatus}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>LockSuggested}',
            Value : LockSuggested,
        },
    ],
    UI.SelectionFields : [
        OptenStatus.StatusText,
    ],
);

annotate service.OptenStatuses with {
    StatusText @(
        Common.Label : '{i18n>OptenStatus}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'OptenStatuses',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : StatusText,
                    ValueListProperty : 'StatusText',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

