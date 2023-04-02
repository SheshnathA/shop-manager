sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/shesh/shop/manage/manageorders/test/integration/FirstJourney',
		'com/shesh/shop/manage/manageorders/test/integration/pages/OrdersList',
		'com/shesh/shop/manage/manageorders/test/integration/pages/OrdersObjectPage',
		'com/shesh/shop/manage/manageorders/test/integration/pages/OrdersItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, OrdersList, OrdersObjectPage, OrdersItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/shesh/shop/manage/manageorders') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOrdersList: OrdersList,
					onTheOrdersObjectPage: OrdersObjectPage,
					onTheOrdersItemsObjectPage: OrdersItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);