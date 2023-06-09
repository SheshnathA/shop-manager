using WholesalersService as service from '../../srv/cat-service';


annotate service.Orders with @(
        UI.SelectionFields : [
        statusVh_status,
        retailerVh_mobileNumber
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : orderNumber,
        },
        {
            $Type : 'UI.DataField',
            Criticality : #Negative,
            Label : 'Shop Name',
            Value : retailerVh_shopID,
             ![@UI.Importance] : #High
        },
        {
            $Type : 'UI.DataField',
            Label : 'Mobile No.',
            Value : retailerVh_mobileNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Total',
            Value : totalAmount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Address',
            Value : shopAddress,
        }
    ]

);

//Status dropdown
annotate service.Orders with{
       statusVh @(Common : {
        ValueListWithFixedValues: true,
        ValueList       : {
            Label          : '{i18n>criticality}',
            CollectionPath : 'StatusVh',
            Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'name',
                    LocalDataProperty   : statusVh_status
                }
                
                
            ]
        }
    })
      
};

//Value help dialog
annotate service.Orders with{
       retailerVh @(Common : {
        ValueListWithFixedValues: false,
        ValueList       : {
            Label          : '{i18n>criticality}',
            CollectionPath : 'Retailers',
            Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'name', // this will be selected properties
                    LocalDataProperty : retailerVh_shopID,
                },
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'mobileNumber', // this will be selected properties
                    LocalDataProperty : retailerVh_mobileNumber,
                },
                { $Type: 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'location'
                }
                
            ]
        }
    })
      
};
annotate service.Orders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : orderNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Shop Name',
            Value : retailerVh_shopID,
           
        },
        {
            $Type : 'UI.DataField',
            Label : 'Mobile No.',
            Value : retailerVh_mobileNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Total',
            Value : totalAmount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Address',
            Value : shopAddress,
        }
        ],
        
    },
    
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'OrderInfo',
            Label : 'Order Info',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ProductInfo',
            Label : 'Product Info',
            Target : 'items/@UI.LineItem#OrdersItems',
        },
    ]
);

annotate service.OrdersItems with @(

    UI.LineItem #OrdersItems: [
        {
            $Type : 'UI.DataField',
            Label : 'Product Name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'MRP',
            Value : mrp,
        },
        {
            $Type : 'UI.DataField',
            Label : 'QTY',
            Value : qty,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Unit',
            Value : unit,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Sub Total',
            Value : subTotal,
        }
    ]

);

