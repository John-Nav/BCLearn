pageextension 50107 SalesOrdLineExt extends 46
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast("F&unctions")
        {
            action("Update Production Order")
            {

                trigger OnAction()
                var
                    RecProdOrdLine: Record 5406;
                begin
                    RecProdOrdLine.Reset;
                    RecProdOrdLine.SetRange(Sales_No, Rec."Document No.");
                    RecProdOrdLine.SetRange("Line No.", Rec."Line No.");
                    if RecProdOrdLine.FindSet then begin
                        RecProdOrdLine.Validate(Quantity, Rec.Quantity);
                        RecProdOrdLine.Modify(true);
                        Message('Production Order is updated successfuly.');
                    end;

                end;

            }
        }
    }

    var
        myInt: Integer;
}