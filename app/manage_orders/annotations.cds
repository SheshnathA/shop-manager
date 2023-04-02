using WholesalersService as service from '../../srv/cat-service';

annotate service.Orders with @(
    UI.SelectionFields: [ shopName],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : orderNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Shop Name',
            Value : shopName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Mobile No.',
            Value : shopMobNum,
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
            Value : shopName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Mobile No.',
            Value : shopMobNum,
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

