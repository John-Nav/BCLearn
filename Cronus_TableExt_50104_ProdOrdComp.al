tableextension 50104 ProdOrdComp extends 5407
{
    fields
    {
        // Add changes to table fields here
        field(50000; Purchaser; Code[30])
        {
            DataClassification = ToBeClassified;
            // FieldPropertyName = FieldPropertyValue;
        }
        field(50001; PurchaseUOM; Code[10])
        {
            DataClassification = ToBeClassified;
            // FieldPropertyName = FieldPropertyValue;
        }
        field(50002; Vendor; Code[20])
        {
            DataClassification = ToBeClassified;
            //FieldPropertyName = FieldPropertyValue;
        }
        field(50003; UnitCost; Decimal)
        {
            DataClassification = ToBeClassified;
            //FieldPropertyName = FieldPropertyValue;
        }
        field(50004; Select; Boolean)
        {
            DataClassification = ToBeClassified;
            //FieldPropertyName = FieldPropertyValue;
        }
    }

    var
        myInt: Integer;
}