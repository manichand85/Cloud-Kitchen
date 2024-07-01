sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/manichand/nnrg/productlocal/test/integration/FirstJourney',
		'com/manichand/nnrg/productlocal/test/integration/pages/ProductLocalList',
		'com/manichand/nnrg/productlocal/test/integration/pages/ProductLocalObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductLocalList, ProductLocalObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/manichand/nnrg/productlocal') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductLocalList: ProductLocalList,
					onTheProductLocalObjectPage: ProductLocalObjectPage
                }
            },
            opaJourney.run
        );
    }
);