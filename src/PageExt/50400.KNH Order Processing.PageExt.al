/// <summary>
/// Page Demo Order Proc. Extends Order Processor Role Center 9006
/// </summary>
pageextension 50400 "KNH Order Processing" extends "Order Processor Role Center"
{
    actions
    {
        addafter("History")
        {
            action("Customer Overview")
            {
                ApplicationArea = All;
                Caption = 'Customer Overview';
                RunObject = report "KNH Customer Overview";
            }
        }
    }
}