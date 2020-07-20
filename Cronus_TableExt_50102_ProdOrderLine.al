tableextension 50102 ProdOrderLineExt extends 5406
{
    fields
    {
        // Add changes to table fields here
        field(50000; Sales_No; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(50001; Sales_Line; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
    }
    
    var
        myInt: Integer;
}
