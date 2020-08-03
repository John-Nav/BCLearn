tableextension 50103 ProdBomLine extends 99000772
{
    fields
    {
        // Add changes to table fields here
        field(50000; Puchaser; Code[30])
        {
            DataClassification = ToBeClassified;
            // FieldPropertyName = FieldPropertyValue;
        }
        field(50001; Vendor; Code[20])
        {
            DataClassification = ToBeClassified;
            //FieldPropertyName = FieldPropertyValue;
        }
        field(50002; UnitCost; Decimal)
        {
            DataClassification = ToBeClassified;
            // FieldPropertyName = FieldPropertyValue;
        }
        field(50003; PurchaseUOM; Code[20])
        {
            DataClassification = ToBeClassified;
            //FieldPropertyName = FieldPropertyValue;
        }
    }

    var
        myInt: Integer;
}