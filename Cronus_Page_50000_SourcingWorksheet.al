page 50100 SourcingWorkSheet
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = 5407;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Select; Select)
                {
                    ApplicationArea = All;

                }
                field("Item No."; "Item No.")
                {
                    ApplicationArea = All;
                    // FieldPropertyName = FieldPropertyValue;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Variant Code"; "Variant Code")
                {
                    ApplicationArea = All;
                    // FieldPropertyName = FieldPropertyValue;
                }
                field("Prod. Order No."; "Prod. Order No.")
                {
                    ApplicationArea = All;
                    // FieldPropertyName = FieldPropertyValue;
                }
                field("Expected Quantity"; "Expected Quantity")
                {
                    ApplicationArea = All;
                    //    FieldPropertyName = FieldPropertyValue;
                }

                field("Unit Cost"; "Unit Cost")
                {
                    ApplicationArea = all;
                }
                field(Vendor; Vendor)
                {
                    ApplicationArea = all;
                }
                field(Purchaser; Purchaser)
                {

                }
                field(PurchaseUOM; PurchaseUOM)
                {

                }

            }
        }
        area(Factboxes)
        {

        }

    }



    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        SetRange(Purchaser, UserId);
        SetFilter("Expected Quantity", '>0');
        CalcFields("Reserved Quantity");
        SetFilter("Expected Quantity", '<>%1', "Reserved Quantity");
    end;
}