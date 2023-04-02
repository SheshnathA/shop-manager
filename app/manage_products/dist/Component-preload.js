//@ui5-bundle com/shesh/shop/manage/manageproducts/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"com/shesh/shop/manage/manageproducts/Component.js":function(){sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("com.shesh.shop.manage.manageproducts.Component",{metadata:{manifest:"json"}})});
},
	"com/shesh/shop/manage/manageproducts/i18n/i18n.properties":'# This is the resource bundle for com.shesh.shop.manage.manageproducts\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Manage Products\n\n#YDES: Application description\nappDescription=A Fiori application.',
	"com/shesh/shop/manage/manageproducts/manifest.json":'{"_version":"1.49.0","sap.app":{"id":"com.shesh.shop.manage.manageproducts","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.9.2","toolsId":"5dc425ab-34cc-4ef7-92fc-8b62cb7ef991"},"dataSources":{"mainService":{"uri":"wholesalers/","type":"OData","settings":{"annotations":[],"localUri":"localService/metadata.xml","odataVersion":"4.0"}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.112.1","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"com.shesh.shop.manage.manageproducts.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"ProductsList","target":"ProductsList"},{"pattern":"Products({key}):?query:","name":"ProductsObjectPage","target":"ProductsObjectPage"}],"targets":{"ProductsList":{"type":"Component","id":"ProductsList","name":"sap.fe.templates.ListReport","options":{"settings":{"entitySet":"Products","variantManagement":"Page","navigation":{"Products":{"detail":{"route":"ProductsObjectPage"}}}}}},"ProductsObjectPage":{"type":"Component","id":"ProductsObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"entitySet":"Products"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"com.shesh.shop.manager"}}'
}});
