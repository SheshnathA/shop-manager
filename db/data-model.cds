namespace com.shesh.shop.manager;
using { cuid, managed } from '@sap/cds/common';

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
}
entity Wholesalers : managed{
  key mobileNumber : String(10);
  name : String(100);
  location : String(100);
  city : String(50);
  pincode : String(6);
  GSTIN : String;
  type : String (50);
  status : String(30);
  email : String(100);
  products : Composition of many Products on products.wholesalers = $self;
  retailers : Composition of many Retailers on retailers.wholesalers = $self;
}

entity Retailers : managed{
  key mobileNumber : String(10);
  name : String(100);
  location : String(100);
  city : String(50);
  pincode : String(6);
  GSTIN : String;
  type : String (50);
  status : String(30);
  email : String(100);
  wholesalers : Association to Wholesalers;
}

entity Products {
  key barcode : String(50);
  name : String(100);
  description : String(500);
  mrp : Integer;
  buyRate : Integer;
  gattaRate : Integer;
  fileRate : Integer;
  pcsRate : Integer;
  stocks : Integer;
  unit : String(30);
  image : String;
  mfd : Date;
  expDate : Date;
  availability : String(30);
  wholesalers : Association to Wholesalers;
}

entity Orders : managed{
  key orderNumber : String(20);
  shopName : String(100);
  wholesalerName : String(100);
  shopMobNum : String(10);
  wholesalermobNum : String(10);
  shopAddress : String(200);
  wholesalerAddress : String(200);
  totalAmount : Integer;
  items : Composition of many OrdersItems;   
}

entity OrdersItems : cuid{
  products: Association to Products;
  name : String(100);
  mrp : Integer;
  rate : Integer;
  unit : String(30);
  subTotal : Integer;
}