sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bpstatusfiori/test/integration/FirstJourney',
		'bpstatusfiori/test/integration/pages/BPStatusesList',
		'bpstatusfiori/test/integration/pages/BPStatusesObjectPage'
    ],
    function(JourneyRunner, opaJourney, BPStatusesList, BPStatusesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bpstatusfiori') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBPStatusesList: BPStatusesList,
					onTheBPStatusesObjectPage: BPStatusesObjectPage
                }
            },
            opaJourney.run
        );
    }
);