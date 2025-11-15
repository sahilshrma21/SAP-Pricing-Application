using pricingapp from '../db/schema';

service PricingService {

  @title : 'Product Price Request'
  @odata.draft.enabled

  entity PricingRequests as projection on pricingapp.PricingRequests;

  entity SalesOrgs        as projection on pricingapp.SalesOrgs;
  entity UoMs             as projection on pricingapp.UoMs;
  entity StatusCodes      as projection on pricingapp.StatusCodes;
  entity KeyCombinations  as projection on pricingapp.KeyCombinations;
  entity Accounts         as projection on pricingapp.Accounts;
  entity Products         as projection on pricingapp.Products;
  entity Employees        as projection on pricingapp.Employees;
}

