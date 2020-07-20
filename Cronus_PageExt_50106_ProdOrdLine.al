pageextension 50106 ProdOrdLineExt extends 99000830
{
    layout
    {
        // Add changes to page layout here
        addlast(Control1)
        {
            field(Sales_No;Sales_No)
            {
              Caption='Sales No';
            }
            field(Sales_Line;Sales_Line)
            {
                Caption='Sales Line';
            }
        }
        
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}