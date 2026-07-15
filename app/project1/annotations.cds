using CatalogService as service from '../../srv/CatalogService';
annotate service.POs with {
    PARTNER_GUID @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'BusinessPartnerSet',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : PARTNER_GUID_NODE_KEY,
                ValueListProperty : 'NODE_KEY',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'BP_ROLE',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'EMAIL_ADDRESS',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'PHONE_NUMBER',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'FAX_NUMBER',
            },
        ],
    }
};

