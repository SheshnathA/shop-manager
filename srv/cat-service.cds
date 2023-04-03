using com.shesh.shop.manager as db from '../db/data-model';

service CatalogService {
    entity Books as projection on db.Books;
}
service WholesalersService {
    entity Wholesalers as projection on db.Wholesalers;
    entity Retailers as projection on db.Retailers;
    entity Products as projection on db.Products;
    entity Orders as projection on db.Orders;
    entity OrdersItems as projection on db.OrdersItems;
    action getAllShop() returns array of String;
    function getShopDetails(id: String) returns array of String;
}

annotate WholesalersService.Wholesalers with @odata.draft.enabled;
annotate WholesalersService.Retailers with @odata.draft.enabled;
annotate WholesalersService.Products with @odata.draft.enabled;
annotate WholesalersService.Orders with @odata.draft.enabled;