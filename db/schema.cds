namespace pricingapp;
using { Currency } from '@sap/cds/common';
using { managed, cuid, sap.common } from '@sap/cds/common';

// --------------------
// CodeList Definitions
// --------------------
entity SalesOrgs : common.CodeList {
  key ID : String(20);
  name   : String(111);
}

entity UoMs : common.CodeList {
  key ID : String(20);
  name   : String(111);
}

entity StatusCodes : common.CodeList {
  key ID : String(30);
  name   : String(111);
}

entity KeyCombinations : common.CodeList {
  key ID : String(50);
  name   : String(111);
}

// --------------------
// Master Data
// --------------------
entity Accounts : managed {
  key AccountID   : String(50);
  AccountName     : String(200);
  Country         : String(50);
}

entity Products : managed {
  key ProductID   : String(50);
  ProductName     : String(200);
  MaterialNumber  : String(50);
  BaseUoM         : Association to UoMs;
}

entity Employees : managed {
  key EmployeeID  : String(50);
  FirstName       : String(80);
  LastName        : String(80);
  Email           : String(120);
  Username        : String(80);
  manager         : Association to Employees;
}

// --------------------
// Main Entity (NO draft aspect here)
// --------------------
entity PricingRequests : managed, cuid {
  key priceRequestID : UUID;

  salesorg            : Association to SalesOrgs;
  customer            : Association to Accounts;
  product             : Association to Products;
  owner               : Association to Employees;
  keyCombination      : Association to KeyCombinations;

  price               : Decimal(15,2);
  currency            : Currency;
  uom                 : Association to UoMs;
  validFrom           : Date;
  validTo             : Date;

  approver            : Association to Employees;
  status              : Association to StatusCodes;

  notes               : String(1000);
}
