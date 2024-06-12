tableextension 50103 "BCT Customer Ext" extends Customer
// Original Object
{
    fields
    {
        field(50100; "BCT Subscription Customer"; Boolean)
        {
            Caption = 'Subscription Customer';
            FieldClass = FlowField;
            CalcFormula = Exist("BCT Customer Subscription" where("Customer No" = field("No."), Active = const(true)));
            Editable = false;
        }
        field(50200; "CLP_TEST"; text[50])
        {
            Caption = 'CLP Test Field';
            Editable = false;
        }
    }
}