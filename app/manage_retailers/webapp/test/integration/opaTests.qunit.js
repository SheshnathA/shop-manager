sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/shesh/shop/manage/manageretailers/test/integration/FirstJourney',
		'com/shesh/shop/manage/manageretailers/test/integration/pages/RetailersList',
		'com/shesh/shop/manage/manageretailers/test/integration/pages/RetailersObjectPage'
    ],
    function(JourneyRunner, opaJourney, RetailersList, RetailersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/shesh/shop/manage/manageretailers') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRetailersList: RetailersList,
					onTheRetailersObjectPage: RetailersObjectPage
                }
            },
            opaJourney.run
        );
    }
);