sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.shesh.shop.manage.manageretailers',
            componentId: 'RetailersList',
            entitySet: 'Retailers'
        },
        CustomPageDefinitions
    );
});