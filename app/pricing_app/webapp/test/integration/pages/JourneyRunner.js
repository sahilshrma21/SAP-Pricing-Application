sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"pricing_app/test/integration/pages/PricingRequestsList",
	"pricing_app/test/integration/pages/PricingRequestsObjectPage"
], function (JourneyRunner, PricingRequestsList, PricingRequestsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('pricing_app') + '/test/flp.html#app-preview',
        pages: {
			onThePricingRequestsList: PricingRequestsList,
			onThePricingRequestsObjectPage: PricingRequestsObjectPage
        },
        async: true
    });

    return runner;
});