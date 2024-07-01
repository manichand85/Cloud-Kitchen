sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.manichand.nnrg.productlocal',
            componentId: 'ProductLocalObjectPage',
            contextPath: '/ProductLocal'
        },
        CustomPageDefinitions
    );
});