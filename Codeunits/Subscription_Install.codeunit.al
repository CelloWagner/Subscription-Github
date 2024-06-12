codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        CLP_TEST();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure CLP_TEST()
    var
        CLPTable: Record "CLP_Test.table.al";
    begin
        If not CLPTable.FindSet() then
        CLPTable.Code := 'CLP';
        CLPTable.Description := 'Christopher';
        Commit();
    end;
}