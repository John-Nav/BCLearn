codeunit 50100 MyCodeunit
{
    trigger OnRun()
    begin

    end;

    procedure OpenCustomer(var notification: Notification)

    var
        myInt: Integer;
        RecCustomer: Record Customer;
    begin
        //page.Run(0,);   
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInsertItemLedgEntry', '', true, true)]
    local procedure "Item Jnl.-Post Line_OnAfterInsertItemLedgEntry"
    (
        var ItemLedgerEntry: Record "Item Ledger Entry";
        ItemJournalLine: Record "Item Journal Line";
        var ItemLedgEntryNo: Integer;
        var ValueEntryNo: Integer;
        var ItemApplnEntryNo: Integer
    )
    begin
        /*  */
    end;



    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Create Prod. Order Lines", 'OnBeforeProdOrderLineInsert', '', true, true)]
    local procedure "Create Prod. Order Lines_OnBeforeProdOrderLineInsert"
    (
        var ProdOrderLine: Record "Prod. Order Line";
        var ProductionOrder: Record "Production Order";
        SalesLineIsSet: Boolean;
        var SalesLine: Record "Sales Line"
    )
    begin
        ProdOrderLine.Sales_No := SalesLine."Document No.";
        ProdOrderLine.Sales_Line := SalesLine."Line No.";
    end;



    procedure QueryResult(Value: Text): Decimal // this return procedure

    var
        myInt: Integer;
        QueMyQuery: Query MyQuery;
    begin
        QueMyQuery.SetRange(QueMyQuery.Item_No_, Value);
        QueMyQuery.Open();
        if QueMyQuery.Read() then
            exit(QueMyQuery.Quantity);
    end;

    var
        myInt: Integer;

}