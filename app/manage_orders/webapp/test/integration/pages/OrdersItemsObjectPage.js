sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.shesh.shop.manage.manageorders',
            componentId: 'OrdersItemsObjectPage',
            entitySet: 'OrdersItems'
        },
        CustomPageDefinitions
    );
});