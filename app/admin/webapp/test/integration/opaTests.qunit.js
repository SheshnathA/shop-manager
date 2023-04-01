sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/shesh/shop/manager/admin/test/integration/FirstJourney',
		'com/shesh/shop/manager/admin/test/integration/pages/WholesalersList',
		'com/shesh/shop/manager/admin/test/integration/pages/WholesalersObjectPage'
    ],
    function(JourneyRunner, opaJourney, WholesalersList, WholesalersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/shesh/shop/manager/admin') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheWholesalersList: WholesalersList,
					onTheWholesalersObjectPage: WholesalersObjectPage
                }
            },
            opaJourney.run
        );
    }
);