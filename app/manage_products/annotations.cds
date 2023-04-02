using WholesalersService as service from '../../srv/cat-service';

annotate service.Products with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'barcode',
            Value : barcode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'mrp',
            Value : mrp,
        },
        {
            $Type : 'UI.DataField',
            Label : 'buyRate',
            Value : buyRate,
        },
    ]
);
annotate service.Products with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'barcode',
                Value : barcode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'mrp',
                Value : mrp,
            },
            {
                $Type : 'UI.DataField',
                Label : 'buyRate',
                Value : buyRate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'gattaRate',
                Value : gattaRate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fileRate',
                Value : fileRate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'pcsRate',
                Value : pcsRate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stocks',
                Value : stocks,
            },
            {
                $Type : 'UI.DataField',
                Label : 'unit',
                Value : unit,
            },
            {
                $Type : 'UI.DataField',
                Label : 'image',
                Value : image,
            },
            {
                $Type : 'UI.DataField',
                Label : 'mfd',
                Value : mfd,
            },
            {
                $Type : 'UI.DataField',
                Label : 'expDate',
                Value : expDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'availability',
                Value : availability,
            },
            {
                $Type : 'UI.DataField',
                Label : 'wholesalers_mobileNumber',
                Value : wholesalers_mobileNumber,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
