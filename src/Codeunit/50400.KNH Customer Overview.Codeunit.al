/// <summary>
/// Codeunit KNH Customer Overview (ID 50001).
/// </summary>
codeunit 50400 "KNH Customer Overview"
{
    trigger OnRun()
    var
        CustOverview: Query "KNH Customer Overview";
        TextCustOverview: Label 'Customer name = %1, Amount (LCY) = %2';
    begin
        CustOverview.Open();
        while CustOverview.Read() do begin
            Message(TextCustOverview, CustOverview.Name, CustOverview.AmountLCY);
        end;
        CustOverview.Close();
    end;
}
