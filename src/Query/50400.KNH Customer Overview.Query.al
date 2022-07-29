/// <summary>
/// Query CustomerOverview (ID 50000)
/// </summary>
query 50400 "KNH Customer Overview"
{
    Caption = 'Customer Overview';
    QueryType = Normal;
    OrderBy = Descending(BalanceLCY);

    elements
    {
        dataitem(Customer; Customer)
        {
            DataItemTableFilter = "Currency Code" = filter('');
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(Address; Address)
            {
            }
            column(City; City)
            {
            }
            column(CurrencyCode; "Currency Code")
            {
            }
            column(Balance; Balance)
            {
            }
            column(BalanceLCY; "Balance (LCY)")
            {
            }
            column(BalanceDue; "Balance Due")
            {
            }
            column(BalanceDueLCY; "Balance Due (LCY)")
            {
            }
            dataitem(CustLedgEntry; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = Customer."No.";
                SqlJoinType = InnerJoin;
                DataItemTableFilter = "Document Type" = FILTER(Invoice | "Credit Memo");

                Column(DocumentType; "Document Type")
                {
                }
                column(DocumentNo; "Document No.")
                {
                }
                column(DocumentDate; "Document Date")
                {
                }
                column(PostingDate; "Posting Date")
                {
                }
                column(CurrCode; "Currency Code")
                {
                }
                column(Amount; Amount)
                {
                }
                column(AmountLCY; "Amount (LCY)")
                {
                }
                column(Open; Open)
                {
                }
                column(RemainingAmt; "Remaining Amount")
                {
                }
                column(RemainingAmtLCY_; "Remaining Amt. (LCY)")
                {
                }
            }
        }
    }
}