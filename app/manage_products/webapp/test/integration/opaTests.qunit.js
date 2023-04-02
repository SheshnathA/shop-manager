sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/shesh/shop/manage/manageproducts/test/integration/FirstJourney',
		'com/shesh/shop/manage/manageproducts/test/integration/pages/ProductsList',
		'com/shesh/shop/manage/manageproducts/test/integration/pages/ProductsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductsList, ProductsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/shesh/shop/manage/manageproducts') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductsList: ProductsList,
					onTheProductsObjectPage: ProductsObjectPage
                }
            },
            opaJourney.run
        );
    }
);