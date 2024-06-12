codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        JC_TEST();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    procedure "JC_TEST"()
    var
        JC_Test: Record JC_Test;
    begin
        JC_Test.Init();
        JC_Test.Code := 'JC';
        JC_Test.Description := 'Jack Callaghan';
        if JC_Test.Insert() then;
    end;
}