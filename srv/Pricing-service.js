// pricing-service.js
const cds = require('@sap/cds');

class PricingService extends cds.ApplicationService {
  init() {
    const { PricingRequests, Employees } = this.entities;

    this.before('CREATE', PricingRequests, async (req) => {
      if (!req.data.priceRequestID) {
        req.data.priceRequestID = cds.utils.uuid();
      }

      const combo = req.data.keyCombination_ID;

      if (combo === 'SALESORG/CUSTOMER') {
        if (!req.data.salesorg_ID || !req.data.customer_AccountID)
          req.reject(400, 'SalesOrg and Customer are required for this key combination.');
      } else if (combo === 'SALESORG/PRODUCT') {
        if (!req.data.salesorg_ID || !req.data.product_ProductID)
          req.reject(400, 'SalesOrg and Product are required for this key combination.');
      } else if (combo === 'SALESORG/CUSTOMER/PRODUCT') {
        if (!req.data.salesorg_ID || !req.data.customer_AccountID || !req.data.product_ProductID)
          req.reject(400, 'SalesOrg, Customer, and Product are required for this key combination.');
      }

      if (req.data.owner_EmployeeID && req.data.approver_EmployeeID) {
        await UPDATE(Employees)
          .set({ manager_EmployeeID: req.data.approver_EmployeeID })
          .where({ EmployeeID: req.data.owner_EmployeeID });
      }
    });

    this.before('UPDATE', PricingRequests, async (req) => {
      if (req.data.owner_EmployeeID && req.data.approver_EmployeeID) {
        await UPDATE(Employees)
          .set({ manager_EmployeeID: req.data.approver_EmployeeID })
          .where({ EmployeeID: req.data.owner_EmployeeID });
      }
    });

    return super.init();
  }
}

module.exports = { PricingService };
