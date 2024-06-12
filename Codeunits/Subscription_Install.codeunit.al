codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        EF_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension
    end;

    local procedure EF_Test()
    var
        TestTable: Record "EF Test";
    begin
        IF TestTable.get('EF') then exit;
        TestTable.Init();
        TestTable.Code := 'EF';
        Testtable.Description := 'Eythor';
        TestTable.Insert();
    end;
}