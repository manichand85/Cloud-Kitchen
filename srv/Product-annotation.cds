namespace com.manichand.nnrg;
using {nnrg.ProductLocal as Product} from './cloudkitchen';


annotate Product with @(
    UI.LineItem:[
        {
            $Type:'UI.DataField',
            Value: Product
        },
        {
            $Type:'UI.DataField',
            Value: ProductDescription
        },
        {
            $Type:'UI.DataField',
            Value: BaseUnit
        },
        {
            $Type:'UI.DataField',
            Value: ProductType
        },
        {
            $Type:'UI.DataField',
            Value: ProductGroup
        },

    ]
);


annotate Product with @(       
    UI.FieldGroup #ProductLocalInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type:'UI.DataField',
            Value: Product
        },
        {
            $Type:'UI.DataField',
            Value: ProductDescription
        },
        {
            $Type:'UI.DataField',
            Value: BaseUnit
        },
        {
            $Type:'UI.DataField',
            Value: ProductType
        },
        {
            $Type:'UI.DataField',
            Value: ProductGroup
        },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ProductLocalInfoFacet',
            Label : 'ProductLocal Information',
            Target : '@UI.FieldGroup#ProductLocalInformation',
        },
    ],    
);