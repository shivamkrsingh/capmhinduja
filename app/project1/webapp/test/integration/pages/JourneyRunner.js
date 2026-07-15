sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"app/name/sales/project1/test/integration/pages/POsList.gen",
	"app/name/sales/project1/test/integration/pages/POsObjectPage.gen",
	"app/name/sales/project1/test/integration/pages/PurchaseOrderItemsObjectPage.gen"
], function (JourneyRunner, POsListGenerated, POsObjectPageGenerated, PurchaseOrderItemsObjectPageGenerated) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('app/name/sales/project1') + '/test/flp.html#app-preview',
        pages: {
			onThePOsListGenerated: POsListGenerated,
			onThePOsObjectPageGenerated: POsObjectPageGenerated,
			onThePurchaseOrderItemsObjectPageGenerated: PurchaseOrderItemsObjectPageGenerated
        },
        async: true
    });

    return runner;
});

