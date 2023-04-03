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
            Label : 'Shop Name',
            Value : retailerVh.name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Address',
            Value : retailerVh.location,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Mobile No.',
            Value : retailerVh.mobileNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Total',
            Value : totalAmount,
        },
        
    ]

);

//Status dropdown
annotate service.Orders with{
       statusVh         @Common.ValueListWithFixedValues;
       statusVh_status@(Common : {
        Text            : statusVh.status,
        TextArrangement : #TextFirst,
        ValueListWithFixedValues: true,
        ValueList       : {
            Label          : 'Status Dropdown',
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

annotate service.Orders with{
    
       retailerVh@(Common : {
        ValueListWithFixedValues: false,
        ValueList       : {
            Label          : 'Status Dropdown',
            CollectionPath : 'Retailers', 
            Parameters     : [
                {
                    $Type               : 'Common.ValueListParameterInOut',
                    ValueListProperty   : 'mobileNumber',
                    LocalDataProperty   : retailerVh_mobileNumber
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'name',
                     
                },
                {
                    $Type               : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty   : 'location',
                  
                }
                
                
            ]
        }
    })
      
};

//Value help dialog
// annotate service.Orders with{
//        retailerVh_shopID @(Common : {
//         ValueListWithFixedValues: true,
//         ValueList       : {
//             Label          : 'Retailers List',
//             CollectionPath : 'Retailers',
//             Parameters     : [
//                 {
//                     $Type               : 'Common.ValueListParameterInOut',
//                     ValueListProperty   : 'name', // this will be selected properties
//                     LocalDataProperty : retailerVh_shopID,
//                 },
//                 {
//                     $Type               : 'Common.ValueListParameterInOut',
//                     ValueListProperty   : 'mobileNumber', // this will be selected properties
//                     LocalDataProperty : retailerVh_mobileNumber,
//                 },
//                 { $Type: 'Common.ValueListParameterDisplayOnly',
//                         ValueListProperty: 'location'
//                 }
                
//             ]
//         }
//     })
      
// };
annotate service.Orders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : orderNumber,
             ![@Common.FieldControl] : #ReadOnly,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Shop Name R',
            Value : retailerVh.name,
            ![@Common.FieldControl] : #ReadOnly,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Shop Name H',
            Value : retailerVh.createdAt,
            ![@Common.FieldControl] : #Hidden,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Shop Name IN',
            Value : retailerVh.createdBy,
            ![@Common.FieldControl] : #Inapplicable,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Shop Name M',
            Value : retailerVh.pincode,
            ![@Common.FieldControl] : #Mandatory,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Shop Name O',
            Value : retailerVh.email,
            ![@Common.FieldControl] : #Optional,
        },
         {
            $Type : 'UI.DataField',
            Label : 'Location',
            Value : retailerVh.location,
            ![@Common.FieldControl] : #ReadOnly,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Shop ID.',
            Value : retailerVh_mobileNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Total',
            Value : totalAmount,
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

