codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        BVE_Init();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure BVE_Init()

    var
        tableBVE_Test: record TableBVE_Test;

    begin

        tableBVE_Test.Init();
        tableBVE_Test.Code := 'BVE';
        tableBVE_Test.Description := 'BVE Test';
        tableBVE_Test.insert();

    end;

}