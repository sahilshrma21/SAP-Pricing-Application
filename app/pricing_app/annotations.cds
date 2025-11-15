using PricingService as service from '../../srv/Pricing-service';
annotate service.PricingRequests with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'salesorg_ID',
                Value : salesorg_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customer_AccountID',
                Value : customer_AccountID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'product_ProductID',
                Value : product_ProductID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'owner_EmployeeID',
                Value : owner_EmployeeID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'keyCombination_ID',
                Value : keyCombination_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'currency_code',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'uom_ID',
                Value : uom_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'validFrom',
                Value : validFrom,
            },
            {
                $Type : 'UI.DataField',
                Label : 'validTo',
                Value : validTo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'approver_EmployeeID',
                Value : approver_EmployeeID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status_ID',
                Value : status_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'notes',
                Value : notes,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'salesorg_ID',
            Value : salesorg_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customer_AccountID',
            Value : customer_AccountID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'product_ProductID',
            Value : product_ProductID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'owner_EmployeeID',
            Value : owner_EmployeeID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'keyCombination_ID',
            Value : keyCombination_ID,
        },
    ],
);

annotate service.PricingRequests with {
    customer @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Accounts',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : customer_AccountID,
                ValueListProperty : 'AccountID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'AccountName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Country',
            },
        ],
    }
};

annotate service.PricingRequests with {
    product @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Products',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : product_ProductID,
                ValueListProperty : 'ProductID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'ProductName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'MaterialNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'BaseUoM_ID',
            },
        ],
    }
};

annotate service.PricingRequests with {
    owner @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Employees',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : owner_EmployeeID,
                ValueListProperty : 'EmployeeID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'FirstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'LastName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Email',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Username',
            },
        ],
    }
};

annotate service.PricingRequests with {
    approver @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Employees',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : approver_EmployeeID,
                ValueListProperty : 'EmployeeID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'FirstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'LastName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Email',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Username',
            },
        ],
    }
};

