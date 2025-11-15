sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"pricingapp/pricingapp/test/integration/pages/PricingRequestsList",
	"pricingapp/pricingapp/test/integration/pages/PricingRequestsObjectPage"
], function (JourneyRunner, PricingRequestsList, PricingRequestsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('pricingapp/pricingapp') + '/test/flp.html#app-preview',
        pages: {
			onThePricingRequestsList: PricingRequestsList,
			onThePricingRequestsObjectPage: PricingRequestsObjectPage
        },
        async: true
    });

    return runner;
});

